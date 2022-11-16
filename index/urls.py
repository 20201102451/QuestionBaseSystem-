from django.urls import path
from . import views

urlpatterns = [
    path('subjectDesc/', views.subjectDesc),
    path('personalCenter/', views.personalCenter),
    path('personalCenter2/', views.personalCenter2),
    path('', views.index),
# 下面四个为添加部分
    path('educater_supermarket/', views.educater_supermarket),
    path('test/',views.test),
    path('delete/',views.delete),
    path('add/',views.add),
    path('personalCenter/delete/',views.personalCenterDelete),
]