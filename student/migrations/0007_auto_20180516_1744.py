# Generated by Django 2.0.2 on 2018-05-16 07:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0006_auto_20180511_2325'),
    ]

    operations = [
        migrations.AlterField(
            model_name='instrumentrequest',
            name='hire',
            field=models.CharField(choices=[('Buy', 'Buy'), ('Hire', 'Hire')], max_length=4),
        ),
    ]
