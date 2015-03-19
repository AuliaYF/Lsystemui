.class Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.source "ExtQuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;,
        Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$DataSwitchObserver;,
        Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$SimStateChangedReceiver;,
        Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnObserver;,
        Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;
    }
.end annotation


# instance fields
.field private mApnCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private final mApnObserver:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnObserver;

.field private mApnState:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

.field private mApnTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private final mContext:Landroid/content/Context;

.field private mIsForeignState:Z

.field private mPhoneCount:I

.field private mRoamingCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mRoamingState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;-><init>(Landroid/content/Context;)V

    .line 71
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mIsForeignState:Z

    .line 74
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 362
    new-instance v3, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;-><init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnState:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

    .line 449
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    .line 450
    new-instance v3, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnObserver;-><init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnObserver:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnObserver;

    .line 453
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnObserver:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnObserver;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnObserver;->startObserving()V

    .line 459
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    new-instance v3, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$SimStateChangedReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$SimStateChangedReceiver;-><init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$1;)V

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 464
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->dataSwitchEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 465
    new-instance v3, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$DataSwitchObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$DataSwitchObserver;-><init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;Landroid/os/Handler;)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$DataSwitchObserver;->startObserving()V

    .line 468
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 469
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 470
    .local v1, handler:Landroid/os/Handler;
    new-instance v2, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;-><init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;Landroid/os/Handler;)V

    .line 471
    .local v2, roamingDataObserver:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;->startObserving()V

    .line 473
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #roamingDataObserver:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnState:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->onRoamingDataStateChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->getDataRoaming(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->setDataRoaming(ZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    return-object v0
.end method

.method private getDataRoaming(I)Z
    .locals 6
    .parameter "sub"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 599
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mPhoneCount:I

    if-le v3, v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, val:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_roaming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    .local v0, enabled:Z
    :goto_1
    return v0

    .line 599
    .end local v0           #enabled:Z
    .end local v1           #val:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .restart local v1       #val:Ljava/lang/String;
    :cond_1
    move v0, v2

    .line 600
    goto :goto_1
.end method

.method private hasIccCard()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 395
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 396
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    const-string v8, "phone_msim"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/MSimTelephonyManager;

    .line 398
    .local v1, msimTM:Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v2

    .line 399
    .local v2, prfDataSub:I
    invoke-virtual {v1, v2}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v3

    .line 400
    .local v3, simState:I
    if-eq v3, v5, :cond_0

    if-eqz v3, :cond_0

    move v0, v5

    .line 402
    .local v0, active:Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 406
    .end local v0           #active:Z
    .end local v1           #msimTM:Landroid/telephony/MSimTelephonyManager;
    .end local v2           #prfDataSub:I
    .end local v3           #simState:I
    :goto_1
    return v5

    .restart local v1       #msimTM:Landroid/telephony/MSimTelephonyManager;
    .restart local v2       #prfDataSub:I
    .restart local v3       #simState:I
    :cond_0
    move v0, v6

    .line 400
    goto :goto_0

    .restart local v0       #active:Z
    :cond_1
    move v5, v6

    .line 402
    goto :goto_1

    .line 404
    .end local v0           #active:Z
    .end local v1           #msimTM:Landroid/telephony/MSimTelephonyManager;
    .end local v2           #prfDataSub:I
    .end local v3           #simState:I
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 406
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    goto :goto_1
.end method

.method private isValidNumeric(Ljava/lang/String;)Z
    .locals 1
    .parameter "numeric"

    .prologue
    .line 514
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    :cond_0
    const/4 v0, 0x0

    .line 519
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onRoamingDataStateChanged()V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->getDataRoaming(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 595
    return-void
.end method

.method private setDataRoaming(ZI)V
    .locals 5
    .parameter "enabled"
    .parameter "sub"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 607
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mPhoneCount:I

    if-le v0, v1, :cond_3

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_roaming"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 612
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_roaming"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 620
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 609
    goto :goto_0

    :cond_2
    move v1, v2

    .line 613
    goto :goto_1

    .line 617
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_roaming"

    if-eqz p1, :cond_4

    :goto_3
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method addApnTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 562
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 563
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->refreshApnTile()V

    .line 564
    return-void
.end method

.method public addRoamingTile()Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    .locals 3

    .prologue
    .line 482
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    .line 483
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$1;-><init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$2;-><init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 506
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mPhoneCount:I

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    return-object v0
.end method

.method public getApnState()Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnState:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

    return-object v0
.end method

.method public onRoamingVisibleChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 523
    const-string v0, "460"

    .line 524
    .local v0, CHINA_MCC:Ljava/lang/String;
    const-string v1, "455"

    .line 529
    .local v1, MACAO_MCC:Ljava/lang/String;
    iget v4, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mPhoneCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 530
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, numeric:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->isValidNumeric(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 557
    :goto_1
    return-void

    .line 533
    .end local v3           #numeric:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #numeric:Ljava/lang/String;
    goto :goto_0

    .line 541
    :cond_1
    const-string v4, "460"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "455"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 542
    :cond_2
    const/4 v2, 0x0

    .line 547
    .local v2, isForeign:Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mIsForeignState:Z

    if-eq v2, v4, :cond_3

    .line 548
    if-eqz v2, :cond_5

    .line 549
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 550
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->getDataRoaming(I)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 551
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 556
    :cond_3
    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mIsForeignState:Z

    goto :goto_1

    .line 544
    .end local v2           #isForeign:Z
    :cond_4
    const/4 v2, 0x1

    .restart local v2       #isForeign:Z
    goto :goto_2

    .line 553
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    goto :goto_3
.end method

.method refreshApnTile()V
    .locals 4

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    if-eqz v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 568
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnState:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnState:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->updateApnList()V

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnState:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

    const v2, 0x7f0a00d9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 572
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnState:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->updateIconId()V

    .line 573
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnState:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 575
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method switchMobileDataState()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 582
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 588
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method updateResources()V
    .locals 0

    .prologue
    .line 476
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateResources()V

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->refreshApnTile()V

    .line 479
    return-void
.end method
