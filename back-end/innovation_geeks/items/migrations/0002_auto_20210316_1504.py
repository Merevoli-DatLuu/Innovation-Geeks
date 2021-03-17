# Generated by Django 3.1.7 on 2021-03-16 08:04

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('items', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Image',
            fields=[
                ('image_id', models.CharField(max_length=255, primary_key=True, serialize=False)),
                ('image_url', models.CharField(blank=True, max_length=255, null=True)),
            ],
            options={
                'db_table': 'image',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Itemrate',
            fields=[
                ('item_rate_id', models.CharField(max_length=255, primary_key=True, serialize=False)),
                ('item_rate_star', models.IntegerField(blank=True, null=True)),
                ('item_rate_comment', models.CharField(blank=True, max_length=255, null=True)),
            ],
            options={
                'db_table': 'itemrate',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('user_id', models.CharField(max_length=255, primary_key=True, serialize=False)),
                ('user_name', models.CharField(blank=True, max_length=255, null=True)),
                ('user_username', models.CharField(blank=True, max_length=255, null=True)),
                ('user_bio', models.CharField(blank=True, max_length=255, null=True)),
                ('user_gender', models.CharField(blank=True, max_length=255, null=True)),
                ('user_birthday', models.DateField(blank=True, null=True)),
                ('user_phone_number', models.CharField(blank=True, max_length=255, null=True)),
                ('user_email', models.CharField(blank=True, max_length=255, null=True)),
                ('user_token', models.CharField(blank=True, max_length=255, null=True)),
            ],
            options={
                'db_table': 'user',
                'managed': False,
            },
        ),
        migrations.AlterModelOptions(
            name='country',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='item',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='itembrand',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='itemcategory',
            options={'managed': False},
        ),
        migrations.AlterModelOptions(
            name='itemstatus',
            options={'managed': False},
        ),
        migrations.CreateModel(
            name='Itemrateimage',
            fields=[
                ('image', models.OneToOneField(on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='items.image')),
            ],
            options={
                'db_table': 'itemrateimage',
                'managed': False,
            },
        ),
    ]