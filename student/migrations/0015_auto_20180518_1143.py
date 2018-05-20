# Generated by Django 2.0.2 on 2018-05-18 01:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0014_auto_20180518_1136'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bookingrequest',
            name='approval',
            field=models.CharField(choices=[('P', 'Pending'), ('A', 'Approved')], default='P', max_length=8),
        ),
        migrations.AlterField(
            model_name='bookingrequest',
            name='prefLang',
            field=models.CharField(max_length=40),
        ),
        migrations.AlterField(
            model_name='instrumentrequest',
            name='approval',
            field=models.CharField(choices=[('P', 'Pending'), ('A', 'Approved')], default='P', max_length=8),
        ),
    ]