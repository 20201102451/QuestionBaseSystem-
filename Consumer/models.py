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

#表格：谁订阅了那张试卷
class Consumer_testPaper_first(models.Model):
    consumer = models.ForeignKey(to="Consumer",to_field ="consumer_id",on_delete=models.CASCADE, verbose_name="用户id")
    testpaper = models.ForeignKey(to="CollectTestpaper.Testpaper",to_field ="testpaper_id",on_delete=models.CASCADE, verbose_name="试卷id")
    class Meta:
        verbose_name = '用户订阅'
        verbose_name_plural = '用户订阅'

class Consumer_answer_status(models.Model):
    consumer_id = models.ForeignKey(to="Consumer",to_field ="consumer_id",on_delete=models.CASCADE, verbose_name="用户id")
    testpaper_id = models.ForeignKey(to="CollectTestpaper.Testpaper",to_field ="testpaper_id",on_delete=models.CASCADE, verbose_name="试卷id")
    question_id = models.ForeignKey(to="CollectTestpaper.Question", to_field="question_id", on_delete=models.CASCADE, verbose_name="试题id")
    answer = models.CharField(max_length=255, blank=True, null=True,verbose_name="用户答案")
    class Meta:
        verbose_name = '用户答题情况'
        verbose_name_plural = '用户答题情况'