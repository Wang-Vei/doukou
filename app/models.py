from django.db import models

# Create your models here.
#分类表
class Category(models.Model):
    category=models.CharField(max_length=20,verbose_name='分类')
    def __str__(self):
        return self.category
    class Meta:
        verbose_name_plural = '分类表'

#品牌表
class Brand(models.Model):
    brand=models.CharField(max_length=20,verbose_name='品牌')
    def __str__(self):
        return self.brand
    class Meta:
        verbose_name_plural = '品牌表'

#商品表
class Goods(models.Model):
    name=models.CharField(max_length=20,verbose_name='商品名称')
    price=models.CharField(max_length=20,verbose_name='商品价格')
    explanation=models.TextField(max_length=300,verbose_name='商品说明')
    img = models.ImageField(upload_to='tupian', verbose_name='商品图片')
    stock=models.CharField(max_length=12,verbose_name='商品库存')
    c=models.ForeignKey(to=Category,on_delete=models.CASCADE,verbose_name='所属分类')
    b=models.ForeignKey(to=Brand,on_delete=models.CASCADE,verbose_name='所属品牌')
    status = models.BooleanField(default=0, verbose_name='是否加入购物车')
    status1 = models.BooleanField(default=0, verbose_name='是否以支付')
    def __str__(self):
        return self.name
    class Meta:
        verbose_name_plural = '商品表'