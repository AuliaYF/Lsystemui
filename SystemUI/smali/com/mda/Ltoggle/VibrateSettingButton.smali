.class public final Lcom/mda/Ltoggle/VibrateSettingButton;
.super Lcom/mda/Ltoggle/QuickSettingButton;
.source "VibrateSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mda/Ltoggle/VibrateSettingButton$VibrateReceiver;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mda/Ltoggle/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/mda/Ltoggle/VibrateSettingButton$VibrateReceiver;

    invoke-direct {v1, p0}, Lcom/mda/Ltoggle/VibrateSettingButton$VibrateReceiver;-><init>(Lcom/mda/Ltoggle/VibrateSettingButton;)V

    iput-object v1, p0, Lcom/mda/Ltoggle/VibrateSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mda/Ltoggle/VibrateSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/mda/Ltoggle/VibrateSettingButton;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "android.settings.SOUND_SETTINGS"

    iput-object v1, p0, Lcom/mda/Ltoggle/QuickSettingButton;->mAction:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/mda/Ltoggle/VibrateSettingButton;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/mda/Ltoggle/VibrateSettingButton;->updateStatus()V

    return-void
.end method

.method private setVibrateEnabled(Z)V
    .locals 9
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    iget-object v0, p0, Lcom/mda/Ltoggle/VibrateSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    iget-object v1, p0, Lcom/mda/Ltoggle/VibrateSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_silent"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez p1, :cond_1

    if-eq v5, v8, :cond_0

    const/4 v5, 0x0

    :cond_0
    const/4 v6, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    if-eq v5, v8, :cond_2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    const/4 v6, 0x1

    :goto_0
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    invoke-virtual {v0, v7, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    return-void
.end method

.method private updateIconsAndTextColor()V
    .locals 6

    .prologue
    .line 67
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 68
    .local v4, textColor:I
    invoke-virtual {p0}, Lcom/mda/Ltoggle/VibrateSettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 105
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/mda/Ltoggle/VibrateSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, rootView:Landroid/view/View;
    const v3, 0x7f0700b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mda/Ltoggle/VibrateSettingButton;->getActivateStatus()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 82
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/VibrateSettingButton;->setTextColor(I)V

    .line 84
    return-void

    .line 74
    :pswitch_0
    const v1, 0x7f020357

    .line 76
    const v4, 0x7f08000c

    goto :goto_0

    .line 78
    :pswitch_1
    const v1, 0x7f020356

    .line 79
    const v4, 0x7f08000b

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/mda/Ltoggle/VibrateSettingButton;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/VibrateSettingButton;->setActivateStatus(I)V

    invoke-direct {p0}, Lcom/mda/Ltoggle/VibrateSettingButton;->updateIconsAndTextColor()V

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    const-string v0, "VibrateSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mda/Ltoggle/VibrateSettingButton;->setVibrateEnabled(Z)V

    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    const-string v0, "VibrateSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mda/Ltoggle/VibrateSettingButton;->setVibrateEnabled(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/mda/Ltoggle/QuickSettingButton;->onAttachedToWindow()V

    const-string v0, "VibrateSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mda/Ltoggle/VibrateSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mda/Ltoggle/VibrateSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/mda/Ltoggle/VibrateSettingButton;->updateStatus()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/mda/Ltoggle/QuickSettingButton;->onDetachedFromWindow()V

    const-string v0, "VibrateSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mda/Ltoggle/VibrateSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mda/Ltoggle/VibrateSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    const v0, 0x7f0a00fc

    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/VibrateSettingButton;->setText(I)V

    return-void
.end method
