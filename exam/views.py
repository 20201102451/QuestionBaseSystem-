from django.shortcuts import render ,redirect, HttpResponse
from CollectTestpaper.models import Question, Choice, Gapfill, TrueOrFalse, TestpaperQuestion, Testpaper
from Consumer.models import Consumer_answer_status,Consumer
# Create your views here.
import random
def exam(request):
    TestpaperID = request.GET.get("TestpaperID").strip("/")#GET请求获取试卷ID同时去除尾部携带的“/”
    Consumer_id = Consumer.objects.filter(consumer_account=request.session["userNameGet"]).first().consumer_id#获取用户id
    # 获取试卷对象（补全试卷名，试卷出题时间，试卷难度） ->直接传送到前端页面使用
    TestpaperData = Testpaper.objects.filter(testpaper_id=TestpaperID).first()
    #接下来将试卷所属试题全部从数据库中获取
    #获取全部试题id
    QuestionID = TestpaperQuestion.objects.filter(testpaper_id=TestpaperID)
    # print(i.question_id_id)
    ChoiceData = list()# 选择题数据集
    GapfillData = list()# 填空题数据集
    TrueOrFalseData = list()# 判断题数据集
    ChoiceSignal = 0  # 选择题序号
    TrueOrFalseSignal = 0  # 判断题序号
    GapfillSignal = 0  # 填空题序号
    ChoiceScores = 0#选择题总分
    TrueOrFalseScores = 0#判断题总分
    GapfillScores = 0#填空题总分
    consumerSumScore = 0#用户答题总分
    for i in QuestionID:
        ChoiceList = list()# 单个选择题属性列表
        TrueOrFalseList = list()# 单个判断题属性列表
        GapfillList = list()# 单个填空题属性列表
        QuestionData = Question.objects.filter(question_id=i.question_id_id).first()
        if QuestionData.level == 1:#选择题
            ChoiceSignal+=1
            ChoiceList.append(QuestionData.stems)
            ChoiceList.append(Choice.objects.filter(question_id=QuestionData.question_id).first().choice1)
            ChoiceList.append(Choice.objects.filter(question_id=QuestionData.question_id).first().choice2)
            ChoiceList.append(Choice.objects.filter(question_id=QuestionData.question_id).first().choice3)
            ChoiceList.append(Choice.objects.filter(question_id=QuestionData.question_id).first().choice4)
            ChoiceList.append(Choice.objects.filter(question_id=QuestionData.question_id).first().score)
            ChoiceList.append(Choice.objects.filter(question_id=QuestionData.question_id).first().standard_answer)
            ChoiceList.append(QuestionData.question_id)
            ChoiceList.append(ChoiceSignal)
            consumer_status = Consumer_answer_status.objects.filter(consumer_id=Consumer_id,
                                                                    testpaper_id=TestpaperID,
                                                                    question_id=QuestionData.question_id)#获取数据库数据
            online_answer = request.POST.get("{}".format(QuestionData.question_id))#获取POST数据
            if consumer_status.exists():
                consumer_answer = consumer_status.first().answer
                if online_answer != None:
                    consumer_answer = online_answer
                    Consumer_answer_status.objects.filter(consumer_id=Consumer_id,
                                                          testpaper_id=TestpaperID,
                                                          question_id=QuestionData.question_id).update(
                        answer=consumer_answer)
            else:
                consumer_answer = online_answer
                if consumer_answer != None:
                    Consumer_answer_status.objects.create(
                        consumer_id=Consumer.objects.filter(consumer_id=Consumer_id).first(),
                        testpaper_id=Testpaper.objects.filter(testpaper_id=TestpaperID).first(),
                        question_id=Question.objects.filter(question_id=QuestionData.question_id).first(),
                        answer=consumer_answer)
            ChoiceList.append(consumer_answer)
            if consumer_answer == ChoiceList[6]:
                consumerSumScore+=Choice.objects.filter(question_id=QuestionData.question_id).first().score
            ChoiceData.append(ChoiceList)
        elif QuestionData.level == 2:#判断题
            TrueOrFalseSignal+=1
            TrueOrFalseList.append(QuestionData.stems)
            TrueOrFalseList.append(TrueOrFalse.objects.filter(question_id=QuestionData.question_id).first().score)
            TrueOrFalseList.append(TrueOrFalse.objects.filter(question_id=QuestionData.question_id).first().standard_answer)
            TrueOrFalseList.append(QuestionData.question_id)
            TrueOrFalseList.append(TrueOrFalseSignal)
            consumer_status = Consumer_answer_status.objects.filter(consumer_id=Consumer_id,
                                                                    testpaper_id=TestpaperID,
                                                                    question_id=QuestionData.question_id)  # 获取数据库数据
            online_answer = request.POST.get("{}".format(QuestionData.question_id))  # 获取POST数据
            if consumer_status.exists():
                consumer_answer = consumer_status.first().answer
                if online_answer != None:
                    consumer_answer = online_answer
                    Consumer_answer_status.objects.filter(consumer_id=Consumer_id,
                                                          testpaper_id=TestpaperID,
                                                          question_id=QuestionData.question_id).update(
                        answer=consumer_answer)
            else:
                consumer_answer = online_answer
                if consumer_answer != None:
                    Consumer_answer_status.objects.create(
                        consumer_id=Consumer.objects.filter(consumer_id=Consumer_id).first(),
                        testpaper_id=Testpaper.objects.filter(testpaper_id=TestpaperID).first(),
                        question_id=Question.objects.filter(question_id=QuestionData.question_id).first(),
                        answer=consumer_answer)
            TrueOrFalseList.append(consumer_answer)
            if consumer_answer == TrueOrFalseList[2]:
                consumerSumScore+=TrueOrFalse.objects.filter(question_id=QuestionData.question_id).first().score
            TrueOrFalseData.append(TrueOrFalseList)
        else:#填空题
            GapfillSignal+=1
            GapfillList.append(QuestionData.stems)
            GapfillList.append(Gapfill.objects.filter(question_id=QuestionData.question_id).first().score)
            GapfillList.append(Gapfill.objects.filter(question_id=QuestionData.question_id).first().standard_answer)
            GapfillList.append(QuestionData.question_id)
            GapfillList.append(GapfillSignal)
            consumer_status = Consumer_answer_status.objects.filter(consumer_id=Consumer_id,
                                                                    testpaper_id=TestpaperID,
                                                                    question_id=QuestionData.question_id)  # 获取数据库数据
            online_answer = request.POST.get("{}".format(QuestionData.question_id))  # 获取POST数据
            if consumer_status.exists():
                consumer_answer = consumer_status.first().answer
                if online_answer != "":
                    consumer_answer = online_answer
                    Consumer_answer_status.objects.filter(consumer_id=Consumer_id,
                                                          testpaper_id=TestpaperID,
                                                          question_id=QuestionData.question_id).update(
                        answer=consumer_answer)
            else:
                consumer_answer = online_answer
                if consumer_answer != "" and consumer_answer != None:
                    Consumer_answer_status.objects.create(
                        consumer_id=Consumer.objects.filter(consumer_id=Consumer_id).first(),
                        testpaper_id=Testpaper.objects.filter(testpaper_id=TestpaperID).first(),
                        question_id=Question.objects.filter(question_id=QuestionData.question_id).first(),
                        answer=consumer_answer)
            GapfillList.append(consumer_answer)
            if consumer_answer == GapfillList[2]:
                consumerSumScore+=Gapfill.objects.filter(question_id=QuestionData.question_id).first().score
            GapfillData.append(GapfillList)
    ChoiceScores = ChoiceSignal*ChoiceData[0][5]
    TrueOrFalseScores = TrueOrFalseSignal*TrueOrFalseData[0][1]
    GapfillScores = GapfillSignal*GapfillData[0][1]

    # ==============开始
    all_test = Testpaper.objects.exclude(testpaper_id=TestpaperID)#取出所有非当前试卷的试卷
    same_hard_test = []
    sub_one_hard_test = []
    #循环取出相同难度的试题和相差为1的试题
    for i in all_test:
        # TestpaperData.testpaper_id
            if i.hard==TestpaperData.hard:
                same_hard_test.append(i)
            elif abs(i.hard-TestpaperData.hard)==1:
                sub_one_hard_test.append(i)
    try:
        # 5题目---用随机函数random.sample取出
        same_recommend_test = random.sample(same_hard_test, 3)#random.sample(list,num)
        same_recommend_test += random.sample(sub_one_hard_test, 2)
    except:
        # 防止数据过少
        same_recommend_test = all_test[:5]
    # =====================结束

    return render(request,
                  "ExamPage.html",
                  {"ChoiceData": ChoiceData,
                   "GapfillData": GapfillData,
                   "TrueOrFalseData": TrueOrFalseData,
                   "ChoiceScores": ChoiceScores,
                   "TrueOrFalseScores": TrueOrFalseScores,
                   "GapfillScores": GapfillScores,
                   "TestpaperID": TestpaperID,
                   "consumerSumScore": consumerSumScore,
                   "same_recommend_test": same_recommend_test,
                   })