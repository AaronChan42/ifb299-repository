# Generated by Django 2.0.5 on 2018-05-23 02:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0016_auto_20180522_2105'),
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
        migrations.AlterField(
            model_name='instrumentrequest',
            name='hire',
            field=models.CharField(choices=[('Hire', 'Hire'), ('Buy', 'Buy')], max_length=4),
        ),
    ]
