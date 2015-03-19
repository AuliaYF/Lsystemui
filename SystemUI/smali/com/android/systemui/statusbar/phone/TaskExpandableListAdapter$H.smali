.class Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;
.super Landroid/os/Handler;
.source "TaskExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 906
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;-><init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "m"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 908
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->updateChildsList()V

    .line 910
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->taskManager:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->access$600(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    move-result-object v0

    #setter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->bTaskListLoading:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->access$702(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;Z)Z

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_5

    .line 912
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 913
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 915
    :cond_2
    invoke-virtual {p0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 916
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 918
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->taskManager:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->access$600(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    move-result-object v0

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->bTaskListLoading:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->access$700(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->taskManager:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->access$600(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->refresh()V

    .line 921
    :cond_4
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 923
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_9

    .line 924
    invoke-virtual {p0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 925
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 927
    :cond_6
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 928
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 930
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->taskManager:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->access$600(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    move-result-object v0

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->bTaskListLoading:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->access$700(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 931
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->taskManager:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->access$600(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->refresh()V

    .line 933
    :cond_8
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 935
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 936
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 937
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 938
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 939
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 940
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_c

    .line 941
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 942
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->taskManager:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->access$600(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    move-result-object v0

    #setter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->bTaskListLoading:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->access$702(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;Z)Z

    .line 943
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 945
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->killChild(I)V

    goto/16 :goto_0

    .line 946
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_e

    .line 947
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 948
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->taskManager:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->access$600(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    move-result-object v0

    #setter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->bTaskListLoading:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->access$702(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;Z)Z

    .line 949
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 951
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->killAllChild()V

    goto/16 :goto_0

    .line 952
    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 953
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->bringChildtoFront(I)V

    goto/16 :goto_0
.end method
