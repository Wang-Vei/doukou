from django.db import models
from django.core.validators import RegexValidator

# Create your models here.


#  用户表
class User(models.Model):
    username = models.CharField(max_length=12, default='', null=True, error_messages={"required": "用户名不能为空", })
    password = models.CharField(max_length=16, error_messages={"required": "密码不能为空", })
    tel = models.CharField(max_length=13, validators=[
        RegexValidator(regex=r'^(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$', message='手机号格式不对吧！')
    ])
    img = models.ImageField(upload_to="upload/user_msg/images")

    def __str__(self):
        return self.username


#分类表
# class Category(models.Model):
#     category=models.CharField(max_length=20,verbose_name='分类')
#     def __str__(self):
#         return self.category
#     class Meta:
#         verbose_name_plural = '分类表'
#
# #品牌表
# class Brand(models.Model):
#     brand=models.CharField(max_length=20,verbose_name='品牌')
#     def __str__(self):
#         return self.brand
#     class Meta:
#         verbose_name_plural = '品牌表'
#
# #商品表
# class Goods(models.Model):
#     name=models.CharField(max_length=20,verbose_name='商品名称')
#     price=models.CharField(max_length=20,verbose_name='商品价格')
#     explanation=models.TextField(max_length=300,verbose_name='商品说明')
#     img = models.ImageField(upload_to='tupian', verbose_name='商品图片')
#     stock=models.CharField(max_length=12,verbose_name='商品库存')
#     c=models.ForeignKey(to=Category,on_delete=models.CASCADE,verbose_name='所属分类')
#     b=models.ForeignKey(to=Brand,on_delete=models.CASCADE,verbose_name='所属品牌')
#     status = models.BooleanField(default=0, verbose_name='是否加入购物车')
#     status1 = models.BooleanField(default=0, verbose_name='是否以支付')
#     def __str__(self):
#         return self.name
#     class Meta:
#         verbose_name_plural = '商品表'