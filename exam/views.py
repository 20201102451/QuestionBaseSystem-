from django.shortcuts import render

# Create your views here.

def exam(request):
    return render(request, 'ExamPage.html')
def exam_answer(request):
    return render(request, 'ExamAnswer.html')