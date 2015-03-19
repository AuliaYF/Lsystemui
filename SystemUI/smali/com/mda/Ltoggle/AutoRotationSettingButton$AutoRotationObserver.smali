.class Lcom/mda/Ltoggle/AutoRotationSettingButton$AutoRotationObserver;
.super Landroid/database/ContentObserver;
.source "AutoRotationSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mda/Ltoggle/AutoRotationSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRotationObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mda/Ltoggle/AutoRotationSettingButton;


# direct methods
.method public constructor <init>(Lcom/mda/Ltoggle/AutoRotationSettingButton;)V
    .locals 1

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mda/Ltoggle/AutoRotationSettingButton$AutoRotationObserver;->this$0:Lcom/mda/Ltoggle/AutoRotationSettingButton;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 26
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mda/Ltoggle/AutoRotationSettingButton$AutoRotationObserver;->this$0:Lcom/mda/Ltoggle/AutoRotationSettingButton;

    #calls: Lcom/mda/Ltoggle/AutoRotationSettingButton;->updateStatus()V
    invoke-static {v0}, Lcom/mda/Ltoggle/AutoRotationSettingButton;->access$000(Lcom/mda/Ltoggle/AutoRotationSettingButton;)V

    .line 30
    return-void
.end method
