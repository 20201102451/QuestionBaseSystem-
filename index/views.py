from django.shortcuts import render

# Create your views here.

def subjectDesc(request):
    useraccount = request.session['userNameGet']
    return render(request, 'subjectDesc.html', {'useraccount': useraccount})
def personalCenter(request):
    useraccount = request.session['userNameGet']
    return render(request, 'PersonalCenter.html', {'useraccount': useraccount})
def personalCenter2(request):
    useraccount = request.session['userNameGet']
    return render(request, 'PersonalCenter2.html', {'useraccount': useraccount})
def index(request):
    useraccount = request.session['userNameGet']
    return render(request, 'index.html', {'useraccount': useraccount})