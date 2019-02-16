from django.urls import path
from . import views
app_name = 'verify'
urlpatterns = [
    path('login/', views.login, name='login'),                # 登录路由
    path('register/', views.register, name='register'),       # 注册路由
    path('net_error/', views.net_error, name='net_error'),    # 网络出错路由verify
]