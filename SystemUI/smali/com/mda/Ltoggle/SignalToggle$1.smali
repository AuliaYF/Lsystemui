.class Lcom/mda/Ltoggle/SignalToggle$1;
.super Landroid/content/BroadcastReceiver;
.source "SignalToggle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mda/Ltoggle/SignalToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mda/Ltoggle/SignalToggle;


# direct methods
.method constructor <init>(Lcom/mda/Ltoggle/SignalToggle;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mda/Ltoggle/SignalToggle$1;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 71
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 73
    .local v2, info:Landroid/net/NetworkInfo;
    const-string v3, "inetCondition"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, connectionStatus:I
    const/16 v3, 0x32

    if-le v0, v3, :cond_0

    const/4 v1, 0x1

    .line 77
    .local v1, inetCondition:I
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v3, p0, Lcom/mda/Ltoggle/SignalToggle$1;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    iput v1, v3, Lcom/mda/Ltoggle/SignalToggle;->mInetCondition:I

    .line 80
    iget-object v3, p0, Lcom/mda/Ltoggle/SignalToggle$1;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    #calls: Lcom/mda/Ltoggle/SignalToggle;->updateSignalStrength()V
    invoke-static {v3}, Lcom/mda/Ltoggle/SignalToggle;->access$000(Lcom/mda/Ltoggle/SignalToggle;)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
