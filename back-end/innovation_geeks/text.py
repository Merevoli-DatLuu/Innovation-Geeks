# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Country(models.Model):
    country_id = models.CharField(primary_key=True, max_length=255)
    country_name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'country'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Image(models.Model):
    image_id = models.CharField(primary_key=True, max_length=255)
    image_url = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'image'


class Item(models.Model):
    item_id = models.CharField(primary_key=True, max_length=255)
    item_name = models.CharField(max_length=255, blank=True, null=True)
    item_description = models.CharField(max_length=255, blank=True, null=True)
    item_brand = models.ForeignKey('Itembrand', models.DO_NOTHING, db_column='item_brand', blank=True, null=True)
    item_country = models.ForeignKey(Country, models.DO_NOTHING, db_column='item_country', blank=True, null=True)
    item_category = models.ForeignKey('Itemcategory', models.DO_NOTHING, db_column='item_category', blank=True, null=True)
    item_price = models.IntegerField(blank=True, null=True)
    item_weight = models.IntegerField(blank=True, null=True)
    item_size_height = models.IntegerField(blank=True, null=True)
    item_size_width = models.IntegerField(blank=True, null=True)
    item_size_depth = models.IntegerField(blank=True, null=True)
    days_to_ship = models.IntegerField(blank=True, null=True)
    item_stock = models.IntegerField(blank=True, null=True)
    item_sold = models.IntegerField(blank=True, null=True)
    item_status = models.ForeignKey('Itemstatus', models.DO_NOTHING, db_column='item_status', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'item'


class Itembrand(models.Model):
    item_brand_id = models.CharField(primary_key=True, max_length=255)
    item_brand_name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'itembrand'


class Itemcategory(models.Model):
    item_category_id = models.CharField(primary_key=True, max_length=255)
    item_category_name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'itemcategory'


class Itemimage(models.Model):
    image = models.OneToOneField(Image, models.DO_NOTHING, primary_key=True)
    item = models.ForeignKey(Item, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'itemimage'
        unique_together = (('image', 'item'),)


class Itemrate(models.Model):
    item_rate_id = models.CharField(primary_key=True, max_length=255)
    item_rate_star = models.IntegerField(blank=True, null=True)
    user = models.ForeignKey('User', models.DO_NOTHING, blank=True, null=True)
    item = models.ForeignKey(Item, models.DO_NOTHING, blank=True, null=True)
    item_rate_comment = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'itemrate'


class Itemrateimage(models.Model):
    image = models.OneToOneField(Image, models.DO_NOTHING, primary_key=True)
    item_rate = models.ForeignKey(Itemrate, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'itemrateimage'
        unique_together = (('image', 'item_rate'),)


class ItemsCountry(models.Model):
    name = models.CharField(max_length=80)

    class Meta:
        managed = False
        db_table = 'items_country'


class ItemsItem(models.Model):
    name = models.CharField(max_length=80)
    description = models.TextField()
    price = models.IntegerField()
    weight = models.IntegerField()
    size_height = models.IntegerField()
    size_width = models.IntegerField()
    size_depth = models.IntegerField()
    day_to_ship = models.IntegerField()
    stock = models.IntegerField()
    sold = models.IntegerField()
    brand = models.ForeignKey('ItemsItembrand', models.DO_NOTHING)
    category = models.ForeignKey('ItemsItemcategory', models.DO_NOTHING)
    country = models.ForeignKey(ItemsCountry, models.DO_NOTHING)
    status = models.ForeignKey('ItemsItemstatus', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'items_item'


class ItemsItembrand(models.Model):
    name = models.CharField(max_length=80)

    class Meta:
        managed = False
        db_table = 'items_itembrand'


class ItemsItemcategory(models.Model):
    name = models.CharField(max_length=80)

    class Meta:
        managed = False
        db_table = 'items_itemcategory'


class ItemsItemstatus(models.Model):
    name = models.CharField(max_length=80)

    class Meta:
        managed = False
        db_table = 'items_itemstatus'


class Itemstatus(models.Model):
    item_status_id = models.CharField(primary_key=True, max_length=255)
    item_status_name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'itemstatus'


class User(models.Model):
    user_id = models.CharField(primary_key=True, max_length=255)
    user_name = models.CharField(max_length=255, blank=True, null=True)
    user_username = models.CharField(max_length=255, blank=True, null=True)
    user_bio = models.CharField(max_length=255, blank=True, null=True)
    user_gender = models.CharField(max_length=255, blank=True, null=True)
    user_birthday = models.DateField(blank=True, null=True)
    user_phone_number = models.CharField(max_length=255, blank=True, null=True)
    user_email = models.CharField(max_length=255, blank=True, null=True)
    user_token = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'user'
