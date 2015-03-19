.class Lcom/mda/Ltoggle/QuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mda/Ltoggle/QuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mda/Ltoggle/QuickSettingButton;


# direct methods
.method constructor <init>(Lcom/mda/Ltoggle/QuickSettingButton;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mda/Ltoggle/QuickSettingButton$1;->this$0:Lcom/mda/Ltoggle/QuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mda/Ltoggle/QuickSettingButton$1;->this$0:Lcom/mda/Ltoggle/QuickSettingButton;

    invoke-virtual {v0}, Lcom/mda/Ltoggle/QuickSettingButton;->updateResources()V

    .line 28
    return-void
.end method
