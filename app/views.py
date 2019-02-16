from django.shortcuts import render, redirect, reverse
from app.models import Goods,Brand
from verify.models import User
# Create your views here.
from django.conf import settings
#主页
def index(request):
    tel = request.session.get('tel',None)
    obj = User.objects.filter(tel=tel).first()
    # print(obj.tel)
    return render(request,'app/index.html',{'user':obj})

def exit(request):
    del request.session['tel']
    return redirect(reverse("verify:login"))


#商品
def goods(request,id):
    if request.method == 'GET':
        goods = Goods.objects.filter(b=id).all()
        return render(request,'app/goods.html', {'goods': goods,'id':id})


def detail(request,id1):
    if request.method == 'GET':
        goods = Goods.objects.filter(id=id1).first()
        return render(request,'app/detail.html', {'goods': goods})
def dingdan(request,id1):
    if request.method == 'GET':
        goods = Goods.objects.filter(id=id1).first()
        goods.status1=1
        goods.save()
        goods1=Goods.objects.filter(status1=1).all()
        print(goods1)
        return render(request,'app/dingdan.html', {'goods': goods1})

def dingdan1(request):
    if request.method == 'GET':
        goods1 = Goods.objects.filter(status1=1).all()
        return render(request, 'app/dingdan.html', {'goods': goods1})