# Generated by Django 2.0.2 on 2018-05-17 08:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0012_auto_20180517_1807'),
    ]

    operations = [
        migrations.AlterField(
            model_name='instrumentrequest',
            name='hire',
            field=models.CharField(choices=[('Hire', 'Hire'), ('Buy', 'Buy')], max_length=4),
        ),
        migrations.AlterField(
            model_name='instrumentrequest',
            name='user',
            field=models.CharField(max_length=40),
        ),
    ]
