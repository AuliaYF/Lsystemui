.class public Lcom/android/systemui/statusbar/MSimSignalClusterView;
.super Landroid/widget/LinearLayout;
.source "MSimSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mDataActResourceId:[I

.field private mDataActivity:[Landroid/widget/ImageView;

.field private mDataActivityId:[I

.field private mDataGroup:[Landroid/view/ViewGroup;

.field private mDataGroupResourceId:[I

.field private mDataVisible:[Z

.field private mIsAirplaneMode:Z

.field mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

.field mMobile:[Landroid/widget/ImageView;

.field private mMobileActResourceId:[I

.field mMobileActivity:[Landroid/widget/ImageView;

.field private mMobileActivityId:[I

.field private mMobileCdma1x:Landroid/widget/ImageView;

.field private mMobileCdma1xId:I

.field private mMobileCdma1xOnly:Landroid/widget/ImageView;

.field private mMobileCdma1xOnlyId:I

.field private mMobileCdma1xOnlyVisible:Z

.field private mMobileCdma3g:Landroid/widget/ImageView;

.field private mMobileCdma3gId:I

.field private mMobileCdmaGroup:Landroid/view/ViewGroup;

.field private mMobileCdmaVisible:Z

.field private mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

.field private mMobileDataVoiceGroupResourceId:[I

.field private mMobileDataVoiceVisible:[Z

.field private mMobileDescription:[Ljava/lang/String;

.field mMobileGroup:[Landroid/view/ViewGroup;

.field private mMobileGroupResourceId:[I

.field private mMobileResourceId:[I

.field private mMobileSignalData:[Landroid/widget/ImageView;

.field private mMobileSignalDataId:[I

.field private mMobileSignalDataResourceId:[I

.field private mMobileSignalVoice:[Landroid/widget/ImageView;

.field private mMobileSignalVoiceId:[I

.field private mMobileSignalVoiceResourceId:[I

.field private mMobileStrengthId:[I

.field mMobileType:[Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:[I

.field private mMobileTypeResourceId:[I

.field private mMobileVisible:Z

.field private mNoSimIconId:[I

.field mNoSimSlot:[Landroid/widget/ImageView;

.field private mNoSimSlotResourceId:[I

.field private final mNumPhones:I

.field private mShowTwoBars:[I

.field private mSpacer:Landroid/view/View;

.field private mStyle:I

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
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    .line 47
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    .line 48
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    .line 49
    iput v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DATA_VOICE:I

    .line 51
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    .line 56
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    .line 57
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    .line 58
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    .line 64
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    .line 76
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 78
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    .line 79
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xId:I

    .line 80
    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    .line 100
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    .line 102
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    .line 104
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActResourceId:[I

    .line 106
    new-array v1, v3, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeResourceId:[I

    .line 108
    new-array v1, v3, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlotResourceId:[I

    .line 109
    new-array v1, v3, [I

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroupResourceId:[I

    .line 111
    new-array v1, v3, [I

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActResourceId:[I

    .line 113
    new-array v1, v3, [I

    fill-array-data v1, :array_7

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroupResourceId:[I

    .line 115
    new-array v1, v3, [I

    fill-array-data v1, :array_8

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataResourceId:[I

    .line 117
    new-array v1, v3, [I

    fill-array-data v1, :array_9

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceResourceId:[I

    .line 119
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    .line 131
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    .line 132
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    .line 133
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    .line 134
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    .line 135
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    .line 136
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    .line 137
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    .line 138
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    .line 139
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    .line 140
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    .line 141
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    .line 142
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    .line 143
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    .line 144
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    .line 145
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    .line 146
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    .line 147
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    .line 148
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    .line 149
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    .line 150
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v1, v0

    .line 153
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput v2, v1, v0

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput v2, v1, v0

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aput v2, v1, v0

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aput-boolean v2, v1, v0

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v2, v1, v0

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aput v2, v1, v0

    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    aput v2, v1, v0

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    aput v2, v1, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mShowTwoBars:[I

    .line 167
    return-void

    .line 100
    :array_0
    .array-data 0x4
        0x25t 0x0t 0x7t 0x7ft
        0x33t 0x0t 0x7t 0x7ft
        0x3dt 0x0t 0x7t 0x7ft
    .end array-data

    .line 102
    :array_1
    .array-data 0x4
        0x2dt 0x0t 0x7t 0x7ft
        0x37t 0x0t 0x7t 0x7ft
        0x41t 0x0t 0x7t 0x7ft
    .end array-data

    .line 104
    :array_2
    .array-data 0x4
        0x2ft 0x0t 0x7t 0x7ft
        0x39t 0x0t 0x7t 0x7ft
        0x43t 0x0t 0x7t 0x7ft
    .end array-data

    .line 106
    :array_3
    .array-data 0x4
        0x2et 0x0t 0x7t 0x7ft
        0x38t 0x0t 0x7t 0x7ft
        0x42t 0x0t 0x7t 0x7ft
    .end array-data

    .line 108
    :array_4
    .array-data 0x4
        0x30t 0x0t 0x7t 0x7ft
        0x3at 0x0t 0x7t 0x7ft
        0x44t 0x0t 0x7t 0x7ft
    .end array-data

    .line 109
    :array_5
    .array-data 0x4
        0x23t 0x0t 0x7t 0x7ft
        0x31t 0x0t 0x7t 0x7ft
        0x3bt 0x0t 0x7t 0x7ft
    .end array-data

    .line 111
    :array_6
    .array-data 0x4
        0x24t 0x0t 0x7t 0x7ft
        0x32t 0x0t 0x7t 0x7ft
        0x3ct 0x0t 0x7t 0x7ft
    .end array-data

    .line 113
    :array_7
    .array-data 0x4
        0x2at 0x0t 0x7t 0x7ft
        0x34t 0x0t 0x7t 0x7ft
        0x3et 0x0t 0x7t 0x7ft
    .end array-data

    .line 115
    :array_8
    .array-data 0x4
        0x2bt 0x0t 0x7t 0x7ft
        0x35t 0x0t 0x7t 0x7ft
        0x3ft 0x0t 0x7t 0x7ft
    .end array-data

    .line 117
    :array_9
    .array-data 0x4
        0x2ct 0x0t 0x7t 0x7ft
        0x36t 0x0t 0x7t 0x7ft
        0x40t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private applySubscription(I)V
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_4

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 352
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_5

    .line 353
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateMobile(I)V

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateCdma()V

    .line 355
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateData(I)V

    .line 356
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->updateDataVoice(I)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_6

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    :goto_3
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-nez v0, :cond_8

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v3, v0, p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    :goto_5
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v0, v0, p1

    if-eqz v0, :cond_9

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    :cond_2
    :goto_6
    if-nez p1, :cond_0

    .line 395
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v0, v0, p1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-eqz v0, :cond_a

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 345
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 359
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 369
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move v0, v2

    .line 378
    goto :goto_4

    .line 381
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 389
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 400
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private getMobileCdma3gId(I)I
    .locals 1
    .parameter "icon"

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, returnVal:I
    sparse-switch p1, :sswitch_data_0

    .line 571
    :goto_0
    return v0

    .line 539
    :sswitch_0
    const v0, 0x7f0201a0

    .line 540
    goto :goto_0

    .line 542
    :sswitch_1
    const v0, 0x7f0201e2

    .line 543
    goto :goto_0

    .line 545
    :sswitch_2
    const v0, 0x7f020228

    .line 546
    goto :goto_0

    .line 548
    :sswitch_3
    const v0, 0x7f02026e

    .line 549
    goto :goto_0

    .line 551
    :sswitch_4
    const v0, 0x7f0202b4

    .line 552
    goto :goto_0

    .line 554
    :sswitch_5
    const v0, 0x7f0201a7

    .line 555
    goto :goto_0

    .line 557
    :sswitch_6
    const v0, 0x7f0201e9

    .line 558
    goto :goto_0

    .line 560
    :sswitch_7
    const v0, 0x7f02022f

    .line 561
    goto :goto_0

    .line 563
    :sswitch_8
    const v0, 0x7f020275

    .line 564
    goto :goto_0

    .line 566
    :sswitch_9
    const v0, 0x7f0202bb

    .line 567
    goto :goto_0

    .line 537
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
    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, returnVal:I
    sparse-switch p1, :sswitch_data_0

    .line 532
    :goto_0
    return v0

    .line 491
    :sswitch_0
    const v0, 0x7f0201cb

    .line 492
    goto :goto_0

    .line 495
    :sswitch_1
    const v0, 0x7f02020d

    .line 496
    goto :goto_0

    .line 499
    :sswitch_2
    const v0, 0x7f020253

    .line 500
    goto :goto_0

    .line 503
    :sswitch_3
    const v0, 0x7f020299

    .line 504
    goto :goto_0

    .line 507
    :sswitch_4
    const v0, 0x7f0202df

    .line 508
    goto :goto_0

    .line 511
    :sswitch_5
    const v0, 0x7f0201cc

    .line 512
    goto :goto_0

    .line 515
    :sswitch_6
    const v0, 0x7f02020e

    .line 516
    goto :goto_0

    .line 519
    :sswitch_7
    const v0, 0x7f020254

    .line 520
    goto :goto_0

    .line 523
    :sswitch_8
    const v0, 0x7f02029a

    .line 524
    goto :goto_0

    .line 527
    :sswitch_9
    const v0, 0x7f0202e0

    .line 528
    goto :goto_0

    .line 488
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
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 483
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, v0

    const v2, 0x7f0200ff

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private show1xOnly()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 472
    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v2, v2, v1

    const v3, 0x7f0200f0

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v2, v2, v1

    const v3, 0x7f0200f7

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private showBoth3gAnd1x()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 466
    iget v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v2, v2, v1

    const v3, 0x7f0200f1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v2, v2, v1

    const v3, 0x7f0200f8

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private showBothDataAndVoice(I)Z
    .locals 3
    .parameter "sub"

    .prologue
    const/4 v0, 0x0

    .line 451
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mShowTwoBars:[I

    aget v1, v1, p1

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, p1

    const v2, 0x7f0200f1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, p1

    const v2, 0x7f0200f2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, p1

    const v2, 0x7f0200f8

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, p1

    const v2, 0x7f0200f9

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showMobileActivity()Z
    .locals 2

    .prologue
    .line 478
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

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

    .line 415
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    :goto_1
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateData(I)V
    .locals 2
    .parameter "sub"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDataVoice(I)V
    .locals 2
    .parameter "sub"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMobile(I)V
    .locals 3
    .parameter "sub"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 178
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 215
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 216
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 217
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    .line 218
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 219
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 226
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivity:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalData:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoice:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    .line 232
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3g:Landroid/widget/ImageView;

    .line 233
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1x:Landroid/widget/ImageView;

    .line 234
    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnly:Landroid/widget/ImageView;

    .line 236
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 237
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 1
    .parameter "is"
    .parameter "airplaneIconId"

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    .line 315
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    .line 317
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->applySubscription(I)V

    .line 318
    return-void
.end method

.method public setMobileDataIndicators(Z[IIILjava/lang/String;Ljava/lang/String;IILandroid/telephony/ServiceState;ZZ)V
    .locals 4
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "typeIcon"
    .parameter "contentDescription"
    .parameter "typeContentDescription"
    .parameter "noSimIcon"
    .parameter "subscription"
    .parameter "simServiceState"
    .parameter "isRoaming"
    .parameter "dataConnected"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:Z

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v3, p2, v2

    aput v3, v0, p8

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput p4, v0, p8

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput p3, v0, p8

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aput-object p5, v0, p8

    .line 260
    iput-object p6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:[I

    aput p7, v0, p8

    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->showMobileActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aput v2, v0, p8

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    aput-boolean v2, v0, p8

    .line 272
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    if-ne v0, v1, :cond_6

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->showBoth3gAnd1x()Z

    move-result v0

    if-nez v0, :cond_0

    aget v0, p2, v2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getMobileCdma3gId(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 275
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v0, v2

    .line 278
    aget v0, p2, v2

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xId:I

    .line 279
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getMobileCdma3gId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma3gId:I

    .line 309
    :goto_1
    invoke-direct {p0, p8}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->applySubscription(I)V

    .line 310
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput v2, v0, p8

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataActivityId:[I

    aput p3, v0, p8

    .line 269
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataVisible:[Z

    if-eqz p3, :cond_2

    move v0, v1

    :goto_2
    aput-boolean v0, v3, p8

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 280
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->show1xOnly()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 282
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 283
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v0, v2

    .line 286
    aget v0, p2, v2

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyId:I

    goto :goto_1

    .line 288
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 289
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    goto :goto_1

    .line 291
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_9

    .line 292
    invoke-direct {p0, p8}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->showBothDataAndVoice(I)Z

    move-result v0

    if-nez v0, :cond_7

    aget v0, p2, v2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getMobileVoiceId(I)I

    move-result v0

    if-eqz v0, :cond_8

    .line 294
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v0, p8

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v1, v0, p8

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    aget v1, p2, v2

    aput v1, v0, p8

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalVoiceId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileSignalDataId:[I

    aget v1, v1, p8

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->getMobileVoiceId(I)I

    move-result v1

    aput v1, v0, p8

    goto :goto_1

    .line 300
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v2, v0, p8

    goto :goto_1

    .line 303
    :cond_9
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdmaVisible:Z

    .line 304
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileCdma1xOnlyVisible:Z

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataVoiceVisible:[Z

    aput-boolean v2, v0, p8

    goto :goto_1
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V
    .locals 0
    .parameter "nc"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    .line 172
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 1
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "contentDescription"

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    .line 243
    iput p3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    .line 244
    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    .line 245
    iput-object p4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 247
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->applySubscription(I)V

    .line 248
    return-void
.end method
