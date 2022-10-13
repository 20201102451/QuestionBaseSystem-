from django.shortcuts import render, redirect, HttpResponse
import Consumer.models
from django.db import transaction
# Create your views here.

def login(request):
    if request.method == 'GET':
        return render(request, 'login.html')
    else:
        consumerAccount = request.POST.get("username")
        consumerPWD = request.POST.get("password")
        if Consumer.models.Consumer.objects.filter(consumer_account=consumerAccount,consumer_password=consumerPWD).exists():
            return render(request, 'index.html')
        else:
            msg_error = "用户名或密码错误"
            return render(request, "login.html", {"msg_error": msg_error})

def register(request):
    if request.method == 'GET':
        return render(request, 'register.html')
    else:
        ConsumerAccount = request.POST.get("ConsumerAccount")
        ConsumerName = request.POST.get("ConsumerName")
        ConsumerPassword = request.POST.get("ConsumerPassword")
        ConsumerPassword2 = request.POST.get("ConsumerPassword2")
        Name = request.POST.get("Name")
        Sex = request.POST.get("Sex")
        print(Sex)
        Number = request.POST.get("Number")
        Birthday = request.POST.get("Birthday")
        Email = request.POST.get("Email")
        SecurityQuestion = request.POST.get("SecurityQuestion")
        SecurityAnswer = request.POST.get("SecurityAnswer")
        if Consumer.models.Consumer.objects.filter(consumer_account=ConsumerAccount).exists():
            error_msg1 = "该账号已存在！"
            return render(request, 'register.html', {"error_msg": error_msg1})
        elif ConsumerPassword != ConsumerPassword2:
            return render(request, 'register.html', {'error_msg2': '两次输入密码不一致！'})
        else:
            try:
                save_id = transaction.savepoint()
                Consumer.models.Consumer.objects.create(consumer_account=ConsumerAccount,
                                                        consumer_name=ConsumerName,
                                                        consumer_password=ConsumerPassword,
                                                        name=Name,
                                                        sex=Sex,
                                                        number=Number,
                                                        birthday=Birthday,
                                                        email=Email,
                                                        security_question=SecurityQuestion,
                                                        security_answer=SecurityAnswer)
                transaction.savepoint_commit(save_id)
            except Exception as e:
                transaction.savepoint_rollback(save_id)
                return render(request, "registerFalse.html", {"error_msg": str(e)})
            return render(request, "registerSuccessful.html")

def forgot_inputAccount(request):
    if request.method == "GET":
        return render(request, 'forgotPwd_inputAccount.html')
    else:
        request.session["userNameGet"] = request.POST.get("userNameGet")
        if Consumer.models.Consumer.objects.filter(consumer_account=request.session["userNameGet"]).exists():
            request.session['list_msg'] = Consumer.models.Consumer.objects.values("security_question").filter(consumer_account=request.session['userNameGet']).first()
            return render(request, 'forgotPwd_verifySecurity.html', request.session['list_msg'])
        else:
            del request.session['userNameGet']
            return render(request, 'forgotPwd_inputAccount.html', {"error_msg": "该账号不存在！"})
def forgot_verifySecurity(request):
    if request.method == "GET":
        return render(request, 'forgotPwd_verifySecurity.html')
    else:
        SecurityAnswerInput = request.POST.get("SecurityAnswerInput")
        if Consumer.models.Consumer.objects.filter(consumer_account=request.session['userNameGet'],
                                                   security_answer=SecurityAnswerInput).exists():
            return render(request, 'forgotPwd_resetPassword.html')
        else:
            data_dict = {'msg': "密保答案错误！", 'security_question': request.session.get('list_msg')['security_question']}
            return render(request, 'forgotPwd_verifySecurity.html', data_dict)
def forgot_resetPassword(request):
    if request.method == "GET":
        return render(request,  'forgotPwd_resetPassword.html')
    else:
        passwordFirst = request.POST.get("PasswordFirst")
        passwordLast = request.POST.get("PasswordLast")
        if passwordFirst != passwordLast:
            return render(request, 'forgotPwd_resetPassword.html', {'error_msg': "两次输入的密码不一致！"})
        else:
            Consumer.models.Consumer.objects.update(consumer_password=passwordFirst)
            return render(request, 'resetPasswordSuccessful.html')
def modify(request):
    return render(request,'modify.html')