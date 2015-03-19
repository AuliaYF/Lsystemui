.class public Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
.super Ljava/lang/Object;
.source "TaskExpandableListAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetailProcess"
.end annotation


# instance fields
.field private activityInfo:Landroid/content/pm/ActivityInfo;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private intent:Landroid/content/Intent;

.field private isHome:Z

.field private pkgName:Ljava/lang/String;

.field private pm:Landroid/content/pm/PackageManager;

.field private taskinfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .parameter
    .parameter "ctx"
    .parameter "info"

    .prologue
    const/4 v0, 0x0

    .line 645
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 637
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->pkgName:Ljava/lang/String;

    .line 638
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->taskinfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 639
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->title:Ljava/lang/String;

    .line 642
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->intent:Landroid/content/Intent;

    .line 646
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->taskinfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 647
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->pm:Landroid/content/pm/PackageManager;

    .line 648
    iget-object v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->pkgName:Ljava/lang/String;

    .line 649
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 728
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;

    .end local p1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 731
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public filter()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 719
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->pkgName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->pkgName:Ljava/lang/String;

    const-string v2, "com.android.phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->pkgName:Ljava/lang/String;

    const-string v2, "com.android.dialer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->pkgName:Ljava/lang/String;

    const-string v2, "com.quicinc.fmradio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return v0

    .line 720
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->taskinfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->taskinfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 667
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 706
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getBaseActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getBaseActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->icon:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "TaskExpandableListAdapter"

    const-string v2, "name not found when get Icon"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->intent:Landroid/content/Intent;

    .line 685
    :goto_0
    return-object v0

    .line 681
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->intent:Landroid/content/Intent;

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getBaseActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->intent:Landroid/content/Intent;

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->intent:Landroid/content/Intent;

    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 685
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->pkgName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->title:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 690
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_0

    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getBaseActivity()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    .line 699
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->title:Ljava/lang/String;

    .line 702
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->title:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->title:Ljava/lang/String;

    :goto_1
    return-object v1

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "TaskExpandableListAdapter"

    const-string v2, "name not found when get getTitle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 702
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public isHome()Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->isHome:Z

    return v0
.end method

.method public setHome(Z)V
    .locals 0
    .parameter "ishome"

    .prologue
    .line 652
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->isHome:Z

    .line 653
    return-void
.end method
