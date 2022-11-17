from django.contrib import admin

# Register your models here.
from CollectTestpaper.models import Testpaper,TestpaperQuestion,Question,Choice,Gapfill,TrueOrFalse
class TestpaperAdmin(admin.ModelAdmin):
    list_display = ('name','apply_time','hard',)
    list_editable = ('hard',)
    ordering = ('-apply_time','-hard')
    list_per_page = 10
admin.site.register(Testpaper,TestpaperAdmin)
class QuestionAdmin(admin.ModelAdmin):
    list_display = ('stems','level')
    list_per_page = 40
    list_editable = ('level',)
    ordering = ('level',)
admin.site.register(Question,QuestionAdmin)
class ChoiceAdmin(admin.ModelAdmin):
    list_display = ('dis_Question',
                    'choice1',
                    'choice2',
                    'choice3',
                    'choice4',
                    'standard_answer',
                    'score',)
    list_per_page = 40
    list_editable = ('standard_answer',)
admin.site.register(Choice,ChoiceAdmin)
class GapfillAdmin(admin.ModelAdmin):
    list_display = ('dis_Question','standard_answer','score')
    list_per_page = 40
    list_editable = ('standard_answer',)
admin.site.register(Gapfill,GapfillAdmin)
class TrueOfFalseAdmin(admin.ModelAdmin):
    list_display = ('dis_Question', 'standard_answer', 'score')
    list_per_page = 40
    list_editable = ('standard_answer',)
admin.site.register(TrueOrFalse,TrueOfFalseAdmin)
