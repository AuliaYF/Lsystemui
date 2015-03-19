.class Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$DataSwitchObserver;
.super Landroid/database/ContentObserver;
.source "ExtQuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$DataSwitchObserver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    .line 413
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 414
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$DataSwitchObserver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onMobileDataSwitchChanged()V

    .line 419
    return-void
.end method

.method public startObserving()V
    .locals 4

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$DataSwitchObserver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #getter for: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$DataSwitchObserver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v3}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 425
    return-void
.end method
