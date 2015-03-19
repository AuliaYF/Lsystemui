.class public Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;
.super Landroid/widget/LinearLayout;
.source "ExpandedShortCutView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$H;,
        Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;,
        Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;
    }
.end annotation


# static fields
.field private static USER_PREF_SUB_FIELDS:I


# instance fields
.field private final DATA_CONNECT_DOWN:I

.field private final DATA_CONNECT_ON:I

.field mAirplaneModeButton:Landroid/widget/Button;

.field private mAirplaneModeButtonListener:Landroid/view/View$OnClickListener;

.field mApnButton:Landroid/widget/Button;

.field private mApnButtonListener:Landroid/view/View$OnClickListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothButton:Landroid/widget/Button;

.field private mBluetoothButtonListener:Landroid/view/View$OnClickListener;

.field private mBluetoothButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field mBrightNessButton:Landroid/widget/Button;

.field private mBrightnessButtonListener:Landroid/view/View$OnClickListener;

.field private mConnectivityMgr:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mDolbyButton:Landroid/widget/Button;

.field private mDolbyButtonListener:Landroid/view/View$OnClickListener;

.field private mDsClient:Landroid/dolby/DsClient;

.field private mDsClientConnected:Z

.field private final mDsListener:Landroid/dolby/IDsClientEvents;

.field private mExpandedChangeObserver:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;

.field mGpsButton:Landroid/widget/Button;

.field private mGpsButtonListener:Landroid/view/View$OnClickListener;

.field private mGpsButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field mHandler:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$H;

.field mHotspotButton:Landroid/widget/Button;

.field private mHotspotButtonListener:Landroid/view/View$OnClickListener;

.field private mHotspotButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPPPDelayTimeup:Z

.field mPppButton:Landroid/widget/Button;

.field mPppButton1:Landroid/widget/Button;

.field mPppButton2:Landroid/widget/Button;

.field private mPppButtonListener:Landroid/view/View$OnClickListener;

.field private mPppButtonListener1:Landroid/view/View$OnClickListener;

.field private mPppButtonListener2:Landroid/view/View$OnClickListener;

.field mProfileButton:Landroid/widget/Button;

.field private mProfileButtonListener:Landroid/view/View$OnClickListener;

.field private mRingMode:I

.field mRoamingButton:Landroid/widget/Button;

.field private mRoamingButtonListener:Landroid/view/View$OnClickListener;

.field mRotateButton:Landroid/widget/Button;

.field private mRotateButtonListener:Landroid/view/View$OnClickListener;

.field private mRotateMode:Z

.field mScreenLockButton:Landroid/widget/Button;

.field private mScreenLockButtonListener:Landroid/view/View$OnClickListener;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mSilentButton:Landroid/widget/Button;

.field private mSilentButtonListener:Landroid/view/View$OnClickListener;

.field private mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

.field mSyncButton:Landroid/widget/Button;

.field private mSyncButtonListener:Landroid/view/View$OnClickListener;

.field private mSyncSwitch:Z

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field mWifiButton:Landroid/widget/Button;

.field private mWifiButtonListener:Landroid/view/View$OnClickListener;

.field private mWifiButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1367
    const/4 v0, 0x6

    sput v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->USER_PREF_SUB_FIELDS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->DATA_CONNECT_ON:I

    .line 121
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->DATA_CONNECT_DOWN:I

    .line 133
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPPPDelayTimeup:Z

    .line 165
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$1;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsListener:Landroid/dolby/IDsClientEvents;

    .line 367
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$2;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mProfileButtonListener:Landroid/view/View$OnClickListener;

    .line 384
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$3;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mScreenLockButtonListener:Landroid/view/View$OnClickListener;

    .line 396
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$4;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSyncButtonListener:Landroid/view/View$OnClickListener;

    .line 413
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$5;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 432
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$6;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiButtonListener:Landroid/view/View$OnClickListener;

    .line 457
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$7;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 476
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$8;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothButtonListener:Landroid/view/View$OnClickListener;

    .line 504
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSilentButtonListener:Landroid/view/View$OnClickListener;

    .line 537
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$10;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDolbyButtonListener:Landroid/view/View$OnClickListener;

    .line 567
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$11;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mGpsButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 584
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$12;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mGpsButtonListener:Landroid/view/View$OnClickListener;

    .line 599
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButtonListener:Landroid/view/View$OnClickListener;

    .line 646
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$14;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButtonListener1:Landroid/view/View$OnClickListener;

    .line 682
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$15;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButtonListener2:Landroid/view/View$OnClickListener;

    .line 707
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$16;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mApnButtonListener:Landroid/view/View$OnClickListener;

    .line 734
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$17;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$17;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRoamingButtonListener:Landroid/view/View$OnClickListener;

    .line 753
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$18;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mHotspotButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 773
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$19;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mHotspotButtonListener:Landroid/view/View$OnClickListener;

    .line 833
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBrightnessButtonListener:Landroid/view/View$OnClickListener;

    .line 910
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$21;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$21;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateButtonListener:Landroid/view/View$OnClickListener;

    .line 934
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$22;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAirplaneModeButtonListener:Landroid/view/View$OnClickListener;

    .line 1620
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$H;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$H;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mHandler:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$H;

    .line 142
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAudioManager:Landroid/media/AudioManager;

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->getRingMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRingMode:I

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateMode:Z

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    .line 152
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 154
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    .line 156
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 158
    new-instance v0, Landroid/dolby/DsClient;

    invoke-direct {v0}, Landroid/dolby/DsClient;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClient:Landroid/dolby/DsClient;

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClient:Landroid/dolby/DsClient;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsListener:Landroid/dolby/IDsClientEvents;

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->setEventListener(Landroid/dolby/IDsClientEvents;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClient:Landroid/dolby/DsClient;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->bindDsService(Landroid/content/Context;)Z

    .line 162
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSyncSwitch:Z

    .line 163
    return-void

    :cond_0
    move v0, v2

    .line 146
    goto :goto_0
.end method

.method private EnablePPP(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1623
    const-string v0, "ExpandedShortCutView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnablePPP ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton1:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1625
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton2:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1626
    return-void
.end method

.method private GetDataSubscription()I
    .locals 4

    .prologue
    .line 1228
    const/4 v0, 0x0

    .line 1230
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_data_call"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1238
    :goto_0
    const-string v1, "ExpandedShortCutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetDataSubscription():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    return v0

    .line 1233
    :catch_0
    move-exception v1

    .line 1234
    const-string v2, "ExpandedShortCutView"

    const-string v3, "Settings Exception Reading Multi Sim Data Subscription Value."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/dolby/DsClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClient:Landroid/dolby/DsClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClientConnected:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClientConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->isForbitGsm(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPPPDelayTimeup:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->EnablePPP(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->setActivppp(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->getBrightness()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->getBrightnessMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateMode:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateMode:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->sendAirplaneModeIntent(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->unbindDsClient()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->initBrightButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateDolbyStateUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRingMode:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRingMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->getRingMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDolbyButton:Landroid/widget/Button;

    return-object v0
.end method

.method public static cardTypeOnSlot(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "slot"

    .prologue
    const/4 v0, 0x1

    .line 1378
    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 1379
    .local v0, cardIndex:I
    :cond_0
    const/4 v1, -0x1

    .line 1388
    .local v1, cardType:I
    return v1
.end method

.method private checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mExpandedChangeObserver:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;

    if-nez v0, :cond_0

    .line 1549
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mExpandedChangeObserver:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;

    .line 1551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mExpandedChangeObserver:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;->startObserving()V

    .line 1553
    :cond_0
    return-void
.end method

.method private getBrightness()I
    .locals 7

    .prologue
    .line 801
    const/4 v0, 0x0

    .line 803
    .local v0, bright:I
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 805
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_0

    .line 806
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 807
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_brightness"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 813
    .end local v2           #power:Landroid/os/IPowerManager;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v0

    .line 810
    :catch_0
    move-exception v1

    .line 811
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ExpandedShortCutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightness() catch exception:\n "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBrightnessMode()I
    .locals 7

    .prologue
    .line 818
    const/4 v1, 0x1

    .line 820
    .local v1, mode:I
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 822
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_0

    .line 823
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 824
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 830
    .end local v2           #power:Landroid/os/IPowerManager;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v1

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ExpandedShortCutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightnessMode() catch exception:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getRingMode()I
    .locals 3

    .prologue
    .line 1513
    const/4 v0, 0x0

    .line 1514
    .local v0, ringMode:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 1515
    const/16 v0, 0x64

    .line 1521
    :goto_0
    return v0

    .line 1516
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1517
    const/16 v0, 0x66

    goto :goto_0

    .line 1519
    :cond_1
    const/16 v0, 0x65

    goto :goto_0
.end method

.method private initBrightButton()V
    .locals 5

    .prologue
    const/16 v4, 0x1e

    const/4 v3, 0x0

    .line 1525
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->getBrightnessMode()I

    move-result v0

    .line 1526
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->getBrightness()I

    move-result v1

    .line 1530
    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 1531
    const v0, 0x7f020028

    .line 1543
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBrightNessButton:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1545
    return-void

    .line 1533
    :cond_0
    if-gt v1, v4, :cond_1

    .line 1534
    const v0, 0x7f02002b

    goto :goto_0

    .line 1535
    :cond_1
    if-le v1, v4, :cond_2

    const/16 v0, 0xff

    if-ge v1, v0, :cond_2

    .line 1537
    const v0, 0x7f020029

    goto :goto_0

    .line 1539
    :cond_2
    const v0, 0x7f02002a

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 962
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 963
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isForbitGsm(I)I
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1246
    const-string v3, "persist.sys.only_gsm"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 1357
    :cond_0
    :goto_0
    return v1

    .line 1250
    :cond_1
    const-string v3, "persist.sys.sub.gsmdata"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 1251
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1252
    if-nez p1, :cond_7

    .line 1255
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->cardTypeOnSlot(Landroid/content/Context;I)I

    move-result v3

    .line 1256
    if-ne v3, v2, :cond_0

    .line 1259
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v8, :cond_2

    .line 1260
    const-string v1, "null"

    move v1, v0

    .line 1261
    goto :goto_0

    .line 1263
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1266
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v4, v2}, Landroid/telephony/MSimTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v8, :cond_3

    .line 1268
    const-string v1, "null"

    move v1, v0

    .line 1269
    goto :goto_0

    .line 1271
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v0, v2}, Landroid/telephony/MSimTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1274
    const-string v4, "ExpandedShortCutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " operator_sub0.len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,operator_sub0="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const-string v4, "ExpandedShortCutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " simoperator_sub0.len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,simoperator_sub0="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const-string v4, "460"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "455"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    move v0, v2

    .line 1283
    :goto_1
    const-string v4, "460"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "455"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    if-eqz v0, :cond_0

    move v1, v2

    .line 1287
    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 1280
    goto :goto_1

    .line 1293
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v8, :cond_8

    .line 1294
    const-string v1, "null"

    move v1, v0

    .line 1295
    goto/16 :goto_0

    .line 1297
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1300
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v4, v2}, Landroid/telephony/MSimTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v8, :cond_9

    .line 1302
    const-string v1, "null"

    move v1, v0

    .line 1303
    goto/16 :goto_0

    .line 1305
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v0, v2}, Landroid/telephony/MSimTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1308
    const-string v4, "ExpandedShortCutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " operator_sub1.len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,operator_sub1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const-string v4, "ExpandedShortCutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " simoperator_sub1.len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,simoperator_sub1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const-string v4, "460"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "455"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    move v0, v2

    .line 1318
    :goto_2
    const-string v4, "460"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "455"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_b
    if-eqz v0, :cond_0

    move v1, v2

    .line 1322
    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 1315
    goto :goto_2

    .line 1331
    :cond_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1334
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 1336
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 1337
    const-string v5, "ExpandedShortCutView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " operator.len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,operator="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const-string v5, "ExpandedShortCutView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " simoperator.len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,simoperator="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v8, :cond_f

    :cond_e
    move v1, v0

    .line 1343
    goto/16 :goto_0

    .line 1344
    :cond_f
    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1345
    invoke-virtual {v4, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1346
    const-string v4, "460"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "455"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    move v0, v2

    .line 1348
    :goto_3
    if-eqz v0, :cond_0

    const-string v0, "460"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "455"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_11
    move v1, v2

    .line 1352
    goto/16 :goto_0

    :cond_12
    move v0, v1

    .line 1346
    goto :goto_3
.end method

.method private isSubDataConnect(I)I
    .locals 7
    .parameter "subscription"

    .prologue
    const/4 v3, 0x1

    .line 1067
    const/4 v1, 0x0

    .line 1068
    .local v1, Data_val:I
    const/4 v0, 0x0

    .line 1070
    .local v0, Data_connect_on:Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->GetDataSubscription()I

    move-result v1

    .line 1072
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1074
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 1075
    const-string v4, "ExpandedShortCutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data_val=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Data_connect_on="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    if-ne v1, p1, :cond_0

    if-ne v0, v3, :cond_0

    .line 1078
    const/4 v3, 0x0

    .line 1080
    :cond_0
    return v3
.end method

.method private sendAirplaneModeIntent(Z)V
    .locals 2
    .parameter "isAirplaneModeOn"

    .prologue
    .line 968
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 969
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 970
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 971
    return-void
.end method

.method private setActivppp(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1128
    const-string v0, "ExpandedShortCutView"

    const-string v3, "setActivppp"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1132
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->isForbitGsm(I)I

    move-result v3

    .line 1133
    const/4 v4, 0x2

    if-ne v4, v3, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1138
    :cond_1
    if-ne v1, v3, :cond_2

    .line 1139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1143
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1144
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1148
    :cond_2
    if-nez p1, :cond_8

    .line 1150
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1152
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->isSubDataConnect(I)I

    move-result v3

    if-nez v3, :cond_3

    .line 1153
    const-string v1, "ExpandedShortCutView"

    const-string v3, "set sub1 =false"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.DATA_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1157
    const-string v1, "STATE_DATA_ENABLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1158
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1164
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->GetDataSubscription()I

    move-result v3

    if-eqz v3, :cond_5

    .line 1166
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$23;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$23;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;ILandroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1174
    :cond_4
    :goto_1
    if-ne v2, v1, :cond_0

    .line 1176
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.DATA_STATUS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1178
    const-string v2, "STATE_DATA_ENABLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1179
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1169
    :cond_5
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1170
    const-string v2, "ExpandedShortCutView"

    const-string v3, "set cdma =true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    move v2, v1

    .line 1172
    goto :goto_1

    .line 1185
    :cond_6
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_2
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_2

    .line 1191
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->isSubDataConnect(I)I

    move-result v3

    if-nez v3, :cond_9

    .line 1193
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1194
    const-string v0, "ExpandedShortCutView"

    const-string v1, "set sub2 =false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.DATA_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1197
    const-string v1, "STATE_DATA_ENABLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1198
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1203
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->GetDataSubscription()I

    move-result v3

    if-eq v1, v3, :cond_b

    .line 1206
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$24;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$24;-><init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;ILandroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1213
    :cond_a
    :goto_3
    if-ne v2, v1, :cond_0

    .line 1215
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.DATA_STATUS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1217
    const-string v2, "STATE_DATA_ENABLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1218
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1209
    :cond_b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1210
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    move v2, v1

    .line 1211
    goto :goto_3
.end method

.method private unbindDsClient()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClient:Landroid/dolby/DsClient;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClientConnected:Z

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClientConnected:Z

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClient:Landroid/dolby/DsClient;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->unBindDsService(Landroid/content/Context;)V

    .line 245
    :cond_0
    return-void
.end method

.method private updateDolbyStateUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 219
    const v1, 0x7f0200a7

    .line 220
    .local v1, iconId:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClient:Landroid/dolby/DsClient;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClientConnected:Z

    if-eqz v2, :cond_1

    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v2}, Landroid/dolby/DsClient;->getDsOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const v1, 0x7f020036

    .line 237
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDolbyButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 238
    return-void

    .line 226
    :cond_0
    const v1, 0x7f020035

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->unbindDsClient()V

    goto :goto_0

    .line 235
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const v1, 0x7f020035

    goto :goto_0
.end method


# virtual methods
.method public getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 3

    .prologue
    .line 254
    const-string v0, "ExpandedShortCutView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService mService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method public handleBroadCast(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v3, -0x1

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1661
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1662
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1663
    const-string v0, "wifi_state"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1665
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1666
    invoke-virtual {p0, v5, v5}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 1733
    :cond_0
    :goto_0
    return-void

    .line 1667
    :cond_1
    if-ne v0, v5, :cond_0

    .line 1668
    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto :goto_0

    .line 1670
    :cond_2
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1671
    const-string v0, "ExpandedShortCutView"

    const-string v1, "WIFI_AP_STATE_CHANGED_ACTION  "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const-string v0, "wifi_state"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1674
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1675
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto :goto_0

    .line 1676
    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1677
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto :goto_0

    .line 1679
    :cond_4
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1680
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x8000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1682
    const/16 v1, 0xc

    if-ne v1, v0, :cond_5

    .line 1683
    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto :goto_0

    .line 1684
    :cond_5
    const/16 v1, 0xa

    if-ne v1, v0, :cond_0

    .line 1685
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto :goto_0

    .line 1687
    :cond_6
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1688
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 1689
    if-eqz v0, :cond_7

    .line 1690
    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto :goto_0

    .line 1692
    :cond_7
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto :goto_0

    .line 1695
    :cond_8
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1696
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1699
    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto :goto_0

    .line 1701
    :cond_9
    invoke-virtual {p0, v6, v4}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto/16 :goto_0

    .line 1703
    :cond_a
    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1704
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 1705
    if-eqz v0, :cond_b

    .line 1706
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto/16 :goto_0

    .line 1708
    :cond_b
    invoke-virtual {p0, v4, v4}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto/16 :goto_0

    .line 1710
    :cond_c
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1712
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateSilentButton()V

    goto/16 :goto_0

    .line 1713
    :cond_e
    const-string v1, "com.android.phone.DATA_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "android.net.conn.SET_MOBILE_DATA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1720
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updatePppButton()V

    goto/16 :goto_0

    .line 1721
    :cond_10
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1722
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updatePppButton()V

    .line 1723
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButtonUseable()V

    .line 1724
    const-string v0, "state"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1725
    const-string v1, "ExpandedShortCutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_AIRPLANE_MODE_CHANGED : enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    if-eqz v0, :cond_11

    .line 1727
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto/16 :goto_0

    .line 1729
    :cond_11
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 359
    const-string v0, "ExpandedShortCutView"

    const-string v1, "onDetachedFromWindow(),release the Observer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mExpandedChangeObserver:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mExpandedChangeObserver:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;->stopObserving()V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mExpandedChangeObserver:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;

    .line 364
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 261
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 264
    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mScreenLockButton:Landroid/widget/Button;

    .line 265
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mScreenLockButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mScreenLockButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    const v1, 0x7f070013

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mProfileButton:Landroid/widget/Button;

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mProfileButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mProfileButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSyncButton:Landroid/widget/Button;

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSyncButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSyncButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSyncSwitch:Z

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 275
    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiButton:Landroid/widget/Button;

    .line 276
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 278
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 281
    const v1, 0x7f070009

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothButton:Landroid/widget/Button;

    .line 282
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 285
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 288
    const v1, 0x7f07000c

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSilentButton:Landroid/widget/Button;

    .line 289
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSilentButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSilentButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateSilentButton()V

    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSilentButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 293
    const v1, 0x7f07000d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDolbyButton:Landroid/widget/Button;

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDolbyButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDolbyButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateDolbyStateUI()V

    .line 298
    const v1, 0x7f07000a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mGpsButton:Landroid/widget/Button;

    .line 299
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mGpsButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mGpsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mGpsButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mGpsButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 303
    .local v0, isGpsEnabled:Z
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 306
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton:Landroid/widget/Button;

    .line 307
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    const v1, 0x7f07000f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton1:Landroid/widget/Button;

    .line 311
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButtonListener1:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton2:Landroid/widget/Button;

    .line 315
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton2:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButtonListener2:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updatePppButton()V

    .line 320
    const v1, 0x7f070018

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mApnButton:Landroid/widget/Button;

    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mApnButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mApnButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRoamingButton:Landroid/widget/Button;

    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRoamingButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRoamingButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mHotspotButton:Landroid/widget/Button;

    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mHotspotButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mHotspotButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mHotspotButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mHotspotButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 331
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 334
    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBrightNessButton:Landroid/widget/Button;

    .line 335
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBrightNessButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBrightnessButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->initBrightButton()V

    .line 339
    const v1, 0x7f070012

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateButton:Landroid/widget/Button;

    .line 340
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateMode:Z

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 344
    const v1, 0x7f070015

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAirplaneModeButton:Landroid/widget/Button;

    .line 345
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAirplaneModeButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAirplaneModeButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->isAirplaneModeOn()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButtonUseable()V

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->prepareShortCutButton()V

    .line 351
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->checkObserver(Landroid/content/Context;)V

    .line 353
    return-void
.end method

.method public prepareShortCutButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1637
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1642
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mApnButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1643
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAirplaneModeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mProfileButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1646
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mScreenLockButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1658
    :goto_0
    return-void

    .line 1649
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1651
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mApnButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1653
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAirplaneModeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1655
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mProfileButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mScreenLockButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 3
    .parameter "mPsB"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 250
    const-string v0, "ExpandedShortCutView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setService mService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public updateAirplaneButton()V
    .locals 2

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAirplaneModeButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1510
    return-void
.end method

.method updateButton(IZ)V
    .locals 4
    .parameter "buttonId"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 975
    const/4 v1, 0x0

    .line 976
    .local v1, icon:I
    if-eqz p2, :cond_0

    const v0, 0x7f020003

    .line 978
    .local v0, backgroundId:I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1049
    :pswitch_0
    const-string v2, "ExpandedShortCutView"

    const-string v3, "no button is clicked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :goto_1
    return-void

    .line 976
    .end local v0           #backgroundId:I
    :cond_0
    const v0, 0x7f020004

    goto :goto_0

    .line 980
    .restart local v0       #backgroundId:I
    :pswitch_1
    if-eqz p2, :cond_1

    const v1, 0x7f0200aa

    .line 981
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSyncButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 980
    :cond_1
    const v1, 0x7f0200a9

    goto :goto_2

    .line 984
    :pswitch_2
    if-eqz p2, :cond_2

    const v1, 0x7f0200bf

    .line 985
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 986
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 984
    :cond_2
    const v1, 0x7f0200be

    goto :goto_3

    .line 990
    :pswitch_3
    if-eqz p2, :cond_3

    const v1, 0x7f020026

    .line 992
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 994
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 990
    :cond_3
    const v1, 0x7f020025

    goto :goto_4

    .line 998
    :pswitch_4
    if-eqz p2, :cond_4

    const v1, 0x7f0200a7

    .line 999
    :goto_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSilentButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 998
    :cond_4
    const v1, 0x7f0200a6

    goto :goto_5

    .line 1004
    :pswitch_5
    if-eqz p2, :cond_5

    const v1, 0x7f020038

    .line 1005
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mGpsButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1006
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mGpsButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1004
    :cond_5
    const v1, 0x7f020037

    goto :goto_6

    .line 1010
    :pswitch_6
    if-eqz p2, :cond_6

    const v1, 0x7f02002f

    .line 1011
    :goto_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1012
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1010
    :cond_6
    const v1, 0x7f02002c

    goto :goto_7

    .line 1016
    :pswitch_7
    if-eqz p2, :cond_7

    const v1, 0x7f020030

    .line 1018
    :goto_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton1:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1019
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton1:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1016
    :cond_7
    const v1, 0x7f02002d

    goto :goto_8

    .line 1023
    :pswitch_8
    if-eqz p2, :cond_8

    const v1, 0x7f020031

    .line 1025
    :goto_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton2:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1026
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton2:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1023
    :cond_8
    const v1, 0x7f02002e

    goto :goto_9

    .line 1030
    :pswitch_9
    if-eqz p2, :cond_9

    const v1, 0x7f02009f

    .line 1031
    :goto_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1033
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1030
    :cond_9
    const v1, 0x7f02009e

    goto :goto_a

    .line 1037
    :pswitch_a
    if-eqz p2, :cond_a

    const v1, 0x7f020022

    .line 1039
    :goto_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAirplaneModeButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1041
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAirplaneModeButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1037
    :cond_a
    const v1, 0x7f020021

    goto :goto_b

    .line 1044
    :pswitch_b
    if-eqz p2, :cond_b

    const v1, 0x7f02003b

    .line 1045
    :goto_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mHotspotButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    .line 1044
    :cond_b
    const v1, 0x7f02003a

    goto :goto_c

    .line 978
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public updateButtonUseable()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1056
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mApnButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1064
    :goto_0
    return-void

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mApnButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public updatePppButton()V
    .locals 1

    .prologue
    .line 1392
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updatePppButtonForDualCard()V

    .line 1401
    :goto_0
    return-void

    .line 1399
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updatePppButtonForSingleCard()V

    goto :goto_0
.end method

.method public updatePppButtonForDualCard()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1405
    .line 1408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1413
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1414
    const-string v0, "ExpandedShortCutView"

    const-string v1, "updatePppButton isAirplaneModeOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    invoke-virtual {p0, v9, v7}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 1416
    invoke-virtual {p0, v10, v7}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton1:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton2:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->GetDataSubscription()I

    move-result v0

    .line 1423
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v2, v7}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v2

    .line 1424
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v3, v8}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v3

    .line 1425
    const-string v4, "ExpandedShortCutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePppButton Data_val="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "     bEnable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "     card1type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "     card2type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 1430
    invoke-virtual {p0, v9, v8}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 1431
    invoke-virtual {p0, v10, v7}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 1443
    :goto_1
    if-nez v2, :cond_4

    .line 1444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton1:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1448
    :goto_2
    if-nez v3, :cond_5

    .line 1449
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton2:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1453
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPPPDelayTimeup:Z

    if-nez v0, :cond_0

    .line 1454
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->EnablePPP(Z)V

    goto :goto_0

    .line 1432
    :cond_2
    if-eqz v1, :cond_3

    if-ne v0, v8, :cond_3

    if-eqz v3, :cond_3

    .line 1433
    const-string v0, "ExpandedShortCutView"

    const-string v1, "set sub2 enable in updatePppButtonForDualCard"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-virtual {p0, v9, v7}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 1436
    invoke-virtual {p0, v10, v8}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto :goto_1

    .line 1439
    :cond_3
    invoke-virtual {p0, v9, v7}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 1440
    invoke-virtual {p0, v10, v7}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto :goto_1

    .line 1446
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton1:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 1451
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton2:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3
.end method

.method public updatePppButtonForSingleCard()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 1462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 1463
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1464
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 1465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1488
    :goto_0
    return-void

    .line 1468
    :cond_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1469
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1, v2}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1470
    const-string v0, "ExpandedShortCutView"

    const-string v1, "hasicccard1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 1475
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1476
    const-string v0, "ExpandedShortCutView"

    const-string v1, "hasicccard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 1482
    :cond_2
    if-eqz v0, :cond_3

    .line 1483
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 1487
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 1485
    :cond_3
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    goto :goto_1
.end method

.method public updateSilentButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1491
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1493
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1495
    if-nez v0, :cond_0

    .line 1496
    const v0, 0x7f0200a6

    .line 1497
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSilentButton:Landroid/widget/Button;

    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1505
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSilentButton:Landroid/widget/Button;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1506
    return-void

    .line 1498
    :cond_0
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 1499
    const v0, 0x7f0200a8

    .line 1500
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSilentButton:Landroid/widget/Button;

    const v2, 0x7f0a0021

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1502
    :cond_1
    const v0, 0x7f0200a7

    .line 1503
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSilentButton:Landroid/widget/Button;

    const v2, 0x7f0a0020

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
