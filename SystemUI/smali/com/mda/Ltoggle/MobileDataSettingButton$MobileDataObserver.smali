.class Lcom/mda/Ltoggle/MobileDataSettingButton$MobileDataObserver;
.super Landroid/database/ContentObserver;
.source "MobileDataSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mda/Ltoggle/MobileDataSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mda/Ltoggle/MobileDataSettingButton;


# direct methods
.method public constructor <init>(Lcom/mda/Ltoggle/MobileDataSettingButton;)V
    .locals 1

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mda/Ltoggle/MobileDataSettingButton$MobileDataObserver;->this$0:Lcom/mda/Ltoggle/MobileDataSettingButton;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mda/Ltoggle/MobileDataSettingButton$MobileDataObserver;->this$0:Lcom/mda/Ltoggle/MobileDataSettingButton;

    #calls: Lcom/mda/Ltoggle/MobileDataSettingButton;->updateStatus()V
    invoke-static {v0}, Lcom/mda/Ltoggle/MobileDataSettingButton;->access$000(Lcom/mda/Ltoggle/MobileDataSettingButton;)V

    .line 29
    return-void
.end method
