.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mDataActivity:Landroid/widget/ImageView;

.field private mDataActivityId:I

.field private mDataGroup:Landroid/view/ViewGroup;

.field private mDataVisible:Z

.field private mIsAirplaneMode:Z

.field mMobile:Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:I

.field private mMobileCdma1x:Landroid/widget/ImageView;

.field private mMobileCdma1xId:I

.field private mMobileCdma1xOnly:Landroid/widget/ImageView;

.field private mMobileCdma1xOnlyId:I

.field private mMobileCdma1xOnlyVisible:Z

.field private mMobileCdma3g:Landroid/widget/ImageView;

.field private mMobileCdma3gId:I

.field private mMobileCdmaGroup:Landroid/view/ViewGroup;

.field private mMobileCdmaVisible:Z

.field private mMobileDataVoiceGroup:Landroid/view/ViewGroup;

.field private mMobileDataVoiceVisible:Z

.field private mMobileDescription:Ljava/lang/String;

.field mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileSignalData:Landroid/widget/ImageView;

.field private mMobileSignalDataId:I

.field private mMobileSignalVoice:Landroid/widget/ImageView;

.field private mMobileSignalVoiceId:I

.field private mMobileStrengthId:I

.field mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNoSimIconId:I

.field mNoSimSlot:Landroid/widget/ImageView;

.field private mShowTwoBars:[I

.field mSpacer:Landroid/view/View;

.field private mStyle:I

.field mWifi:Landroid/widget/ImageView;

.field private mWifiActivity:Landroid/widget/ImageView;

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
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_DATA_VOICE:I

    .line 46
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    .line 51
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 52
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 53
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 55
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 56
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 57
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    .line 60
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 62
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma3gId:I

    .line 63
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xId:I

    .line 64
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyId:I

    .line 69
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    .line 70
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalDataId:I

    .line 71
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalVoiceId:I

    .line 76
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataVisible:Z

    .line 77
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataActivityId:I

    .line 80
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 81
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mShowTwoBars:[I

    .line 103
    return-void
.end method

.method private apply()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_4

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateMobile()V

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateCdma()V

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateData()V

    .line 303
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateDataVoice()V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_5

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    if-eqz v0, :cond_6

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 332
    :goto_4
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    if-nez v0, :cond_8

    .line 333
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    :goto_6
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    if-eqz v0, :cond_0

    .line 340
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    if-eqz v0, :cond_9

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 324
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_7
    move v0, v2

    .line 333
    goto :goto_5

    .line 336
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 344
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private getMobileCdma3gId(I)I
    .locals 1
    .parameter "icon"

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, returnVal:I
    sparse-switch p1, :sswitch_data_0

    .line 515
    :goto_0
    return v0

    .line 483
    :sswitch_0
    const v0, 0x7f0201a0

    .line 484
    goto :goto_0

    .line 486
    :sswitch_1
    const v0, 0x7f0201e2

    .line 487
    goto :goto_0

    .line 489
    :sswitch_2
    const v0, 0x7f020228

    .line 490
    goto :goto_0

    .line 492
    :sswitch_3
    const v0, 0x7f02026e

    .line 493
    goto :goto_0

    .line 495
    :sswitch_4
    const v0, 0x7f0202b4

    .line 496
    goto :goto_0

    .line 498
    :sswitch_5
    const v0, 0x7f0201a7

    .line 499
    goto :goto_0

    .line 501
    :sswitch_6
    const v0, 0x7f0201e9

    .line 502
    goto :goto_0

    .line 504
    :sswitch_7
    const v0, 0x7f02022f

    .line 505
    goto :goto_0

    .line 507
    :sswitch_8
    const v0, 0x7f020275

    .line 508
    goto :goto_0

    .line 510
    :sswitch_9
    const v0, 0x7f0202bb

    .line 511
    goto :goto_0

    .line 481
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020194 -> :sswitch_0
        0x7f020195 -> :sswitch_5
        0x7f0201d6 -> :sswitch_1
        0x7f0201d7 -> :sswitch_6
        0x7f02021c -> :sswitch_2
        0x7f02021d -> :sswitch_7
        0x7f020262 -> :sswitch_3
        0x7f020263 -> :sswitch_8
        0x7f0202a8 -> :sswitch_4
        0x7f0202a9 -> :sswitch_9
    .end sparse-switch
.end method

.method private getMobileVoiceId(I)I
    .locals 1
    .parameter "icon"

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, returnVal:I
    sparse-switch p1, :sswitch_data_0

    .line 476
    :goto_0
    return v0

    .line 435
    :sswitch_0
    const v0, 0x7f0201cb

    .line 436
    goto :goto_0

    .line 439
    :sswitch_1
    const v0, 0x7f02020d

    .line 440
    goto :goto_0

    .line 443
    :sswitch_2
    const v0, 0x7f020253

    .line 444
    goto :goto_0

    .line 447
    :sswitch_3
    const v0, 0x7f020299

    .line 448
    goto :goto_0

    .line 451
    :sswitch_4
    const v0, 0x7f0202df

    .line 452
    goto :goto_0

    .line 455
    :sswitch_5
    const v0, 0x7f0201cc

    .line 456
    goto :goto_0

    .line 459
    :sswitch_6
    const v0, 0x7f02020e

    .line 460
    goto :goto_0

    .line 463
    :sswitch_7
    const v0, 0x7f020254

    .line 464
    goto :goto_0

    .line 467
    :sswitch_8
    const v0, 0x7f02029a

    .line 468
    goto :goto_0

    .line 471
    :sswitch_9
    const v0, 0x7f0202e0

    .line 472
    goto :goto_0

    .line 432
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0201a0 -> :sswitch_0
        0x7f0201a7 -> :sswitch_5
        0x7f0201ac -> :sswitch_0
        0x7f0201b2 -> :sswitch_5
        0x7f0201e2 -> :sswitch_1
        0x7f0201e9 -> :sswitch_6
        0x7f0201ee -> :sswitch_1
        0x7f0201f4 -> :sswitch_6
        0x7f020228 -> :sswitch_2
        0x7f02022f -> :sswitch_7
        0x7f020234 -> :sswitch_2
        0x7f02023a -> :sswitch_7
        0x7f02026e -> :sswitch_3
        0x7f020275 -> :sswitch_8
        0x7f02027a -> :sswitch_3
        0x7f020280 -> :sswitch_8
        0x7f0202b4 -> :sswitch_4
        0x7f0202bb -> :sswitch_9
        0x7f0202c0 -> :sswitch_4
        0x7f0202c6 -> :sswitch_9
    .end sparse-switch
.end method

.method private isRoaming()Z
    .locals 2

    .prologue
    .line 427
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    const v1, 0x7f0200ff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private show1xOnly()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 416
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    const v2, 0x7f0200f0

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    const v2, 0x7f0200f7

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showBoth3gAnd1x()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 410
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    const v2, 0x7f0200f1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    const v2, 0x7f0200f8

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showBothDataAndVoice()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 395
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v0

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mShowTwoBars:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 403
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    const v2, 0x7f0200f1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    const v2, 0x7f0200f2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    const v2, 0x7f0200f8

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    const v2, 0x7f0200f9

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showMobileActivity()Z
    .locals 2

    .prologue
    .line 422
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCdma()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 359
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma3gId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    :goto_1
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateData()V
    .locals 2

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataVisible:Z

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDataVoice()V
    .locals 2

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalData:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalDataId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalVoice:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalVoiceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMobile()V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 356
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 114
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 115
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 118
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 120
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    .line 124
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    .line 126
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    .line 129
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceGroup:Landroid/view/ViewGroup;

    .line 130
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalData:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalVoice:Landroid/widget/ImageView;

    .line 134
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    .line 135
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataActivity:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 142
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 147
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 148
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 149
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 150
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 151
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 152
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 153
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 154
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    .line 155
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    .line 156
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    .line 157
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    .line 158
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataGroup:Landroid/view/ViewGroup;

    .line 159
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataActivity:Landroid/widget/ImageView;

    .line 160
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 161
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    .line 163
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceGroup:Landroid/view/ViewGroup;

    .line 164
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalData:Landroid/widget/ImageView;

    .line 165
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalVoice:Landroid/widget/ImageView;

    .line 167
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 168
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .parameter "layoutDirection"

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 278
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0
    .parameter "is"
    .parameter "airplaneIconId"

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 241
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 244
    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "typeIcon"
    .parameter "contentDescription"
    .parameter "typeContentDescription"
    .parameter "noSimIcon"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 186
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 187
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 188
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    .line 189
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    .line 190
    iput-object p6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 191
    iput p7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->showMobileActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataActivityId:I

    .line 195
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataVisible:Z

    .line 202
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    if-ne v0, v1, :cond_6

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->showBoth3gAnd1x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->getMobileCdma3gId(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 205
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 206
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 208
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xId:I

    .line 209
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->getMobileCdma3gId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma3gId:I

    .line 235
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 236
    return-void

    .line 197
    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 198
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataActivityId:I

    .line 199
    if-eqz p3, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataVisible:Z

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 210
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->show1xOnly()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 211
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 212
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 213
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 215
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyId:I

    goto :goto_1

    .line 217
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 218
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    goto :goto_1

    .line 220
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_9

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->showBothDataAndVoice()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->getMobileVoiceId(I)I

    move-result v0

    if-eqz v0, :cond_8

    .line 222
    :cond_7
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 223
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    .line 224
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalDataId:I

    .line 225
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalDataId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->getMobileVoiceId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalVoiceId:I

    goto :goto_1

    .line 227
    :cond_8
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    goto :goto_1

    .line 230
    :cond_9
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdmaVisible:Z

    .line 231
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 232
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataVoiceVisible:Z

    goto :goto_1
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "nc"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 108
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "contentDescription"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 174
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 175
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 176
    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 179
    return-void
.end method
