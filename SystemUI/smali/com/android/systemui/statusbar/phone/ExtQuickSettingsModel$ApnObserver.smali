.class Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnObserver;
.super Landroid/database/ContentObserver;
.source "ExtQuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnObserver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    .line 343
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 344
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 348
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 349
    const-string v0, "ApnState"

    const-string v1, "ApnObserver, will try to update the apn views."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnObserver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->refreshApnTile()V

    .line 351
    return-void
.end method

.method public startObserving()V
    .locals 3

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnObserver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #getter for: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 355
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 356
    return-void
.end method
