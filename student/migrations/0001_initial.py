# Generated by Django 2.0.2 on 2018-04-26 11:19

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('home', '0004_auto_20180426_2119'),
    ]

    operations = [
        migrations.CreateModel(
            name='Instrument',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('type', models.CharField(max_length=50)),
                ('costofHire', models.IntegerField()),
                ('purchaseCost', models.IntegerField()),
                ('condition', models.CharField(choices=[('N', 'New'), ('E', 'Excellent'), ('G', 'Good'), ('R', 'Repair'), ('D', 'Discard')], max_length=1)),
                ('student', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.Student')),
            ],
        ),
    ]