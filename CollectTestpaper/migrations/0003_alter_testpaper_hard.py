# Generated by Django 4.1.1 on 2022-11-15 08:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('CollectTestpaper', '0002_choice_score_gapfill_score_testpaper_apply_time_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='testpaper',
            name='hard',
            field=models.IntegerField(blank=True, choices=[(0, '简单'), (1, '中等'), (2, '较难'), (3, '难'), (4, '很难')], null=True, verbose_name='试卷难度'),
        ),
    ]
