from django.contrib import admin
# Register your models here.
from Consumer.models import Consumer,Consumer_testPaper_first,Consumer_answer_status
from CollectTestpaper.models import Testpaper
class ConsumerAdmin(admin.ModelAdmin):
    list_display = ('consumer_account','consumer_name','sex','number','birthday')
    list_filter = ('birthday',)
    list_per_page = 10
    list_editable = ('sex',)
    ordering = ('-birthday',)
admin.site.register(Consumer,ConsumerAdmin)
class Consumer_testPaper_firstAdmin(admin.ModelAdmin):
    list_display = ('dis_consumer','dis_testpaper')
    list_per_page = 10
admin.site.register(Consumer_testPaper_first,Consumer_testPaper_firstAdmin)
class Consumer_answer_statusAdmin(admin.ModelAdmin):
    list_display = ('dis_consumer','dis_testpaper','question_id','answer')
    list_per_page = 10
admin.site.register(Consumer_answer_status,Consumer_answer_statusAdmin)