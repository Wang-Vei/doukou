from django.shortcuts import render, redirect, reverse
from .forms import RegisterForm,LoginForm
from .models import User
from django.contrib.auth.hashers import make_password
from django.http import JsonResponse,HttpResponse
# Create your views here.


# 登录处理程序
def login(request):
    if request.method == 'GET':
        form = LoginForm()
        return render(request, 'verify/login.html', {'form': form})
    else:
        form = LoginForm(request.POST)
        if form.is_valid():
            tel = form.cleaned_data['tel']
            # print(tel)
            request.session['tel'] = tel

            return redirect(reverse("app:index"))
        else:
            error_msg = form.errors
            return render(request, 'verify/login.html', {'form': form, 'errors': error_msg})


# 注册处理程序
def register(request):
    if request.method == 'GET':
        form = RegisterForm()
        return render(request, 'verify/register.html', {'form': form})
    # else:
    #     form = RegisterForm(request.POST)
    #     if form.is_valid():
    #         pass_word = request.POST.get("password", "")
    #
    #         form.password = make_password(pass_word)
    #         form.save()
    #         return redirect(reverse('verify:login'))
    #     else:
    #         error_msg = form.errors
    #         return render(request, 'verify/register.html', {'form': form, 'errors': error_msg})
    if request.is_ajax():
        tel = request.POST.get("tel", "")
        pass_word = request.POST.get("password", "")
        is_tel_exist = User.objects.filter(tel=tel).first()
        if is_tel_exist:
            return JsonResponse({'status': 'error'})
        else:
            obj = User(tel=tel, password=pass_word)
            obj.save()
            return JsonResponse({'status': 'ok'})


# 网络错误处理程序
def net_error(request):
    if request.method == 'GET':
        return render(request, 'verify/net_error.html')

