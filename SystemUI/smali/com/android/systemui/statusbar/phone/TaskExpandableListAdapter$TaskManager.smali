.class public Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;
.super Ljava/lang/Object;
.source "TaskExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskManager"
.end annotation


# instance fields
.field private final MAX_TASK_NUM:I

.field public final TAG:Ljava/lang/String;

.field private am:Landroid/app/ActivityManager;

.field private bTaskListLoading:Z

.field private listdp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;",
            ">;"
        }
    .end annotation
.end field

.field private pm:Landroid/content/pm/PackageManager;

.field private recentTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    const-string v0, "TaskManager"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->TAG:Ljava/lang/String;

    .line 742
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->MAX_TASK_NUM:I

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->am:Landroid/app/ActivityManager;

    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->bTaskListLoading:Z

    .line 750
    const-string v0, "activity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->am:Landroid/app/ActivityManager;

    .line 751
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->pm:Landroid/content/pm/PackageManager;

    .line 752
    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;)Landroid/app/ActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->am:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->bTaskListLoading:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 740
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->bTaskListLoading:Z

    return p1
.end method


# virtual methods
.method public appNeedHide(Ljava/lang/String;)Z
    .locals 5
    .parameter "psPackageName"

    .prologue
    const/4 v3, 0x1

    .line 886
    const-string v4, "com.android.stk"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.settings"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.bluetooth"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.systemui"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.google.android.setupwizard"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 901
    :cond_0
    :goto_0
    return v3

    .line 893
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->getList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;

    .line 894
    .local v0, dp:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 901
    .end local v0           #dp:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    .end local v2           #packageName:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getBringtoFrontIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .parameter "packagename"

    .prologue
    .line 757
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->am:Landroid/app/ActivityManager;

    const/16 v6, 0x64

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->recentTasks:Ljava/util/List;

    .line 759
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->recentTasks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 760
    .local v3, numTasks:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 761
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->recentTasks:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 762
    .local v1, info:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v5, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 763
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, v1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    .line 764
    iget-object v5, v1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 766
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const v6, -0x200001

    and-int/2addr v5, v6

    const/high16 v6, 0x1000

    or-int/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 768
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->pm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 769
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 775
    .end local v1           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_1
    return-object v2

    .line 760
    .restart local v1       #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v4       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 775
    .end local v1           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;",
            ">;"
        }
    .end annotation

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->listdp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized getRunningProcess()V
    .locals 12

    .prologue
    .line 783
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->am:Landroid/app/ActivityManager;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 784
    .local v4, listrti:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->listdp:Ljava/util/ArrayList;

    .line 795
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->pm:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mHomeIntent:Landroid/content/Intent;
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->access$400(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Landroid/content/Intent;

    move-result-object v10

    const v11, 0x10040

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 805
    .local v5, mHomeResolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 806
    .local v8, rti:Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v1, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->access$500(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v1, v9, v10, v8}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;-><init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 807
    .local v1, dp:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 808
    .local v7, psPackageName:Ljava/lang/String;
    const/4 v6, 0x1

    .line 828
    .local v6, needshow:Z
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->appNeedHide(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 829
    const/4 v6, 0x0

    .line 832
    :cond_1
    if-eqz v6, :cond_2

    .line 833
    if-eqz v5, :cond_2

    .line 834
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 838
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 843
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 848
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->setHome(Z)V

    .line 855
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_2
    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->filter()Z

    move-result v9

    if-nez v9, :cond_0

    .line 857
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getTitle()Ljava/lang/String;

    .line 859
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 860
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->listdp:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 783
    .end local v1           #dp:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listrti:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5           #mHomeResolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6           #needshow:Z
    .end local v7           #psPackageName:Ljava/lang/String;
    .end local v8           #rti:Landroid/app/ActivityManager$RunningTaskInfo;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 838
    .restart local v0       #count:I
    .restart local v1       #dp:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #listrti:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5       #mHomeResolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6       #needshow:Z
    .restart local v7       #psPackageName:Ljava/lang/String;
    .restart local v8       #rti:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 864
    .end local v0           #count:I
    .end local v1           #dp:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    .end local v2           #i:I
    .end local v6           #needshow:Z
    .end local v7           #psPackageName:Ljava/lang/String;
    .end local v8           #rti:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mHandler:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->access$200(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 868
    monitor-exit p0

    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 875
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->bTaskListLoading:Z

    .line 876
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager$1;-><init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 882
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 883
    return-void
.end method
