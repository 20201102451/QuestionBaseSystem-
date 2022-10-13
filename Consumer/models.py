from django.db import models

# Create your models here.
class Consumer(models.Model):
    consumer_id = models.BigAutoField(primary_key=True)
    consumer_account = models.CharField(max_length=40, blank=True, null=True)
    consumer_name = models.CharField(max_length=40, blank=True, null=True)
    consumer_password = models.CharField(max_length=40, blank=True, null=True)
    name = models.CharField(max_length=50, blank=True, null=True)
    sex = models.CharField(max_length=2, blank=True, null=True)
    number = models.CharField(max_length=12, blank=True, null=True)
    birthday = models.DateField(blank=True, null=True)
    email = models.CharField(max_length=50, blank=True, null=True)
    security_question = models.CharField(max_length=255, blank=True, null=True)
    security_answer = models.CharField(max_length=255, blank=True, null=True)