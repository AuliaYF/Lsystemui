.class public final Lcom/mda/Ltoggle/AutoRotationSettingButton;
.super Lcom/mda/Ltoggle/QuickSettingButton;
.source "AutoRotationSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mda/Ltoggle/AutoRotationSettingButton$AutoRotationObserver;
    }
.end annotation


# instance fields
.field private mAutoRotationObserver:Lcom/mda/Ltoggle/AutoRotationSettingButton$AutoRotationObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/mda/Ltoggle/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Lcom/mda/Ltoggle/AutoRotationSettingButton$AutoRotationObserver;

    invoke-direct {v0, p0}, Lcom/mda/Ltoggle/AutoRotationSettingButton$AutoRotationObserver;-><init>(Lcom/mda/Ltoggle/AutoRotationSettingButton;)V

    iput-object v0, p0, Lcom/mda/Ltoggle/AutoRotationSettingButton;->mAutoRotationObserver:Lcom/mda/Ltoggle/AutoRotationSettingButton$AutoRotationObserver;

    const-string v0, "android.settings.DISPLAY_SETTINGS"

    iput-object v0, p0, Lcom/mda/Ltoggle/QuickSettingButton;->mAction:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/mda/Ltoggle/AutoRotationSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mda/Ltoggle/AutoRotationSettingButton;->updateStatus()V

    return-void
.end method

.method private setRotationEnabled(I)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mda/Ltoggle/AutoRotationSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    return-void
.end method

.method private updateIconsAndTextColor()V
    .locals 6

    .prologue
    .line 65
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 66
    .local v4, textColor:I
    invoke-virtual {p0}, Lcom/mda/Ltoggle/AutoRotationSettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 69
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/mda/Ltoggle/AutoRotationSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, rootView:Landroid/view/View;
    const v3, 0x7f0700b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 68
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mda/Ltoggle/AutoRotationSettingButton;->getActivateStatus()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 80
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/AutoRotationSettingButton;->setTextColor(I)V

    .line 82
    return-void

    .line 72
    :pswitch_0
    const v1, 0x7f020353

    .line 74
    const v4, 0x7f08000c

    goto :goto_0

    .line 76
    :pswitch_1
    const v1, 0x7f020352

    .line 77
    const v4, 0x7f08000b

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/mda/Ltoggle/AutoRotationSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 57
    invoke-virtual {p0, v3}, Lcom/mda/Ltoggle/AutoRotationSettingButton;->setActivateStatus(I)V

    .line 61
    :goto_0
    invoke-direct {p0}, Lcom/mda/Ltoggle/AutoRotationSettingButton;->updateIconsAndTextColor()V

    .line 62
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mda/Ltoggle/AutoRotationSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "AutoRotationSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mda/Ltoggle/AutoRotationSettingButton;->setRotationEnabled(I)V

    .line 91
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "AutoRotationSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mda/Ltoggle/AutoRotationSettingButton;->setRotationEnabled(I)V

    .line 96
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0}, Lcom/mda/Ltoggle/QuickSettingButton;->onAttachedToWindow()V

    .line 40
    const-string v0, "AutoRotationSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/mda/Ltoggle/AutoRotationSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mda/Ltoggle/AutoRotationSettingButton;->mAutoRotationObserver:Lcom/mda/Ltoggle/AutoRotationSettingButton$AutoRotationObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 44
    invoke-direct {p0}, Lcom/mda/Ltoggle/AutoRotationSettingButton;->updateStatus()V

    .line 45
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/mda/Ltoggle/QuickSettingButton;->onDetachedFromWindow()V

    .line 50
    const-string v0, "AutoRotationSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/mda/Ltoggle/AutoRotationSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mda/Ltoggle/AutoRotationSettingButton;->mAutoRotationObserver:Lcom/mda/Ltoggle/AutoRotationSettingButton$AutoRotationObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 52
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f0a00fa

    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/AutoRotationSettingButton;->setText(I)V

    .line 86
    return-void
.end method
