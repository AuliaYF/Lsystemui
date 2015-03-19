.class Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;
.super Landroid/database/ContentObserver;
.source "ExtQuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamingDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    .line 431
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 432
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #calls: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->onRoamingDataStateChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$300(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)V

    .line 437
    return-void
.end method

.method public startObserving()V
    .locals 3

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #getter for: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 441
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 442
    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 444
    return-void
.end method
