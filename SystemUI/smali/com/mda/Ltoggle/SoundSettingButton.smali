.class public final Lcom/mda/Ltoggle/SoundSettingButton;
.super Lcom/mda/Ltoggle/QuickSettingButton;
.source "SoundSettingButton.java"


# static fields
.field private static mSoundProfile:I

.field private static mSoundText:I

.field private static mVibProfile:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/mda/Ltoggle/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mda/Ltoggle/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 28
    new-instance v0, Lcom/mda/Ltoggle/SoundSettingButton$1;

    invoke-direct {v0, p0}, Lcom/mda/Ltoggle/SoundSettingButton$1;-><init>(Lcom/mda/Ltoggle/SoundSettingButton;)V

    iput-object v0, p0, Lcom/mda/Ltoggle/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "android.settings.SOUND_SETTINGS"

    iput-object v0, p0, Lcom/mda/Ltoggle/QuickSettingButton;->mAction:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/mda/Ltoggle/SoundSettingButton;->mSoundProfile:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput p0, Lcom/mda/Ltoggle/SoundSettingButton;->mSoundProfile:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/mda/Ltoggle/SoundSettingButton;->mVibProfile:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput p0, Lcom/mda/Ltoggle/SoundSettingButton;->mVibProfile:I

    return p0
.end method

.method static synthetic access$200(Lcom/mda/Ltoggle/SoundSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mda/Ltoggle/SoundSettingButton;->updateStatus()V

    return-void
.end method

.method private updateIconsAndTextColor()V
    .locals 6

    .prologue
    .line 87
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 88
    .local v4, textColor:I
    invoke-virtual {p0}, Lcom/mda/Ltoggle/SoundSettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 91
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/mda/Ltoggle/SoundSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, rootView:Landroid/view/View;
    const v3, 0x7f090169

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mda/Ltoggle/SoundSettingButton;->getActivateStatus()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 102
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SoundSettingButton;->setTextColor(I)V

    .line 104
    return-void

    .line 94
    :pswitch_0
    const v1, 0x7f02026d

    .line 96
    const v4, 0x7f0a0010

    goto :goto_0

    .line 78
    :pswitch_1
    const v1, 0x7f02026c

    .line 99
    const v4, 0x7f0a000f

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x2

    sget v1, Lcom/mda/Ltoggle/SoundSettingButton;->mSoundProfile:I

    if-ne v0, v1, :cond_0

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/SoundSettingButton;->setActivateStatus(I)V

    .line 84
    :goto_0
    invoke-direct {p0}, Lcom/mda/Ltoggle/SoundSettingButton;->updateIconsAndTextColor()V

    .line 85
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/SoundSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "SoundSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/mda/Ltoggle/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 131
    return-void
.end method

.method public deactivate()V
    .locals 4

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, soundProfile:I
    sget v1, Lcom/mda/Ltoggle/SoundSettingButton;->mVibProfile:I

    packed-switch v1, :pswitch_data_0

    .line 154
    :goto_0
    const-string v1, "SoundSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deactivate()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " V:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mda/Ltoggle/SoundSettingButton;->mVibProfile:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/mda/Ltoggle/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 156
    return-void

    .line 138
    :pswitch_0
    const/4 v0, 0x0

    .line 139
    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v1, p0, Lcom/mda/Ltoggle/SoundSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_silent"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 143
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 147
    goto :goto_0

    .line 150
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "SoundSettingButton"

    .line 53
    invoke-super {p0}, Lcom/mda/Ltoggle/QuickSettingButton;->onAttachedToWindow()V

    .line 54
    const-string v1, "SoundSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/mda/Ltoggle/SoundSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mda/Ltoggle/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/mda/Ltoggle/SoundSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/mda/Ltoggle/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    iget-object v1, p0, Lcom/mda/Ltoggle/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/mda/Ltoggle/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    sput v1, Lcom/mda/Ltoggle/SoundSettingButton;->mSoundProfile:I

    .line 64
    iget-object v1, p0, Lcom/mda/Ltoggle/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    sput v1, Lcom/mda/Ltoggle/SoundSettingButton;->mVibProfile:I

    .line 65
    invoke-direct {p0}, Lcom/mda/Ltoggle/SoundSettingButton;->updateStatus()V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v1, "SoundSettingButton"

    const-string v1, "mAudioManager is null"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/mda/Ltoggle/QuickSettingButton;->onDetachedFromWindow()V

    .line 74
    const-string v0, "SoundSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/mda/Ltoggle/SoundSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mda/Ltoggle/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    const v0, 0x7f0c01bc

    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/SoundSettingButton;->setText(I)V

    return-void
.end method
