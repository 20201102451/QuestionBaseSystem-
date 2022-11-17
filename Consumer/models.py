from django.db import models
# Create your models here.
class Consumer(models.Model):
    consumer_id = models.BigAutoField(primary_key=True, verbose_name="用户id")
    consumer_account = models.CharField(max_length=40, blank=True, null=True, verbose_name="用户账户")
    consumer_name = models.CharField(max_length=40, blank=True, null=True, verbose_name="用户名")
    consumer_password = models.CharField(max_length=40, blank=True, null=True, verbose_name="用户密码")
    name = models.CharField(max_length=50, blank=True, null=True, verbose_name="姓名")
    sex = models.CharField(max_length=2, blank=True, null=True, verbose_name="性别")
    number = models.CharField(max_length=12, blank=True, null=True, verbose_name="电话号")
    birthday = models.DateField(blank=True, null=True, verbose_name="出生日期")
    email = models.CharField(max_length=50, blank=True, null=True, verbose_name="电子邮箱")
    security_question = models.CharField(max_length=255, blank=True, null=True, verbose_name="密保问题")
    security_answer = models.CharField(max_length=255, blank=True, null=True, verbose_name="密保答案")
    class Meta:
        verbose_name = '普通用户'
        verbose_name_plural = '普通用户'

#表格：谁订阅了那张试卷
class Consumer_testPaper_first(models.Model):
    consumer = models.ForeignKey(to="Consumer",to_field ="consumer_id",on_delete=models.CASCADE, verbose_name="用户id")
    testpaper = models.ForeignKey(to="CollectTestpaper.Testpaper",to_field ="testpaper_id",on_delete=models.CASCADE, verbose_name="试卷id")
    class Meta:
        verbose_name = '用户订阅'
        verbose_name_plural = '用户订阅'
    def dis_consumer(self):
        return self.consumer.consumer_account
    dis_consumer.short_description = "用户"
    def dis_testpaper(self):
        return self.testpaper.name
    dis_testpaper.short_description = "试卷名"

class Consumer_answer_status(models.Model):
    consumer_id = models.ForeignKey(to="Consumer",to_field ="consumer_id",on_delete=models.CASCADE, verbose_name="用户id")
    testpaper_id = models.ForeignKey(to="CollectTestpaper.Testpaper",to_field ="testpaper_id",on_delete=models.CASCADE, verbose_name="试卷id")
    question_id = models.ForeignKey(to="CollectTestpaper.Question", to_field="question_id", on_delete=models.CASCADE, verbose_name="试题id")
    answer = models.CharField(max_length=255, blank=True, null=True,verbose_name="用户答案")
    class Meta:
        verbose_name = '用户答题情况'
        verbose_name_plural = '用户答题情况'
    def dis_consumer(self):
        return self.consumer_id.consumer_account
    dis_consumer.short_description = "用户名"
    def dis_testpaper(self):
        return self.testpaper_id.name
    dis_testpaper.short_description = "试卷名"