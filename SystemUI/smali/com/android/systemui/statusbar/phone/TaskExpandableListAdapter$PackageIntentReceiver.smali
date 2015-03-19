.class Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TaskExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$PackageIntentReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$PackageIntentReceiver;-><init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 962
    const-string v0, "PackageIntentReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$PackageIntentReceiver;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mHandler:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->access$200(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 964
    return-void
.end method
