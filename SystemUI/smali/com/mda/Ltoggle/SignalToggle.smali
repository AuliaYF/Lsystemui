.class public Lcom/mda/Ltoggle/SignalToggle;
.super Landroid/widget/ImageView;
.source "SignalToggle.java"


# instance fields
.field private mAlwaysUseCdmaRssi:Z

.field mInetCondition:I

.field private mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneState:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field private final sSignalImages:[[Landroid/graphics/drawable/Drawable;

.field private final sSignalImages_r:[[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v5, p0, Lcom/mda/Ltoggle/SignalToggle;->mPhoneState:I

    .line 30
    new-array v2, v7, [[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const-string v4, "ic_qs_signal_0"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "ic_qs_signal_1"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "ic_qs_signal_2"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "ic_qs_signal_3"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "ic_qs_signal_4"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v3, v2, v5

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const-string v4, "ic_qs_signal_0"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "ic_qs_signal_1"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "ic_qs_signal_2"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "ic_qs_signal_3"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "ic_qs_signal_4"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/mda/Ltoggle/SignalToggle;->sSignalImages:[[Landroid/graphics/drawable/Drawable;

    .line 42
    new-array v2, v7, [[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const-string v4, "ic_qs_signal_0"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "ic_qs_signal_1"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "ic_qs_signal_2"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "ic_qs_signal_3"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "ic_qs_signal_4"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v3, v2, v5

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const-string v4, "ic_qs_signal_0"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "ic_qs_signal_1"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "ic_qs_signal_2"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "ic_qs_signal_3"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "ic_qs_signal_4"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/mda/Ltoggle/SignalToggle;->sSignalImages_r:[[Landroid/graphics/drawable/Drawable;

    .line 59
    iput-boolean v6, p0, Lcom/mda/Ltoggle/SignalToggle;->mAlwaysUseCdmaRssi:Z

    .line 60
    const v2, 0x7f0201f6

    invoke-virtual {p0, v2}, Lcom/mda/Ltoggle/SignalToggle;->setImageResource(I)V

    .line 61
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/mda/Ltoggle/SignalToggle;->mPhone:Landroid/telephony/TelephonyManager;

    .line 62
    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v2, p0, Lcom/mda/Ltoggle/SignalToggle;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    new-instance v2, Lcom/mda/Ltoggle/SignalToggle$1;

    invoke-direct {v2, p0}, Lcom/mda/Ltoggle/SignalToggle$1;-><init>(Lcom/mda/Ltoggle/SignalToggle;)V

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    new-instance v2, Lcom/mda/Ltoggle/SignalToggle$2;

    invoke-direct {v2, p0, p1}, Lcom/mda/Ltoggle/SignalToggle$2;-><init>(Lcom/mda/Ltoggle/SignalToggle;Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/mda/Ltoggle/SignalToggle;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 101
    new-instance v2, Lcom/mda/Ltoggle/SignalToggle$3;

    invoke-direct {v2, p0}, Lcom/mda/Ltoggle/SignalToggle$3;-><init>(Lcom/mda/Ltoggle/SignalToggle;)V

    invoke-virtual {p0, v2}, Lcom/mda/Ltoggle/SignalToggle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance v1, Lcom/mda/Ltoggle/SignalToggle$4;

    invoke-direct {v1, p0}, Lcom/mda/Ltoggle/SignalToggle$4;-><init>(Lcom/mda/Ltoggle/SignalToggle;)V

    .line 143
    .local v1, mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    iget-object v2, p0, Lcom/mda/Ltoggle/SignalToggle;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const/16 v3, 0x1e1

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/mda/Ltoggle/SignalToggle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mda/Ltoggle/SignalToggle;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$100(Lcom/mda/Ltoggle/SignalToggle;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mda/Ltoggle/SignalToggle;->isCdma()Z

    move-result v0

    return v0
.end method

.method private getCdmaLevel()I
    .locals 5

    .prologue
    .line 236
    iget-object v4, p0, Lcom/mda/Ltoggle/SignalToggle;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 237
    .local v0, cdmaDbm:I
    iget-object v4, p0, Lcom/mda/Ltoggle/SignalToggle;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 238
    .local v1, cdmaEcio:I
    const/4 v2, 0x0

    .line 239
    .local v2, levelDbm:I
    const/4 v3, 0x0

    .line 241
    .local v3, levelEcio:I
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    .line 247
    :goto_0
    const/16 v4, -0x5a

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    .line 253
    :goto_1
    if-ge v2, v3, :cond_8

    .end local v2           #levelDbm:I
    :goto_2
    return v2

    .line 242
    .restart local v2       #levelDbm:I
    :cond_0
    const/16 v4, -0x55

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 243
    :cond_1
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 244
    :cond_2
    const/16 v4, -0x64

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 245
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 248
    :cond_4
    const/16 v4, -0x6e

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    .line 249
    :cond_5
    const/16 v4, -0x82

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    .line 250
    :cond_6
    const/16 v4, -0x96

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    .line 251
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v2, v3

    .line 253
    goto :goto_2
.end method

.method private getEvdoLevel()I
    .locals 5

    .prologue
    .line 216
    iget-object v4, p0, Lcom/mda/Ltoggle/SignalToggle;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 217
    .local v0, evdoDbm:I
    iget-object v4, p0, Lcom/mda/Ltoggle/SignalToggle;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 218
    .local v1, evdoSnr:I
    const/4 v2, 0x0

    .line 219
    .local v2, levelEvdoDbm:I
    const/4 v3, 0x0

    .line 221
    .local v3, levelEvdoSnr:I
    const/16 v4, -0x41

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    .line 227
    :goto_0
    const/4 v4, 0x7

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    .line 233
    :goto_1
    if-ge v2, v3, :cond_8

    .end local v2           #levelEvdoDbm:I
    :goto_2
    return v2

    .line 222
    .restart local v2       #levelEvdoDbm:I
    :cond_0
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 223
    :cond_1
    const/16 v4, -0x5a

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 224
    :cond_2
    const/16 v4, -0x69

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 225
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 228
    :cond_4
    const/4 v4, 0x5

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    .line 229
    :cond_5
    const/4 v4, 0x3

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    .line 230
    :cond_6
    const/4 v4, 0x1

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    .line 231
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v2, v3

    .line 233
    goto :goto_2
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 202
    iget-object v1, p0, Lcom/mda/Ltoggle/SignalToggle;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/mda/Ltoggle/SignalToggle;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 208
    :pswitch_0
    const/4 v0, 0x1

    .line 211
    :cond_0
    :pswitch_1
    return v0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mda/Ltoggle/SignalToggle;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mda/Ltoggle/SignalToggle;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEvdo()Z
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mda/Ltoggle/SignalToggle;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mda/Ltoggle/SignalToggle;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mda/Ltoggle/SignalToggle;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mda/Ltoggle/SignalToggle;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSignalStrength()V
    .locals 7

    .prologue
    .line 154
    const/4 v1, -0x1

    .line 158
    .local v1, iconLevel:I
    iget-object v4, p0, Lcom/mda/Ltoggle/SignalToggle;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/mda/Ltoggle/SignalToggle;->hasService()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/mda/Ltoggle/SignalToggle;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v4

    if-nez v4, :cond_2

    .line 159
    :cond_0
    iget-object v4, p0, Lcom/mda/Ltoggle/SignalToggle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 161
    const-string v4, "ic_signal_cellular_off"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 165
    .local v3, mPhoneSignalIconId:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, v3}, Lcom/mda/Ltoggle/SignalToggle;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :goto_1
    return-void

    .line 163
    .end local v3           #mPhoneSignalIconId:Landroid/graphics/drawable/Drawable;
    :cond_1
    const-string v4, "ic_signal_cellular_off"

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SignalToggle;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3       #mPhoneSignalIconId:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 169
    .end local v3           #mPhoneSignalIconId:Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-direct {p0}, Lcom/mda/Ltoggle/SignalToggle;->isCdma()Z

    move-result v4

    if-nez v4, :cond_9

    .line 170
    iget-object v4, p0, Lcom/mda/Ltoggle/SignalToggle;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 171
    .local v0, asu:I
    const/4 v4, 0x2

    if-le v0, v4, :cond_3

    const/16 v4, 0x63

    if-ne v0, v4, :cond_4

    :cond_3
    const/4 v1, 0x0

    .line 177
    :goto_2
    iget-object v4, p0, Lcom/mda/Ltoggle/SignalToggle;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 178
    iget-object v4, p0, Lcom/mda/Ltoggle/SignalToggle;->sSignalImages_r:[[Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/mda/Ltoggle/SignalToggle;->mInetCondition:I

    aget-object v2, v4, v5

    .line 192
    .end local v0           #asu:I
    .local v2, iconList:[Landroid/graphics/drawable/Drawable;
    :goto_3
    aget-object v3, v2, v1

    .line 193
    .restart local v3       #mPhoneSignalIconId:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3}, Lcom/mda/Ltoggle/SignalToggle;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 172
    .end local v2           #iconList:[Landroid/graphics/drawable/Drawable;
    .end local v3           #mPhoneSignalIconId:Landroid/graphics/drawable/Drawable;
    .restart local v0       #asu:I
    :cond_4
    const/16 v4, 0xc

    if-lt v0, v4, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    .line 173
    :cond_5
    const/16 v4, 0x8

    if-lt v0, v4, :cond_6

    const/4 v1, 0x3

    goto :goto_2

    .line 174
    :cond_6
    const/4 v4, 0x5

    if-lt v0, v4, :cond_7

    const/4 v1, 0x2

    goto :goto_2

    .line 175
    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    .line 180
    :cond_8
    iget-object v4, p0, Lcom/mda/Ltoggle/SignalToggle;->sSignalImages:[[Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/mda/Ltoggle/SignalToggle;->mInetCondition:I

    aget-object v2, v4, v5

    .restart local v2       #iconList:[Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 183
    .end local v0           #asu:I
    .end local v2           #iconList:[Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v4, p0, Lcom/mda/Ltoggle/SignalToggle;->sSignalImages:[[Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/mda/Ltoggle/SignalToggle;->mInetCondition:I

    aget-object v2, v4, v5

    .line 185
    .restart local v2       #iconList:[Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/mda/Ltoggle/SignalToggle;->mPhoneState:I

    if-nez v4, :cond_a

    invoke-direct {p0}, Lcom/mda/Ltoggle/SignalToggle;->isEvdo()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/mda/Ltoggle/SignalToggle;->mAlwaysUseCdmaRssi:Z

    if-nez v4, :cond_a

    .line 187
    invoke-direct {p0}, Lcom/mda/Ltoggle/SignalToggle;->getEvdoLevel()I

    move-result v1

    goto :goto_3

    .line 189
    :cond_a
    invoke-direct {p0}, Lcom/mda/Ltoggle/SignalToggle;->getCdmaLevel()I

    move-result v1

    goto :goto_3
.end method


# virtual methods
.method public setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "mDrawableName"

    .prologue
    .line 265
    const-string v5, "com.android.systemui"

    .line 266
    .local v5, packName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 267
    .local v2, mDrawableResID:I
    const/4 v4, 0x0

    .line 269
    .local v4, myDrawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/mda/Ltoggle/SignalToggle;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 270
    .local v3, manager:Landroid/content/pm/PackageManager;
    const-string v6, "com.android.systemui"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 272
    .local v1, mApk1Resources:Landroid/content/res/Resources;
    const-string v6, "drawable"

    const-string v7, "com.android.systemui"

    invoke-virtual {v1, p1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 274
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 279
    .end local v1           #mApk1Resources:Landroid/content/res/Resources;
    .end local v3           #manager:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v4

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
