from django.urls import path
from . import views

urlpatterns = [
    path('login/',views.login),
    path('register/',views.register),
    path('forgotPwd/inputAccount/',views.forgot_inputAccount),
    path('forgotPwd/verifySecurity/',views.forgot_verifySecurity),
    path('forgotPwd/resetPassword/',views.forgot_resetPassword),
    path('<str:useraccount>/modify/',views.modify),
]