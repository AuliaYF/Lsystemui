.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;
.super Landroid/database/ContentObserver;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BugreportObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .line 166
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 167
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBugreportChanged()V

    .line 171
    return-void
.end method

.method public startObserving()V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "bugreport_in_power_menu"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 177
    return-void
.end method
