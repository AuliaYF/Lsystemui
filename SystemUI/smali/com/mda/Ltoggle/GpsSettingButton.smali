.class public final Lcom/mda/Ltoggle/GpsSettingButton;
.super Lcom/mda/Ltoggle/QuickSettingButton;
.source "GpsSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mda/Ltoggle/GpsSettingButton$GpsObserver;
    }
.end annotation


# instance fields
.field private mGpsObserver:Lcom/mda/Ltoggle/GpsSettingButton$GpsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/mda/Ltoggle/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Lcom/mda/Ltoggle/GpsSettingButton$GpsObserver;

    invoke-direct {v0, p0}, Lcom/mda/Ltoggle/GpsSettingButton$GpsObserver;-><init>(Lcom/mda/Ltoggle/GpsSettingButton;)V

    iput-object v0, p0, Lcom/mda/Ltoggle/GpsSettingButton;->mGpsObserver:Lcom/mda/Ltoggle/GpsSettingButton$GpsObserver;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    iput-object v0, p0, Lcom/mda/Ltoggle/QuickSettingButton;->mAction:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/mda/Ltoggle/GpsSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mda/Ltoggle/GpsSettingButton;->updateStatus()V

    return-void
.end method

.method private setGPSEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mda/Ltoggle/GpsSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 100
    return-void
.end method

.method private updateIconsAndTextColor()V
    .locals 6

    .prologue
    .line 64
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 65
    .local v4, textColor:I
    invoke-virtual {p0}, Lcom/mda/Ltoggle/GpsSettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 68
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/mda/Ltoggle/GpsSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, rootView:Landroid/view/View;
    const v3, 0x7f0700b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 67
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mda/Ltoggle/GpsSettingButton;->getActivateStatus()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 79
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/GpsSettingButton;->setTextColor(I)V

    .line 81
    return-void

    .line 71
    :pswitch_0
    const v1, 0x7f020351

    .line 73
    const v4, 0x7f08000c

    goto :goto_0

    .line 75
    :pswitch_1
    const v1, 0x7f020350

    .line 76
    const v4, 0x7f08000b

    goto :goto_0

    .line 69
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
    .line 54
    iget-object v0, p0, Lcom/mda/Ltoggle/GpsSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/GpsSettingButton;->setActivateStatus(I)V

    .line 60
    :goto_0
    invoke-direct {p0}, Lcom/mda/Ltoggle/GpsSettingButton;->updateIconsAndTextColor()V

    .line 61
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/GpsSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "GpsSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mda/Ltoggle/GpsSettingButton;->setGPSEnabled(Z)V

    .line 90
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "GpsSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mda/Ltoggle/GpsSettingButton;->setGPSEnabled(Z)V

    .line 95
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 36
    invoke-super {p0}, Lcom/mda/Ltoggle/QuickSettingButton;->onAttachedToWindow()V

    .line 37
    const-string v0, "GpsSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/mda/Ltoggle/GpsSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mda/Ltoggle/GpsSettingButton;->mGpsObserver:Lcom/mda/Ltoggle/GpsSettingButton$GpsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    invoke-direct {p0}, Lcom/mda/Ltoggle/GpsSettingButton;->updateStatus()V

    .line 43
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/mda/Ltoggle/QuickSettingButton;->onDetachedFromWindow()V

    .line 48
    const-string v0, "GpsSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/mda/Ltoggle/GpsSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mda/Ltoggle/GpsSettingButton;->mGpsObserver:Lcom/mda/Ltoggle/GpsSettingButton$GpsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 51
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/GpsSettingButton;->setText(I)V

    .line 85
    return-void
.end method
