# Generated by Django 2.0.5 on 2018-05-24 02:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0017_auto_20180523_1227'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bookingrequest',
            name='approval',
            field=models.CharField(choices=[('A', 'Approved'), ('P', 'Pending')], default='P', max_length=8),
        ),
        migrations.AlterField(
            model_name='instrumentrequest',
            name='approval',
            field=models.CharField(choices=[('A', 'Approved'), ('P', 'Pending')], default='P', max_length=8),
        ),
        migrations.AlterField(
            model_name='instrumentrequest',
            name='hire',
            field=models.CharField(choices=[('Buy', 'Buy'), ('Hire', 'Hire')], max_length=4),
        ),
    ]
