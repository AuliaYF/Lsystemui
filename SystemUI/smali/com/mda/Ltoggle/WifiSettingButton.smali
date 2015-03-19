.class public final Lcom/mda/Ltoggle/WifiSettingButton;
.super Lcom/mda/Ltoggle/QuickSettingButton;
.source "WifiSettingButton.java"


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mda/Ltoggle/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 21
    new-instance v0, Lcom/mda/Ltoggle/WifiSettingButton$1;

    invoke-direct {v0, p0}, Lcom/mda/Ltoggle/WifiSettingButton$1;-><init>(Lcom/mda/Ltoggle/WifiSettingButton;)V

    iput-object v0, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "android.settings.WIFI_SETTINGS"

    iput-object v0, p0, Lcom/mda/Ltoggle/QuickSettingButton;->mAction:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/mda/Ltoggle/WifiSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mda/Ltoggle/WifiSettingButton;->handleStateChanged(I)V

    return-void
.end method

.method private handleStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mda/Ltoggle/WifiSettingButton;->updateStatus(I)V

    .line 32
    return-void
.end method

.method private updateIconsAndTextColor()V
    .locals 6

    .prologue
    .line 82
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 83
    .local v4, textColorRes:I
    invoke-virtual {p0}, Lcom/mda/Ltoggle/WifiSettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 86
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/mda/Ltoggle/WifiSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, rootView:Landroid/view/View;
    const v3, 0x7f090163

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 85
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mda/Ltoggle/WifiSettingButton;->getActivateStatus()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 102
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/WifiSettingButton;->setTextColor(I)V

    .line 106
    return-void

    .line 89
    :pswitch_0
    const v1, 0x7f020274

    .line 90
    const v4, 0x7f0a0010

    goto :goto_0

    .line 93
    :pswitch_1
    const v1, 0x7f020273

    .line 94
    const v4, 0x7f0a000f

    goto :goto_0

    .line 97
    :pswitch_2
    const v1, 0x7f020272

    .line 98
    const v4, 0x7f0a000e

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateStatus(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 63
    packed-switch p1, :pswitch_data_0

    .line 78
    :goto_0
    invoke-direct {p0}, Lcom/mda/Ltoggle/WifiSettingButton;->updateIconsAndTextColor()V

    .line 79
    return-void

    .line 65
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/WifiSettingButton;->setActivateStatus(I)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/WifiSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/mda/Ltoggle/WifiSettingButton;->setActivateStatus(I)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/WifiSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 74
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/WifiSettingButton;->setActivateStatus(I)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/mda/Ltoggle/WifiSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public activate()V
    .locals 3

    .prologue
    const-string v2, "WifiSettingButton"

    .line 112
    const-string v1, "WifiSettingButton"

    const-string v1, "activate()"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 117
    const-string v1, "WifiSettingButton"

    const-string v2, "Wifi is Disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method public checkWifiForWimax()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "WifiSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 132
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-super {p0}, Lcom/mda/Ltoggle/QuickSettingButton;->onAttachedToWindow()V

    .line 41
    const-string v0, "WifiSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 47
    iget-object v0, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 49
    iget-object v0, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mda/Ltoggle/WifiSettingButton;->updateStatus(I)V

    .line 52
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/mda/Ltoggle/QuickSettingButton;->onDetachedFromWindow()V

    .line 57
    const-string v0, "WifiSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mda/Ltoggle/WifiSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 108
    const v0, 0x7f0c011d

    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/WifiSettingButton;->setText(I)V

    .line 109
    return-void
.end method
