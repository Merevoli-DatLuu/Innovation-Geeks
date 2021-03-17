from django.db import models

# Create your models here.


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
    item_country = models.ForeignKey('Country', models.DO_NOTHING, db_column='item_country', blank=True, null=True)
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

class Country(models.Model):
    country_id = models.CharField(primary_key=True, max_length=255)
    country_name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'country'