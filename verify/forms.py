from django.forms import ModelForm, Widget
from django import forms
from .models import User
from django.core.validators import ValidationError


class RegisterForm(ModelForm):
    password = forms.CharField(widget=forms.PasswordInput(
        attrs={"class": "uname", "placeholder": "请再次输入密码", "value": "", "required": "required", }),
                               min_length=6, max_length=16, error_messages={"required": "密码不能为空", })

    class Meta:
        model = User
        exclude = ['img', 'username']
        widgets = {
            'username': forms.TextInput(attrs={
                'class': 'uname',
                'placeholder': '请输入用户名'
            }),
            'password': forms.PasswordInput(attrs={
                'class': 'uname',
                'placeholder': '请再次输入密码'
            }),
            'tel': forms.TextInput(attrs={
                'class': 'uname',
                'placeholder': '请输入手机号'
            })
        }

    def clean(self):
        cleaned_data = super().clean()
        tel = cleaned_data.get('tel', None)
        print(tel)
        if tel:
            is_tel_exist = User.objects.filter(tel=tel).first()
            if is_tel_exist:
                raise ValidationError('该手机号已被人注册过了')


class LoginForm(ModelForm):
    # captcha = CaptchaField()    # django自带的图片验证

    class Meta:
        model = User
        exclude = ['username','img']
        fields = ('password', 'tel')
        error_messages = {
            'username': {
                'required': "用户名不能为空",
            },
        }
        widgets = {
            'tel': forms.TextInput(attrs={
                'class': 'input',
                'placeholder': '手机号/用户名',
            }),
            'password': forms.PasswordInput(attrs={
                'class': 'input',
                'placeholder': '登录密码'
            })
        }

    def clean(self):
        cleaned_data = super().clean()
        tel = cleaned_data.get('tel', None)
        password = cleaned_data.get('password', None)
        if tel and password:
            res = User.objects.filter(tel=tel, password=password).first()
            if not res:
                raise ValidationError('用户名或密码有误！')