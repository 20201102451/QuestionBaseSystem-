from django.urls import path
from . import views

urlpatterns = [
    path('', views.exam),
    path('answer/', views.exam_answer),
]