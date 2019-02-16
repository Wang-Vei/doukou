from django.urls import path
from . import views
app_name = 'app'
urlpatterns = [
    path('',views.index,name='index'),                   #主页
    path('exit/',views.exit,name='exit'),                #退出
    path('goods/<id>/',views.goods,name='goods'),        # 商品
    path('detail/<id1>',views.detail,name='detail'),     # 详情
    path('dingdang/<id1>', views.dingdan, name='dingdan'),  # 支付后订单
    path('dingdang1/', views.dingdan1, name='dingdan1')  # 首页进订单订单
]