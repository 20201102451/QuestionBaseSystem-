from django.db import models

# Create your models here.
'''试卷'''
class Testpaper(models.Model):
    testpaper_id = models.BigAutoField(primary_key=True,verbose_name="试卷id")
    name = models.CharField(max_length=50, blank=True, null=True,verbose_name="试卷名")
    #试卷简介text
    intro = models.TextField(blank=True, null=True, verbose_name="试卷简介")
    #出题时间date
    apply_time = models.DateField(blank=True, null=True, verbose_name="出题时间")
    #试卷难度char
    hard_choices = (
        (0, "简单"),
        (1, "中等"),
        (2, "较难"),
        (3, "难"),
        (4, "很难"),
    )
    hard = models.IntegerField(blank=True, null=True, choices=hard_choices, verbose_name="试卷难度")
    class Meta:
        verbose_name = '试卷'
        verbose_name_plural = '试卷'
#models.ForeignKey(to="",to_field ="",on_delete=models.CASCADE)
'''外键约束模型'''

'''试卷_试题'''
class TestpaperQuestion(models.Model):
    testpaper_id = models.ForeignKey(to="Testpaper", to_field="testpaper_id", on_delete=models.CASCADE, verbose_name="试卷id")
    question_id = models.ForeignKey(to="Question", to_field="question_id", on_delete=models.CASCADE, verbose_name="试题id")
    class Meta:
        verbose_name = '试卷_试题'
        verbose_name_plural = '试卷_试题'

'''试题'''
class Question(models.Model):
    question_id = models.BigAutoField(primary_key=True, verbose_name="试题id")
    stems = models.TextField(blank=True, null=True, verbose_name="题干")
    level_choices=(
        (1, "选择题"),
        (2, "判断题"),
        (3, "填空题"),
    )
    level = models.IntegerField(verbose_name="试题类型",choices=level_choices,blank=True, null=True)
    class Meta:
        verbose_name = '试题'
        verbose_name_plural = '试题'

'''选择题'''
class Choice(models.Model):
    question_id = models.ForeignKey(to="Question", to_field="question_id", on_delete=models.CASCADE, verbose_name="试题id")
    # stems = models.TextField(blank=True, null=True, verbose_name="题干")
    choice1 = models.CharField(max_length=80, blank=True, null=True,verbose_name="选项A")
    choice2 = models.CharField(max_length=80, blank=True, null=True,verbose_name="选项B")
    choice3 = models.CharField(max_length=80, blank=True, null=True,verbose_name="选项C")
    choice4 = models.CharField(max_length=80, blank=True, null=True,verbose_name="选项D")
    standard_answer = models.CharField(max_length=255, blank=True, null=True,verbose_name="标准答案")
    score = models.IntegerField(default=2, verbose_name="分值")
    class Meta:
        verbose_name = '选择题'
        verbose_name_plural = '选择题'

'''填空题'''
class Gapfill(models.Model):
    question_id = models.ForeignKey(to="Question", to_field="question_id", on_delete=models.CASCADE, verbose_name="试题id")
    # stems = models.TextField(blank=True, null=True, verbose_name="题干")
    standard_answer = models.CharField(max_length=255, blank=True, null=True,verbose_name="标准答案")
    score = models.IntegerField(default=3, verbose_name="分值")
    class Meta:
        verbose_name = '填空题'
        verbose_name_plural = '填空题'

'''判断题'''
class TrueOrFalse(models.Model):
    question_id = models.ForeignKey(to="Question", to_field="question_id", on_delete=models.CASCADE, verbose_name="试题id")
    # stems = models.TextField(blank=True, null=True, verbose_name="题干")
    standard_answer = models.CharField(max_length=255, blank=True, null=True,verbose_name="标准答案")
    score = models.IntegerField(default=1, verbose_name="分值")
    class Meta:
        verbose_name = '判断题'
        verbose_name_plural = '判断题'