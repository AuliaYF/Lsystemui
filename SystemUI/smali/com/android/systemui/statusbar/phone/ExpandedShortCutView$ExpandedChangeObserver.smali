.class Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;
.super Landroid/database/ContentObserver;
.source "ExpandedShortCutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedChangeObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 1559
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    .line 1560
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1561
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;->mContext:Landroid/content/Context;

    .line 1562
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 1592
    const-string v1, "ExpandedShortCutView"

    const-string v2, "onChange() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1596
    .local v0, isOpen:Z
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 1597
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->initBrightButton()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$2000(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    .line 1599
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1600
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updatePppButton()V

    .line 1602
    :cond_1
    return-void
.end method

.method startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1566
    const-string v1, "ExpandedShortCutView"

    const-string v2, "startObserving()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1568
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1570
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1573
    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1577
    const-string v1, "multi_sim_data_call"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1582
    return-void
.end method

.method stopObserving()V
    .locals 2

    .prologue
    .line 1586
    const-string v0, "ExpandedShortCutView"

    const-string v1, "stopObserving()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ExpandedChangeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1588
    return-void
.end method
