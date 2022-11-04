from django.contrib import admin

# Register your models here.
from CollectTestpaper.models import Testpaper,TestpaperQuestion,Question,Choice,Gapfill,TrueOrFalse
admin.site.register(Testpaper)
admin.site.register(Question)
admin.site.register(Choice)
admin.site.register(Gapfill)
admin.site.register(TrueOrFalse)
