from django.shortcuts import render

# Create your views here.

def subjectDesc(request):
    return render(request, 'subjectDesc.html')
def personalCenter(request):
    return render(request, 'PersonalCenter.html')
def personalCenter2(request):
    return render(request, 'PersonalCenter2.html')
def index(request):
    useraccount = request.session['userNameGet']
    return render(request, 'index.html',{'useraccount':useraccount})