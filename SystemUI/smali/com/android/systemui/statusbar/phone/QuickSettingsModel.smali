.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.super Ljava/lang/Object;
.source "QuickSettingsModel.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;
.implements Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
.implements Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;
    }
.end annotation


# instance fields
.field private mAirplaneModeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

.field private mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBluetoothCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

.field private mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBrightnessCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private final mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

.field private mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

.field private mBrightnessTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBugreportCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private final mBugreportObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

.field private mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mBugreportTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field private final mHasMobileData:Z

.field private mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mImeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mLocationCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mLocationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private final mMediaRouter:Landroid/media/MediaRouter;

.field private final mNextAlarmObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

.field private mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field protected mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

.field private mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mRemoteDisplayCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private final mRemoteDisplayRouteCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;

.field private mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mRemoteDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mRotationLockCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

.field private mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mSettingsCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mSettingsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mSettingsTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mSslCaCertWarningCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mSslCaCertWarningState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mSslCaCertWarningTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mTimeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

.field private mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field protected final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

.field private mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    .line 245
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 249
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 253
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 257
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    .line 261
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 265
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    .line 269
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    .line 273
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    .line 277
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 280
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 281
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 285
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    .line 289
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    .line 293
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 297
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 301
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 306
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    .line 307
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    .line 308
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 324
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNextAlarmObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

    .line 325
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNextAlarmObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;->startObserving()V

    .line 326
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

    .line 327
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;->startObserving()V

    .line 328
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    .line 329
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;->startObserving()V

    .line 331
    const-string v2, "media_router"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMediaRouter:Landroid/media/MediaRouter;

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rebindMediaRouterAsCurrentUser()V

    .line 334
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayRouteCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;

    .line 336
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 338
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHasMobileData:Z

    .line 340
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 341
    .local v0, alarmIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateRemoteDisplays()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rebindMediaRouterAsCurrentUser()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->setAirplaneModeState(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayRouteCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/media/MediaRouter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMediaRouter:Landroid/media/MediaRouter;

    return-object v0
.end method

.method private static getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "resolver"
    .parameter "imm"
    .parameter
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p3, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v5, 0x0

    .line 787
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-object v5

    .line 788
    :cond_1
    const-string v6, "default_input_method"

    invoke-static {p1, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, currentInputMethodId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 791
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 792
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 793
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 794
    .local v3, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p0, v5, v6}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 798
    .local v4, summary:Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 794
    .end local v4           #summary:Ljava/lang/CharSequence;
    :cond_3
    const v5, 0x7f0a00c7

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private needsToShowImeSwitchOngoingNotification(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 14
    .parameter "imm"

    .prologue
    .line 731
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v5

    .line 732
    .local v5, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 733
    .local v0, N:I
    const/4 v12, 0x2

    if-le v0, v12, :cond_0

    const/4 v12, 0x1

    .line 771
    :goto_0
    return v12

    .line 734
    :cond_0
    const/4 v12, 0x1

    if-ge v0, v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    .line 735
    :cond_1
    const/4 v7, 0x0

    .line 736
    .local v7, nonAuxCount:I
    const/4 v1, 0x0

    .line 737
    .local v1, auxCount:I
    const/4 v8, 0x0

    .line 738
    .local v8, nonAuxSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 739
    .local v2, auxSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 740
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 741
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    const/4 v12, 0x1

    invoke-virtual {p1, v4, v12}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 743
    .local v11, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 744
    .local v10, subtypeCount:I
    if-nez v10, :cond_3

    .line 745
    add-int/lit8 v7, v7, 0x1

    .line 739
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 747
    :cond_3
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    if-ge v6, v10, :cond_2

    .line 748
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 749
    .local v9, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-nez v12, :cond_4

    .line 750
    add-int/lit8 v7, v7, 0x1

    .line 751
    move-object v8, v9

    .line 747
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 753
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 754
    move-object v2, v9

    goto :goto_3

    .line 759
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #j:I
    .end local v9           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10           #subtypeCount:I
    .end local v11           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_5
    const/4 v12, 0x1

    if-gt v7, v12, :cond_6

    const/4 v12, 0x1

    if-le v1, v12, :cond_7

    .line 760
    :cond_6
    const/4 v12, 0x1

    goto :goto_0

    .line 761
    :cond_7
    const/4 v12, 0x1

    if-ne v7, v12, :cond_a

    const/4 v12, 0x1

    if-ne v1, v12, :cond_a

    .line 762
    if-eqz v8, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_8
    const-string v12, "TrySuppressingImeSwitcher"

    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 767
    const/4 v12, 0x0

    goto :goto_0

    .line 769
    :cond_9
    const/4 v12, 0x1

    goto :goto_0

    .line 771
    :cond_a
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private rebindMediaRouterAsCurrentUser()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v1}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->rebindAsUser(I)V

    .line 692
    return-void
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 460
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 465
    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 461
    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 462
    .restart local v0       #length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 463
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    .line 469
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 474
    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 470
    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 471
    .restart local v0       #length:I
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private setAirplaneModeState(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 437
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 438
    return-void

    .line 431
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateRemoteDisplays()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x4

    .line 695
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4, v5}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 697
    .local v0, connectedRoute:Landroid/media/MediaRouter$RouteInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 700
    .local v2, enabled:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 701
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v1

    .line 709
    .local v1, connecting:Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean v2, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 710
    if-eqz v0, :cond_3

    .line 711
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 712
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz v1, :cond_2

    const v3, 0x7f02005c

    :goto_2
    iput v3, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 719
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 720
    return-void

    .line 697
    .end local v1           #connecting:Z
    .end local v2           #enabled:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 703
    .restart local v2       #enabled:Z
    :cond_1
    const/4 v0, 0x0

    .line 704
    const/4 v1, 0x0

    .line 705
    .restart local v1       #connecting:Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4, v5, v3}, Landroid/media/MediaRouter;->isRouteAvailable(II)Z

    move-result v2

    goto :goto_1

    .line 712
    :cond_2
    const v3, 0x7f02005b

    goto :goto_2

    .line 715
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00d6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 717
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v4, 0x7f02005a

    iput v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    goto :goto_3
.end method


# virtual methods
.method addAirplaneModeTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 4
    .parameter "view"
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 411
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 412
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 423
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 425
    .local v0, airplaneMode:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onAirplaneModeChanged(Z)V

    .line 426
    return-void
.end method

.method addAlarmTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 2
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 389
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 391
    return-void
.end method

.method addBatteryTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 609
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 610
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 611
    return-void
.end method

.method addBluetoothTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 4
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 562
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 564
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 565
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 566
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    .line 568
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V

    .line 569
    return-void

    .line 566
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method addBrightnessTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 837
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 838
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 839
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBrightnessLevelChanged()V

    .line 840
    return-void
.end method

.method addBugreportTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 652
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 653
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBugreportChanged()V

    .line 654
    return-void
.end method

.method addLocationTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 626
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 627
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 628
    return-void
.end method

.method addRSSITile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 513
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 515
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->dataSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onMobileDataSwitchChanged()V

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    goto :goto_0
.end method

.method addRemoteDisplayTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 671
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 672
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 673
    .local v0, count:[I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnPrepareListener(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;)V

    .line 687
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateRemoteDisplays()V

    .line 688
    return-void
.end method

.method addRotationLockTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .parameter "view"
    .parameter "rotationLockController"
    .parameter "cb"

    .prologue
    .line 808
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 809
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 810
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 811
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onRotationLockChanged()V

    .line 812
    return-void
.end method

.method addSettingsTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 358
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshSettingsTile()V

    .line 360
    return-void
.end method

.method public addSslCaCertWarningTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 2
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 863
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 865
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->setSslCaCertWarningTileInfo(ZZ)V

    .line 866
    return-void
.end method

.method addUserTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 370
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 372
    return-void
.end method

.method addWifiTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 455
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 457
    return-void
.end method

.method public dataSwitchEnabled()Z
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method deviceHasMobileData()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHasMobileData:Z

    return v0
.end method

.method deviceSupportsBluetooth()Z
    .locals 1

    .prologue
    .line 571
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRadioProhibited()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 883
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 884
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 880
    goto :goto_0

    :cond_1
    move v1, v2

    .line 884
    goto :goto_1
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 443
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 444
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean p1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 445
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz p1, :cond_0

    const v1, 0x7f02004e

    :goto_0
    iput v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 448
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x7f0a00be

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 449
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 450
    return-void

    .line 445
    :cond_0
    const v1, 0x7f02004d

    goto :goto_0
.end method

.method onAlarmChanged(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 395
    return-void
.end method

.method public onBatteryLevelChanged(IZ)V
    .locals 3
    .parameter "level"
    .parameter "pluggedIn"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->pluggedIn:Z

    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 618
    return-void
.end method

.method public onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V
    .locals 4
    .parameter "bluetoothStateIn"

    .prologue
    .line 581
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 582
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 583
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    .line 584
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f020057

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 587
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a0086

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->stateContentDescription:Ljava/lang/String;

    .line 592
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a00c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 598
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 599
    return-void

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f020055

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 590
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a0084

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->stateContentDescription:Ljava/lang/String;

    goto :goto_0

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f020056

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 595
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a00c3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 596
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a0085

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->stateContentDescription:Ljava/lang/String;

    goto :goto_1
.end method

.method public onBluetoothStateChange(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V

    .line 578
    return-void
.end method

.method public onBrightnessLevelChanged()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 843
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 844
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v5}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v5

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 848
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    if-ne v3, v0, :cond_0

    :goto_0
    iput-boolean v0, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;->autoBrightness:Z

    .line 850
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;->autoBrightness:Z

    if-eqz v0, :cond_1

    const v0, 0x7f020059

    :goto_1
    iput v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 853
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    const v1, 0x7f0a00c4

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 854
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 855
    return-void

    :cond_0
    move v0, v1

    .line 848
    goto :goto_0

    .line 850
    :cond_1
    const v0, 0x7f020058

    goto :goto_1
.end method

.method public onBugreportChanged()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 657
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 658
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 660
    .local v1, enabled:Z
    :try_start_0
    const-string v4, "bugreport_in_power_menu"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 664
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v5}, Lcom/android/systemui/settings/CurrentUserTracker;->isCurrentUserOwner()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    iput-boolean v2, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 665
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 666
    return-void

    :cond_0
    move v1, v3

    .line 660
    goto :goto_0

    :cond_1
    move v2, v3

    .line 664
    goto :goto_1

    .line 661
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method onImeWindowStatusChanged(Z)V
    .locals 6
    .parameter "visible"

    .prologue
    .line 774
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 776
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 778
    .local v0, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->needsToShowImeSwitchOngoingNotification(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 779
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v3, v4, v1, v0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 781
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    if-eqz v2, :cond_0

    .line 782
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 784
    :cond_0
    return-void

    .line 778
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onLocationSettingsChanged(Z)V
    .locals 6
    .parameter "locationEnabled"

    .prologue
    .line 638
    if-eqz p1, :cond_0

    const v2, 0x7f0a00c8

    .line 640
    .local v2, textResId:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, label:Ljava/lang/String;
    if-eqz p1, :cond_1

    const v1, 0x7f020066

    .line 643
    .local v1, locationIconId:I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean p1, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 644
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-object v0, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 645
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput v1, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 646
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 647
    return-void

    .line 638
    .end local v0           #label:Ljava/lang/String;
    .end local v1           #locationIconId:I
    .end local v2           #textResId:I
    :cond_0
    const v2, 0x7f0a00c9

    goto :goto_0

    .line 641
    .restart local v0       #label:Ljava/lang/String;
    .restart local v2       #textResId:I
    :cond_1
    const v1, 0x7f020065

    goto :goto_1
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "enabled"
    .parameter "mobileSignalIconId"
    .parameter "signalContentDescription"
    .parameter "dataTypeIconId"
    .parameter "activityIn"
    .parameter "activityOut"
    .parameter "dataContentDescription"
    .parameter "enabledDesc"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->deviceHasMobileData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 530
    .local v0, r:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    move v1, p2

    :goto_0
    iput v1, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->signalIconId:I

    .line 533
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    .end local p3
    :goto_1
    iput-object p3, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->signalContentDescription:Ljava/lang/String;

    .line 536
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_3

    if-lez p4, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-nez v1, :cond_3

    move v1, p4

    :goto_2
    iput v1, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->dataTypeIconId:I

    .line 539
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_4

    if-eqz p5, :cond_4

    move v1, v3

    :goto_3
    iput-boolean v1, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;->activityIn:Z

    .line 540
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_5

    if-eqz p6, :cond_5

    :goto_4
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;->activityOut:Z

    .line 541
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_6

    if-lez p4, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-nez v2, :cond_6

    .end local p7
    :goto_5
    iput-object p7, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->dataContentDescription:Ljava/lang/String;

    .line 544
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_7

    invoke-static {p8}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 547
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 549
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 530
    .restart local v0       #r:Landroid/content/res/Resources;
    .restart local p3
    .restart local p7
    :cond_1
    const v1, 0x7f020089

    goto :goto_0

    .line 533
    :cond_2
    const v4, 0x7f0a007d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .end local p3
    :cond_3
    move v1, v2

    .line 536
    goto :goto_2

    :cond_4
    move v1, v2

    .line 539
    goto :goto_3

    :cond_5
    move v3, v2

    .line 540
    goto :goto_4

    .line 541
    :cond_6
    const v2, 0x7f0a006d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p7

    goto :goto_5

    .line 544
    .end local p7
    :cond_7
    const v1, 0x7f0a00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method

.method protected onMobileDataSwitchChanged()V
    .locals 4

    .prologue
    .line 892
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 894
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 895
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 898
    :cond_0
    return-void
.end method

.method onNextAlarmChanged()V
    .locals 4

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, alarmText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 404
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 406
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 407
    return-void

    .line 404
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onRotationLockChanged()V
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLockAffordanceVisible()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onRotationLockStateChanged(ZZ)V

    .line 816
    return-void
.end method

.method public onRotationLockStateChanged(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;->visible:Z

    .line 820
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 821
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    if-eqz p1, :cond_0

    const v0, 0x7f020067

    :goto_0
    iput v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 824
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00c6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 828
    return-void

    .line 821
    :cond_0
    const v0, 0x7f020054

    goto :goto_0

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00c5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "enabled"
    .parameter "wifiSignalIconId"
    .parameter "activityIn"
    .parameter "activityOut"
    .parameter "wifiSignalContentDescription"
    .parameter "enabledDesc"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 482
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 484
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p6, :cond_0

    move v1, v3

    .line 485
    .local v1, wifiConnected:Z
    :goto_0
    if-lez p2, :cond_1

    if-nez p6, :cond_1

    move v2, v3

    .line 486
    .local v2, wifiNotConnected:Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput-boolean p1, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 487
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput-boolean v1, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->connected:Z

    .line 488
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    move v5, v3

    :goto_2
    iput-boolean v5, v6, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;->activityIn:Z

    .line 489
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    :goto_3
    iput-boolean v3, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;->activityOut:Z

    .line 490
    if-eqz v1, :cond_4

    .line 491
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput p2, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 492
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-static {p6}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 493
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput-object p5, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    .line 503
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 504
    return-void

    .end local v1           #wifiConnected:Z
    .end local v2           #wifiNotConnected:Z
    :cond_0
    move v1, v4

    .line 484
    goto :goto_0

    .restart local v1       #wifiConnected:Z
    :cond_1
    move v2, v4

    .line 485
    goto :goto_1

    .restart local v2       #wifiNotConnected:Z
    :cond_2
    move v5, v4

    .line 488
    goto :goto_2

    :cond_3
    move v3, v4

    .line 489
    goto :goto_3

    .line 494
    :cond_4
    if-eqz v2, :cond_5

    .line 495
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f02008d

    iput v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 496
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a00d2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 497
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a0073

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    goto :goto_4

    .line 499
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f020098

    iput v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 500
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a00d5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 501
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a0072

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    goto :goto_4
.end method

.method refreshBatteryTile()V
    .locals 3

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 621
    return-void
.end method

.method refreshBluetoothTile()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Z)V

    .line 604
    :cond_0
    return-void
.end method

.method refreshBrightnessTile()V
    .locals 0

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBrightnessLevelChanged()V

    .line 858
    return-void
.end method

.method refreshLocationTile()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onLocationSettingsChanged(Z)V

    .line 634
    :cond_0
    return-void
.end method

.method refreshRotationLockTile()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onRotationLockChanged()V

    .line 833
    :cond_0
    return-void
.end method

.method refreshRssiTile()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->reinflateContent(Landroid/view/LayoutInflater;)V

    .line 557
    :cond_0
    return-void
.end method

.method refreshSettingsTile()V
    .locals 4

    .prologue
    .line 362
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 363
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x7f0a00cf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 365
    return-void
.end method

.method public setSslCaCertWarningTileInfo(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 869
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean p1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 870
    if-eqz p2, :cond_0

    .line 871
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x7f020060

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 875
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x7f0a00db

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 876
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 877
    return-void

    .line 873
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x1080078

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    goto :goto_0
.end method

.method setUserTileInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "name"
    .parameter "avatar"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    iput-object p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    iput-object p2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;->avatar:Landroid/graphics/drawable/Drawable;

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 377
    return-void
.end method

.method updateResources()V
    .locals 0

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshSettingsTile()V

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshBatteryTile()V

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshBluetoothTile()V

    .line 349
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshBrightnessTile()V

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshRotationLockTile()V

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshRssiTile()V

    .line 352
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshLocationTile()V

    .line 353
    return-void
.end method
