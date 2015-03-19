.class Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$SimStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExtQuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimStateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$SimStateChangedReceiver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$SimStateChangedReceiver;-><init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 371
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, action:Ljava/lang/String;
    const-string v2, "ApnState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimStateChangedReceiver, receive the action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$SimStateChangedReceiver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #getter for: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnState:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$100(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$SimStateChangedReceiver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #calls: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->hasIccCard()Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$200(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 376
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$SimStateChangedReceiver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #getter for: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnState:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$100(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-eqz v2, :cond_0

    .line 379
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, iccState:Ljava/lang/String;
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$SimStateChangedReceiver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->refreshApnTile()V

    .line 391
    .end local v1           #iccState:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    const-string v2, "state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$SimStateChangedReceiver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #getter for: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mApnState:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$100(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

    move-result-object v2

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 388
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$SimStateChangedReceiver;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->refreshApnTile()V

    goto :goto_0
.end method
