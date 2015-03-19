.class Lcom/android/systemui/statusbar/phone/QuickSettings$8$1;
.super Landroid/os/AsyncTask;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings$8;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/QuickSettings$8;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings$8;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8$1;->this$1:Lcom/android/systemui/statusbar/phone/QuickSettings$8;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8$1;->val$enable:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 407
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings$8$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 411
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8$1;->this$1:Lcom/android/systemui/statusbar/phone/QuickSettings$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 412
    .local v0, wifiApState:I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8$1;->val$enable:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8$1;->this$1:Lcom/android/systemui/statusbar/phone/QuickSettings$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8$1;->this$1:Lcom/android/systemui/statusbar/phone/QuickSettings$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->isRadioProhibited()Z

    move-result v1

    if-nez v1, :cond_2

    .line 418
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8$1;->this$1:Lcom/android/systemui/statusbar/phone/QuickSettings$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8$1;->val$enable:Z

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 420
    :cond_2
    return-object v3
.end method
