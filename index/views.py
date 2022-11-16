from django.shortcuts import render,redirect
from CollectTestpaper.models import Testpaper
from Consumer.models import Consumer_testPaper_first, Consumer
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
#修改index
def index(request):
    #"userNameGet
    useraccount = request.session['userNameGet']
    # orm封装好的排序函数
    # orm：封装了mysql底层代码：简单实现增删改查
    #  Testpaper.objects相当于拿到了这个表格、

    rank_time = Testpaper.objects.all().order_by("-apply_time")#拿到通过时间排序的所有试卷数据

    #订阅量排序
    rank_hot_lis = []
    rank_four = list(rank_time)[:2]#前两个时间排序的数据


    for i in rank_time:
        #i是一张试卷：id
        rank_hot = {}
        # 订阅这张试卷的人数
        count = Consumer_testPaper_first.objects.filter(testpaper_id=i.testpaper_id).count()
        # 字典{}
        rank_hot[i.testpaper_id] = {'count':count,"name":i.name,"testpaper_id":i.testpaper_id}
        rank_hot_lis.append(rank_hot)
    # 拿到一个count排序的列表
    # 通过你定义的变量进行排序
    rank_hot_lis = sorted(rank_hot_lis,key=lambda x:list(x.values())[0]['count'],reverse=True)
    # print(rank_hot_lis)
    # 把前两个通过count排序的数据添加
    rank_four.append(list(rank_hot_lis[0].values())[0])
    rank_four.append(list(rank_hot_lis[1].values())[0])

    # print(rank_four)

    return render(request, 'index.html', {'useraccount': useraccount,"rank_four":rank_four})

#下面四个为新增部分--注意urls
def educater_supermarket(request):
    rank_time = Testpaper.objects.all().order_by("-apply_time")
    rank_hot_lis = []
    for i in rank_time:
        rank_hot = {}
        count = Consumer_testPaper_first.objects.filter(testpaper_id=i.testpaper_id).count()
        rank_hot[i.testpaper_id] = {'count':count,"name":i.name,"testpaper_id":i.testpaper_id}
        rank_hot_lis.append(rank_hot)
    rank_hot_lis = sorted(rank_hot_lis,key=lambda x:list(x.values())[0]['count'],reverse=True)
    return render(request, 'educater_supermarket.html',{"rank_time_text":rank_time[:5],"rank_hot_lis":rank_hot_lis[:5],"all":rank_time})

def test(request):
    status = 0
    id = request.GET.get("id")
    test = Testpaper.objects.filter(testpaper_id=id).first()
    # 通过用户id找一下表里面有他和这个试卷的的数据没
    # request.session.get("userNameGet")--用户名
    consumer_name=request.session.get("userNameGet")
    consumer_id = Consumer.objects.filter(consumer_account=consumer_name).values()[0]['consumer_id']
    print(consumer_id)
    if len(Consumer_testPaper_first.objects.filter(consumer=consumer_id,testpaper=id))>0:
        status = 1
    count = Consumer_testPaper_first.objects.filter(testpaper_id=id).count()
    return render(request, 'text.html',{'test':test,'status':status,"count":count})

def delete(request):
    id = request.GET.get("id")
    consumer_name=request.session.get("userNameGet")
    consumer_id = Consumer.objects.filter(consumer_name=consumer_name).values()[0]['consumer_id']
    Consumer_testPaper_first.objects.filter(consumer=consumer_id, testpaper_id=id).delete()
    return redirect("/index/test/?id={}".format(id))

def add(request):
    id = request.GET.get("id")
    consumer_name=request.session.get("userNameGet")
    consumer_id = Consumer.objects.filter(consumer_name=consumer_name).values()[0]['consumer_id']
    print(id)
    Consumer_testPaper_first.objects.create\
        (consumer=Consumer.objects.filter(consumer_id=consumer_id).first(),
         testpaper=Testpaper.objects.filter(testpaper_id=id).first())
    return redirect("/index/test/?id={}".format(id))