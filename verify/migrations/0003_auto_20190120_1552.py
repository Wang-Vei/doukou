# Generated by Django 2.1.4 on 2019-01-20 07:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('verify', '0002_goods_status'),
    ]

    operations = [
        migrations.AddField(
            model_name='goods',
            name='status1',
            field=models.BooleanField(default=0, verbose_name='是否以支付'),
        ),
        migrations.AlterField(
            model_name='goods',
            name='status',
            field=models.BooleanField(default=0, verbose_name='是否加入购物车'),
        ),
    ]
