from django import forms
from verify.models import User

class UserInfoForm(forms.ModelForm):

    class Meta:
        fields ="__all__"    #所有字段都用来验证
        model=User
        # exclude=['sh','u']
        widgets={

            'u':forms.HiddenInput(),
            'sh':forms.HiddenInput(),
            'realname':forms.TextInput(attrs={
                'class':'selfinput',
                'placeholder':'真实姓名'
            }),
            'company':forms.TextInput(attrs={
                'class':'company',
                'placeholder':'所在公司'
            }),
            'position': forms.TextInput(attrs={
                'class': 'position',
                'placeholder': '职位'
            }),
            'hobby': forms.TextInput(attrs={
                'class': 'hobby',
                'placeholder': '爱好'
            }),
            'reason': forms.Textarea(attrs={
                'class': 'reason',
                'placeholder': '申请原因',
            }),
        }