.class public Lcom/android/systemui/statusbar/SFMSimSignalClusterView;
.super Lcom/android/systemui/statusbar/MSimSignalClusterView;
.source "SFMSimSignalClusterView.java"


# instance fields
.field private dataConnected:[Z

.field private dataEnabledsub:[Z

.field private isSimRoam:[Z

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mConnectService:Landroid/net/ConnectivityManager;

.field private mIsAirplaneMode:Z

.field private mMNoSimIconVisiable:[Z

.field mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

.field private mMobileActivityId:[I

.field private mMobileDescription:[Ljava/lang/String;

.field private mMobileStrengthId:[[I

.field mMobileSub2:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileVisible:Z

.field private mNoSimIconId:[I

.field mNoSimSlot:Landroid/widget/ImageView;

.field mNoSimSlotSub2:Landroid/widget/ImageView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceState:[Landroid/telephony/ServiceState;

.field mSignalCDMA1x:Landroid/widget/ImageView;

.field mSignalCDMA1xOnly:Landroid/widget/ImageView;

.field mSignalCDMA3g:Landroid/widget/ImageView;

.field mSignalCDMAboth:Landroid/widget/LinearLayout;

.field mSignalEvdoOnly:Landroid/widget/ImageView;

.field private mSignalIconVisiable:[Z

.field mSpacer:Landroid/view/View;

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiVisible:Z

    .line 75
    iput v4, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiStrengthId:I

    iput v4, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiActivityId:I

    .line 76
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileVisible:Z

    .line 81
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mIsAirplaneMode:Z

    .line 82
    iput v4, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mAirplaneIconId:I

    .line 889
    new-instance v2, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/SFMSimSignalClusterView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    .line 113
    .local v1, numPhones:I
    const/4 v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    .line 114
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    .line 115
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileActivityId:[I

    .line 116
    new-array v2, v1, [Landroid/telephony/ServiceState;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    .line 117
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMNoSimIconVisiable:[Z

    .line 118
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalIconVisiable:[Z

    .line 119
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->dataEnabledsub:[Z

    .line 120
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimIconId:[I

    .line 121
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->isSimRoam:[Z

    .line 122
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->dataConnected:[Z

    .line 123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMNoSimIconVisiable:[Z

    aput-boolean v4, v2, v0

    .line 125
    iget-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalIconVisiable:[Z

    aput-boolean v4, v2, v0

    .line 126
    iget-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v3, v2, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mConnectService:Landroid/net/ConnectivityManager;

    .line 130
    return-void
.end method

.method private apply()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :goto_1
    const-string v1, "SFMSimSignalClusterView"

    const-string v2, "wifi: %s sig=%d act=%d"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_2

    const-string v0, "VISIBLE"

    :goto_2
    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget v4, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiStrengthId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget v4, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiActivityId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 344
    :cond_2
    const-string v0, "GONE"

    goto :goto_2
.end method

.method private applySubscription(I)V
    .locals 7
    .parameter "subscription"

    .prologue
    const v6, 0x7f020303

    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->apply()V

    .line 264
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_c

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->dataEnabledsub:[Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->dataConnected:[Z

    aget-boolean v3, v3, p1

    aput-boolean v3, v0, p1

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v3, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->dataEnabledsub:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v3, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->dataEnabledsub:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    if-nez p1, :cond_9

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA3g:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v3, v3, p1

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA3g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA1x:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v3, v3, p1

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA1x:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA1xOnly:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v3, v3, p1

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA1xOnly:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalEvdoOnly:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v3, v3, p1

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalEvdoOnly:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 285
    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMAboth:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v5

    if-eq v0, v6, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalIconVisiable:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA1xOnly:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v5

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v5

    if-ne v0, v6, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalIconVisiable:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalEvdoOnly:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalIconVisiable:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimIconId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 298
    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMNoSimIconVisiable:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_8

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    :goto_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_d

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 266
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 267
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 285
    goto :goto_3

    :cond_6
    move v0, v2

    .line 289
    goto :goto_4

    :cond_7
    move v0, v2

    .line 293
    goto :goto_5

    :cond_8
    move v0, v2

    .line 298
    goto :goto_6

    .line 300
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v3, v3, p1

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 307
    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalIconVisiable:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_a

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimSlotSub2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimIconId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimSlotSub2:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 313
    iget-object v3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimSlotSub2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMNoSimIconVisiable:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_b

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_a
    move v0, v2

    .line 307
    goto :goto_8

    :cond_b
    move v0, v2

    .line 313
    goto :goto_9

    .line 316
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 324
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private convertNoSimIconIdToCT(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 361
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->MULTI_NO_SIM_CT:[I

    aget v0, v0, p1

    return v0
.end method

.method private convertSignalNullIconIdToCT(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 365
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->MULTI_SIGNAL_NULL_CT:[I

    aget v0, v0, p1

    return v0
.end method

.method private getAcitivyTypeIconId(III)I
    .locals 5
    .parameter "dataType"
    .parameter "dataInout"
    .parameter "subscription"

    .prologue
    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, type:I
    const/4 v0, 0x0

    .line 371
    .local v0, inout:I
    packed-switch p1, :pswitch_data_0

    .line 388
    :pswitch_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 389
    const/4 v1, 0x1

    .line 394
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 405
    const/4 v0, 0x0

    .line 409
    :goto_1
    const-string v2, "SFMSimSignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAcitivyTypeIconId type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " inout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subscription"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->DATA_TYPE_ACTIVITY_SF:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    return v2

    .line 373
    :pswitch_1
    const/4 v1, 0x0

    .line 374
    goto :goto_0

    .line 376
    :pswitch_2
    const/4 v1, 0x3

    .line 377
    goto :goto_0

    .line 379
    :pswitch_3
    const/4 v1, 0x4

    .line 380
    goto :goto_0

    .line 382
    :pswitch_4
    const/4 v1, 0x2

    .line 383
    goto :goto_0

    .line 385
    :pswitch_5
    const/4 v1, 0x1

    .line 386
    goto :goto_0

    .line 391
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 396
    :sswitch_0
    const/4 v0, 0x1

    .line 397
    goto :goto_1

    .line 399
    :sswitch_1
    const/4 v0, 0x2

    .line 400
    goto :goto_1

    .line 402
    :sswitch_2
    const/4 v0, 0x3

    .line 403
    goto :goto_1

    .line 371
    :pswitch_data_0
    .packed-switch 0x7f0200f7
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_3
    .end packed-switch

    .line 394
    :sswitch_data_0
    .sparse-switch
        0x7f020317 -> :sswitch_0
        0x7f020318 -> :sswitch_2
        0x7f02031d -> :sswitch_1
    .end sparse-switch
.end method

.method private getSub0SignalId(IZZZZ)I
    .locals 10
    .parameter "originalId"
    .parameter "hasEvdo"
    .parameter "isEvdoOnly"
    .parameter "isEvdo"
    .parameter "isRoam"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, isGSM:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    .line 419
    .local v1, radioTech:I
    invoke-static {v1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    .line 421
    const-string v2, "SFMSimSignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voice radio technology is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isGSM = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRoam= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v1           #radioTech:I
    :cond_0
    const-string v2, "SFMSimSignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSub0SignalId,hasEvdo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- isEvdoOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- isEvdo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--isRoam="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sparse-switch p1, :sswitch_data_0

    move v2, p1

    .line 828
    :goto_0
    return v2

    .line 429
    :sswitch_0
    const-string v2, "SFMSimSignalClusterView"

    const-string v3, "getSub0SignalId,originalId is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    if-eqz p5, :cond_5

    .line 431
    if-eqz p2, :cond_3

    .line 432
    if-eqz p3, :cond_1

    .line 433
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    .line 435
    :cond_1
    if-eqz p4, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    .line 438
    :cond_3
    if-eqz v0, :cond_4

    .line 439
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    .line 441
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    .line 446
    :cond_5
    if-eqz p2, :cond_8

    .line 447
    if-eqz p3, :cond_6

    .line 448
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    .line 450
    :cond_6
    if-eqz p4, :cond_7

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    .line 453
    :cond_8
    if-eqz v0, :cond_9

    .line 454
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    .line 456
    :cond_9
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    goto :goto_0

    .line 462
    :sswitch_1
    const-string v2, "SFMSimSignalClusterView"

    const-string v3, "getSub0SignalId,originalId is 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-eqz p5, :cond_e

    .line 464
    if-eqz p2, :cond_c

    .line 465
    if-eqz p3, :cond_a

    .line 466
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto :goto_0

    .line 468
    :cond_a
    if-eqz p4, :cond_b

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto :goto_0

    :cond_b
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto/16 :goto_0

    .line 471
    :cond_c
    if-eqz v0, :cond_d

    .line 472
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto/16 :goto_0

    .line 474
    :cond_d
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto/16 :goto_0

    .line 479
    :cond_e
    if-eqz p2, :cond_11

    .line 480
    if-eqz p3, :cond_f

    .line 481
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto/16 :goto_0

    .line 483
    :cond_f
    if-eqz p4, :cond_10

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto/16 :goto_0

    :cond_10
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto/16 :goto_0

    .line 486
    :cond_11
    if-eqz v0, :cond_12

    .line 487
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto/16 :goto_0

    .line 489
    :cond_12
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    goto/16 :goto_0

    .line 495
    :sswitch_2
    const-string v2, "SFMSimSignalClusterView"

    const-string v3, "getSub0SignalId,originalId is 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    if-eqz p5, :cond_17

    .line 497
    if-eqz p2, :cond_15

    .line 498
    if-eqz p3, :cond_13

    .line 499
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    .line 501
    :cond_13
    if-eqz p4, :cond_14

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    :cond_14
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    .line 504
    :cond_15
    if-eqz v0, :cond_16

    .line 505
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    .line 507
    :cond_16
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    .line 512
    :cond_17
    if-eqz p2, :cond_1a

    .line 513
    if-eqz p3, :cond_18

    .line 514
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    .line 516
    :cond_18
    if-eqz p4, :cond_19

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    :cond_19
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    .line 519
    :cond_1a
    if-eqz v0, :cond_1b

    .line 520
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    .line 522
    :cond_1b
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v7

    goto/16 :goto_0

    .line 528
    :sswitch_3
    const-string v2, "SFMSimSignalClusterView"

    const-string v3, "getSub0SignalId,originalId is 3"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    if-eqz p5, :cond_20

    .line 530
    if-eqz p2, :cond_1e

    .line 531
    if-eqz p3, :cond_1c

    .line 532
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    .line 534
    :cond_1c
    if-eqz p4, :cond_1d

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    :cond_1d
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    .line 537
    :cond_1e
    if-eqz v0, :cond_1f

    .line 538
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    .line 540
    :cond_1f
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    .line 545
    :cond_20
    if-eqz p2, :cond_23

    .line 546
    if-eqz p3, :cond_21

    .line 547
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    .line 549
    :cond_21
    if-eqz p4, :cond_22

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    :cond_22
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    .line 552
    :cond_23
    if-eqz v0, :cond_24

    .line 553
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    .line 555
    :cond_24
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v8

    goto/16 :goto_0

    .line 561
    :sswitch_4
    const-string v2, "SFMSimSignalClusterView"

    const-string v3, "getSub0SignalId,originalId is 4"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    if-eqz p5, :cond_29

    .line 563
    if-eqz p2, :cond_27

    .line 564
    if-eqz p3, :cond_25

    .line 565
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    .line 567
    :cond_25
    if-eqz p4, :cond_26

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    :cond_26
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    .line 570
    :cond_27
    if-eqz v0, :cond_28

    .line 571
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    .line 573
    :cond_28
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    .line 578
    :cond_29
    if-eqz p2, :cond_2c

    .line 579
    if-eqz p3, :cond_2a

    .line 580
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    .line 582
    :cond_2a
    if-eqz p4, :cond_2b

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    :cond_2b
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    .line 585
    :cond_2c
    if-eqz v0, :cond_2d

    .line 586
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    .line 588
    :cond_2d
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v9

    goto/16 :goto_0

    .line 594
    :sswitch_5
    const-string v2, "SFMSimSignalClusterView"

    const-string v3, "getSub0SignalId,originalId is 5"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    if-eqz p5, :cond_32

    .line 596
    if-eqz p2, :cond_30

    .line 597
    if-eqz p3, :cond_2e

    .line 598
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v5

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 600
    :cond_2e
    if-eqz p4, :cond_2f

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v5

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    :cond_2f
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v5

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 603
    :cond_30
    if-eqz v0, :cond_31

    .line 604
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v5

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 606
    :cond_31
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v5

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 611
    :cond_32
    if-eqz p2, :cond_35

    .line 612
    if-eqz p3, :cond_33

    .line 613
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v5

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 615
    :cond_33
    if-eqz p4, :cond_34

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v5

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    :cond_34
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v5

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 618
    :cond_35
    if-eqz v0, :cond_36

    .line 619
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v5

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 621
    :cond_36
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v5

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 627
    :sswitch_6
    const-string v2, "SFMSimSignalClusterView"

    const-string v3, "getSub0SignalId,originalId is 0 fully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    if-eqz p5, :cond_3b

    .line 629
    if-eqz p2, :cond_39

    .line 630
    if-eqz p3, :cond_37

    .line 631
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    .line 633
    :cond_37
    if-eqz p4, :cond_38

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    :cond_38
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    .line 636
    :cond_39
    if-eqz v0, :cond_3a

    .line 637
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    .line 639
    :cond_3a
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    .line 644
    :cond_3b
    if-eqz p2, :cond_3e

    .line 645
    if-eqz p3, :cond_3c

    .line 646
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    .line 648
    :cond_3c
    if-eqz p4, :cond_3d

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    :cond_3d
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    .line 651
    :cond_3e
    if-eqz v0, :cond_3f

    .line 652
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    .line 654
    :cond_3f
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v5

    goto/16 :goto_0

    .line 660
    :sswitch_7
    const-string v2, "SFMSimSignalClusterView"

    const-string v3, "getSub0SignalId,originalId is 1 fully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    if-eqz p5, :cond_44

    .line 662
    if-eqz p2, :cond_42

    .line 663
    if-eqz p3, :cond_40

    .line 664
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    .line 666
    :cond_40
    if-eqz p4, :cond_41

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    :cond_41
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    .line 669
    :cond_42
    if-eqz v0, :cond_43

    .line 670
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    .line 672
    :cond_43
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    .line 677
    :cond_44
    if-eqz p2, :cond_47

    .line 678
    if-eqz p3, :cond_45

    .line 679
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    .line 681
    :cond_45
    if-eqz p4, :cond_46

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    :cond_46
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    .line 684
    :cond_47
    if-eqz v0, :cond_48

    .line 685
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    .line 687
    :cond_48
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v6

    goto/16 :goto_0

    .line 693
    :sswitch_8
    const-string v2, "SFMSimSignalClusterView"

    const-string v3, "getSub0SignalId,originalId is 2 fully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    if-eqz p5, :cond_4d

    .line 695
    if-eqz p2, :cond_4b

    .line 696
    if-eqz p3, :cond_49

    .line 697
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    .line 699
    :cond_49
    if-eqz p4, :cond_4a

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    :cond_4a
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    .line 702
    :cond_4b
    if-eqz v0, :cond_4c

    .line 703
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    .line 705
    :cond_4c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    .line 710
    :cond_4d
    if-eqz p2, :cond_50

    .line 711
    if-eqz p3, :cond_4e

    .line 712
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    .line 714
    :cond_4e
    if-eqz p4, :cond_4f

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    :cond_4f
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    .line 717
    :cond_50
    if-eqz v0, :cond_51

    .line 718
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    .line 720
    :cond_51
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v7

    goto/16 :goto_0

    .line 726
    :sswitch_9
    const-string v2, "SFMSimSignalClusterView"

    const-string v3, "getSub0SignalId,originalId is 3 fully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    if-eqz p5, :cond_56

    .line 728
    if-eqz p2, :cond_54

    .line 729
    if-eqz p3, :cond_52

    .line 730
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    .line 732
    :cond_52
    if-eqz p4, :cond_53

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    :cond_53
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    .line 735
    :cond_54
    if-eqz v0, :cond_55

    .line 736
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    .line 738
    :cond_55
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    .line 743
    :cond_56
    if-eqz p2, :cond_59

    .line 744
    if-eqz p3, :cond_57

    .line 745
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    .line 747
    :cond_57
    if-eqz p4, :cond_58

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    :cond_58
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    .line 750
    :cond_59
    if-eqz v0, :cond_5a

    .line 751
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    .line 753
    :cond_5a
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v8

    goto/16 :goto_0

    .line 759
    :sswitch_a
    const-string v2, "SFMSimSignalClusterView"

    const-string v3, "getSub0SignalId,originalId is 4 fully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    if-eqz p5, :cond_5f

    .line 761
    if-eqz p2, :cond_5d

    .line 762
    if-eqz p3, :cond_5b

    .line 763
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    .line 765
    :cond_5b
    if-eqz p4, :cond_5c

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    :cond_5c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    .line 768
    :cond_5d
    if-eqz v0, :cond_5e

    .line 769
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    .line 771
    :cond_5e
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    .line 776
    :cond_5f
    if-eqz p2, :cond_62

    .line 777
    if-eqz p3, :cond_60

    .line 778
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    .line 780
    :cond_60
    if-eqz p4, :cond_61

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    :cond_61
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    .line 783
    :cond_62
    if-eqz v0, :cond_63

    .line 784
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    .line 786
    :cond_63
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v6

    aget v2, v2, v9

    goto/16 :goto_0

    .line 792
    :sswitch_b
    const-string v2, "SFMSimSignalClusterView"

    const-string v3, "getSub0SignalId,originalId is 5 fully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    if-eqz p5, :cond_68

    .line 794
    if-eqz p2, :cond_66

    .line 795
    if-eqz p3, :cond_64

    .line 796
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v6

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 798
    :cond_64
    if-eqz p4, :cond_65

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_R_CT:[[I

    aget-object v2, v2, v6

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    :cond_65
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_R_CT:[[I

    aget-object v2, v2, v6

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 801
    :cond_66
    if-eqz v0, :cond_67

    .line 802
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v2, v2, v6

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 804
    :cond_67
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_R_CT:[[I

    aget-object v2, v2, v6

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 809
    :cond_68
    if-eqz p2, :cond_6b

    .line 810
    if-eqz p3, :cond_69

    .line 811
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_EVDO_ONLY:[[I

    aget-object v2, v2, v6

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 813
    :cond_69
    if-eqz p4, :cond_6a

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_3G_CT:[[I

    aget-object v2, v2, v6

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    :cond_6a
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_CT:[[I

    aget-object v2, v2, v6

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 816
    :cond_6b
    if-eqz v0, :cond_6c

    .line 817
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v2, v2, v6

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 819
    :cond_6c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_1X_ONLY_CT:[[I

    aget-object v2, v2, v6

    const/4 v3, 0x5

    aget v2, v2, v3

    goto/16 :goto_0

    .line 825
    :sswitch_c
    const-string v2, "SFMSimSignalClusterView"

    const-string v3, "getSub0SignalId,stat_sys_signal_null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->convertSignalNullIconIdToCT(I)I

    move-result v2

    goto/16 :goto_0

    .line 426
    :sswitch_data_0
    .sparse-switch
        0x7f020193 -> :sswitch_0
        0x7f0201ba -> :sswitch_6
        0x7f0201d5 -> :sswitch_1
        0x7f0201fc -> :sswitch_7
        0x7f02021b -> :sswitch_2
        0x7f020242 -> :sswitch_8
        0x7f020261 -> :sswitch_3
        0x7f020288 -> :sswitch_9
        0x7f0202a7 -> :sswitch_4
        0x7f0202ce -> :sswitch_a
        0x7f0202e9 -> :sswitch_5
        0x7f0202fc -> :sswitch_b
        0x7f020319 -> :sswitch_c
    .end sparse-switch
.end method

.method private getSub1SignalId(IZ)I
    .locals 6
    .parameter "originalId"
    .parameter "isRoam"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 833
    sparse-switch p1, :sswitch_data_0

    .line 885
    .end local p1
    :goto_0
    return p1

    .line 835
    .restart local p1
    :sswitch_0
    if-eqz p2, :cond_0

    .line 836
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v2

    goto :goto_0

    .line 837
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v2

    goto :goto_0

    .line 839
    :sswitch_1
    if-eqz p2, :cond_1

    .line 840
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v1

    goto :goto_0

    .line 841
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v1

    goto :goto_0

    .line 843
    :sswitch_2
    if-eqz p2, :cond_2

    .line 844
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v3

    goto :goto_0

    .line 845
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v3

    goto :goto_0

    .line 847
    :sswitch_3
    if-eqz p2, :cond_3

    .line 848
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v4

    goto :goto_0

    .line 849
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v4

    goto :goto_0

    .line 851
    :sswitch_4
    if-eqz p2, :cond_4

    .line 852
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v5

    goto :goto_0

    .line 853
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v2

    aget p1, v0, v5

    goto :goto_0

    .line 855
    :sswitch_5
    if-eqz p2, :cond_5

    .line 856
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v2

    const/4 v1, 0x5

    aget p1, v0, v1

    goto :goto_0

    .line 857
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v2

    const/4 v1, 0x5

    aget p1, v0, v1

    goto :goto_0

    .line 859
    :sswitch_6
    if-eqz p2, :cond_6

    .line 860
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v2

    goto :goto_0

    .line 861
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v2

    goto :goto_0

    .line 863
    :sswitch_7
    if-eqz p2, :cond_7

    .line 864
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v1

    goto :goto_0

    .line 865
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v1

    goto/16 :goto_0

    .line 867
    :sswitch_8
    if-eqz p2, :cond_8

    .line 868
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v3

    goto/16 :goto_0

    .line 869
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v3

    goto/16 :goto_0

    .line 871
    :sswitch_9
    if-eqz p2, :cond_9

    .line 872
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v4

    goto/16 :goto_0

    .line 873
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v4

    goto/16 :goto_0

    .line 875
    :sswitch_a
    if-eqz p2, :cond_a

    .line 876
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v5

    goto/16 :goto_0

    .line 877
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v1

    aget p1, v0, v5

    goto/16 :goto_0

    .line 879
    :sswitch_b
    if-eqz p2, :cond_b

    .line 880
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_R_CT:[[I

    aget-object v0, v0, v1

    const/4 v1, 0x5

    aget p1, v0, v1

    goto/16 :goto_0

    .line 881
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_G_CT:[[I

    aget-object v0, v0, v1

    const/4 v1, 0x5

    aget p1, v0, v1

    goto/16 :goto_0

    .line 883
    :sswitch_c
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->convertSignalNullIconIdToCT(I)I

    move-result p1

    goto/16 :goto_0

    .line 833
    :sswitch_data_0
    .sparse-switch
        0x7f020193 -> :sswitch_0
        0x7f0201ba -> :sswitch_6
        0x7f0201d5 -> :sswitch_1
        0x7f0201fc -> :sswitch_7
        0x7f02021b -> :sswitch_2
        0x7f020242 -> :sswitch_8
        0x7f020261 -> :sswitch_3
        0x7f020288 -> :sswitch_9
        0x7f0202a7 -> :sswitch_4
        0x7f0202ce -> :sswitch_a
        0x7f0202e9 -> :sswitch_5
        0x7f0202fc -> :sswitch_b
        0x7f020319 -> :sswitch_c
    .end sparse-switch
.end method

.method private hasEvdoSignal()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 351
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/MSimTelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 352
    .local v0, dataNetType:I
    const-string v2, "SFMSimSignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasEvdoSignal   dataNetType =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    .line 354
    :cond_0
    const/4 v1, 0x1

    .line 356
    :cond_1
    return v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    invoke-super {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->onAttachedToWindow()V

    .line 141
    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 143
    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 144
    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 145
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v3

    .line 146
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 147
    const v1, 0x7f070030

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 148
    const v1, 0x7f070026

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMAboth:Landroid/widget/LinearLayout;

    .line 149
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA3g:Landroid/widget/ImageView;

    .line 150
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA1x:Landroid/widget/ImageView;

    .line 151
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA1xOnly:Landroid/widget/ImageView;

    .line 152
    const v1, 0x7f070046

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalEvdoOnly:Landroid/widget/ImageView;

    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v4

    .line 156
    const v1, 0x7f070037

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    .line 157
    const v1, 0x7f07003a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimSlotSub2:Landroid/widget/ImageView;

    .line 159
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    const v1, 0x7f070047

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v4

    .line 160
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSpacer:Landroid/view/View;

    .line 161
    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.phone.COLOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->apply()V

    .line 168
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 173
    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 174
    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v1, v0, v2

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aput-object v1, v0, v3

    .line 178
    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSpacer:Landroid/view/View;

    .line 179
    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 180
    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMAboth:Landroid/widget/LinearLayout;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v1, v0, v3

    .line 182
    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA3g:Landroid/widget/ImageView;

    .line 183
    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA1x:Landroid/widget/ImageView;

    .line 184
    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA1xOnly:Landroid/widget/ImageView;

    .line 185
    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalEvdoOnly:Landroid/widget/ImageView;

    .line 186
    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    .line 187
    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimSlotSub2:Landroid/widget/ImageView;

    .line 188
    iput-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 190
    invoke-super {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->onDetachedFromWindow()V

    .line 191
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 1
    .parameter "is"
    .parameter "airplaneIconId"

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mIsAirplaneMode:Z

    .line 252
    iput p2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mAirplaneIconId:I

    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->applySubscription(I)V

    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->applySubscription(I)V

    .line 255
    return-void
.end method

.method public setMobileDataIndicators(Z[IIILjava/lang/String;Ljava/lang/String;IILandroid/telephony/ServiceState;ZZ)V
    .locals 9
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "typeIcon"
    .parameter "contentDescription"
    .parameter "typeContentDescription"
    .parameter "noSimIcon"
    .parameter "subscription"
    .parameter "simServiceState"
    .parameter "isRoam"
    .parameter "dataConnect"

    .prologue
    .line 206
    const-string v1, "SFMSimSignalClusterView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMobileDataIndicators subscription="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileVisible:Z

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->isSimRoam:[Z

    aput-boolean p10, v1, p8

    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->dataConnected:[Z

    aput-boolean p11, v1, p8

    .line 211
    const/4 v1, 0x1

    move/from16 v0, p8

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v1, v1, p8

    const/4 v2, 0x0

    const/4 v5, 0x0

    aget v5, p2, v5

    move/from16 v0, p10

    invoke-direct {p0, v5, v0}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->getSub1SignalId(IZ)I

    move-result v5

    aput v5, v1, v2

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v1, v1, p8

    const/4 v2, 0x1

    const/4 v5, 0x0

    aput v5, v1, v2

    .line 227
    :goto_0
    const-string v1, "SFMSimSignalClusterView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMobileDataIndicators mMobileStrengthId[0]="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v5, v5, p8

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mMobileStrengthId[1]="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v5, v5, p8

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileActivityId:[I

    move/from16 v0, p8

    invoke-direct {p0, p4, p3, v0}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->getAcitivyTypeIconId(III)I

    move-result v2

    aput v2, v1, p8

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aput-object p5, v1, p8

    .line 232
    iput-object p6, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimIconId:[I

    move/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->convertNoSimIconIdToCT(I)I

    move-result v2

    aput v2, v1, p8

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p9, v1, p8

    .line 236
    if-eqz p7, :cond_4

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMNoSimIconVisiable:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p8

    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalIconVisiable:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p8

    .line 244
    :goto_1
    const-string v1, "SFMSimSignalClusterView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetMobileDataIndicators MNoSimIconVisiable "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMNoSimIconVisiable:[Z

    aget-boolean v5, v5, p8

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    move/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->applySubscription(I)V

    .line 248
    return-void

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->hasEvdoSignal()Z

    move-result v3

    .line 217
    .local v3, hasEvdo:Z
    const/4 v1, 0x0

    aget v1, p2, v1

    if-nez v1, :cond_1

    const/4 v4, 0x1

    .line 218
    .local v4, isEvdoOnly:Z
    :goto_2
    if-eqz v4, :cond_2

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v1, v1, p8

    const/4 v2, 0x0

    const/4 v5, 0x0

    aput v5, v1, v2

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v7, v1, p8

    const/4 v8, 0x1

    const/4 v1, 0x1

    aget v2, p2, v1

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    move/from16 v6, p10

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->getSub0SignalId(IZZZZ)I

    .end local v3           #hasEvdo:Z
    move-result v1

    aput v1, v7, v8

    goto/16 :goto_0

    .line 217
    .end local v4           #isEvdoOnly:Z
    .restart local v3       #hasEvdo:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 222
    .restart local v4       #isEvdoOnly:Z
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v7, v1, p8

    const/4 v8, 0x0

    const/4 v1, 0x0

    aget v2, p2, v1

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v6, p10

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->getSub0SignalId(IZZZZ)I

    move-result v1

    aput v1, v7, v8

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileStrengthId:[[I

    aget-object v7, v1, p8

    const/4 v8, 0x1

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    aget v2, p2, v1

    const/4 v5, 0x1

    move-object v1, p0

    move/from16 v6, p10

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->getSub0SignalId(IZZZZ)I

    move-result v1

    :goto_3
    aput v1, v7, v8

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 240
    .end local v3           #hasEvdo:Z
    .end local v4           #isEvdoOnly:Z
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMNoSimIconVisiable:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p8

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalIconVisiable:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p8

    goto/16 :goto_1
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V
    .locals 3
    .parameter "nc"

    .prologue
    .line 133
    const-string v0, "SFMSimSignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSimNetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    .line 135
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "contentDescription"

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiVisible:Z

    .line 196
    iput p2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiStrengthId:I

    .line 197
    iput p3, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiActivityId:I

    .line 198
    iput-object p4, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->apply()V

    .line 200
    return-void
.end method
