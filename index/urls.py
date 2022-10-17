from django.urls import path
from . import views

urlpatterns = [
    path('subjectDesc/', views.subjectDesc),
    path('personalCenter/', views.personalCenter),
    path('personalCenter2/', views.personalCenter2),
    path('', views.index),
]