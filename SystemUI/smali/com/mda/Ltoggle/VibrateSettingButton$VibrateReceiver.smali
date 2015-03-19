.class Lcom/mda/Ltoggle/VibrateSettingButton$VibrateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VibrateSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mda/Ltoggle/VibrateSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mda/Ltoggle/VibrateSettingButton;


# direct methods
.method public constructor <init>(Lcom/mda/Ltoggle/VibrateSettingButton;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/mda/Ltoggle/VibrateSettingButton$VibrateReceiver;->this$0:Lcom/mda/Ltoggle/VibrateSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mda/Ltoggle/VibrateSettingButton$VibrateReceiver;->this$0:Lcom/mda/Ltoggle/VibrateSettingButton;

    #calls: Lcom/mda/Ltoggle/VibrateSettingButton;->updateStatus()V
    invoke-static {v0}, Lcom/mda/Ltoggle/VibrateSettingButton;->access$0(Lcom/mda/Ltoggle/VibrateSettingButton;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mda/Ltoggle/VibrateSettingButton$VibrateReceiver;->this$0:Lcom/mda/Ltoggle/VibrateSettingButton;

    #calls: Lcom/mda/Ltoggle/VibrateSettingButton;->updateStatus()V
    invoke-static {v0}, Lcom/mda/Ltoggle/VibrateSettingButton;->access$0(Lcom/mda/Ltoggle/VibrateSettingButton;)V

    goto :goto_0
.end method
