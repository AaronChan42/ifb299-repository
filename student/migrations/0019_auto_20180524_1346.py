# Generated by Django 2.0.5 on 2018-05-24 03:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0018_auto_20180524_1246'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bookingrequest',
            name='approval',
            field=models.CharField(choices=[('P', 'Pending'), ('A', 'Approved')], default='P', max_length=8),
        ),
        migrations.AlterField(
            model_name='instrumentrequest',
            name='approval',
            field=models.CharField(choices=[('P', 'Pending'), ('A', 'Approved')], default='P', max_length=8),
        ),
    ]