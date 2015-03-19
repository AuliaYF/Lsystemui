.class Lcom/android/systemui/statusbar/phone/QuickSettings$34;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$34;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 931
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 933
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 935
    .local v1, state:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$34;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    move-result-object v6

    const/16 v7, 0xc

    if-ne v1, v7, :cond_1

    :goto_0
    iput-boolean v4, v6, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 936
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$34;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyBluetoothStatus()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 957
    .end local v1           #state:I
    :cond_0
    :goto_1
    return-void

    .restart local v1       #state:I
    :cond_1
    move v4, v5

    .line 935
    goto :goto_0

    .line 937
    .end local v1           #state:I
    :cond_2
    const-string v6, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 938
    const-string v6, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 940
    .local v2, status:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$34;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    move-result-object v6

    const/4 v7, 0x2

    if-ne v2, v7, :cond_3

    :goto_2
    iput-boolean v4, v6, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    .line 941
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$34;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyBluetoothStatus()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_1

    :cond_3
    move v4, v5

    .line 940
    goto :goto_2

    .line 942
    .end local v2           #status:I
    :cond_4
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 943
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$34;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->reloadUserInfo()V

    goto :goto_1

    .line 944
    :cond_5
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 945
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$34;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUseDefaultAvatar:Z

    if-eqz v4, :cond_0

    .line 946
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$34;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1700(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_1

    .line 948
    :cond_6
    const-string v4, "android.security.STORAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 949
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$34;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForSslCaCerts()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1800(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_1

    .line 950
    :cond_7
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 951
    const-string v4, "subscription"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 952
    .local v3, sub:I
    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$34;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->showRoamingSetting()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 954
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$34;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->onRoamingVisibleChanged()V

    goto :goto_1
.end method
