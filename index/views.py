from django.shortcuts import render

# Create your views here.

def subjectDesc(request):
    return render(request, 'subjectDesc.html')
def personalCenter(request):
    return render(request, 'PersonalCenter.html')

