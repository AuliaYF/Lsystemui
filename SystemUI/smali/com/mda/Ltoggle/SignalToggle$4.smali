.class Lcom/mda/Ltoggle/SignalToggle$4;
.super Landroid/telephony/PhoneStateListener;
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
    .line 123
    iput-object p1, p0, Lcom/mda/Ltoggle/SignalToggle$4;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mda/Ltoggle/SignalToggle$4;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    #calls: Lcom/mda/Ltoggle/SignalToggle;->isCdma()Z
    invoke-static {v0}, Lcom/mda/Ltoggle/SignalToggle;->access$100(Lcom/mda/Ltoggle/SignalToggle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/mda/Ltoggle/SignalToggle$4;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    #calls: Lcom/mda/Ltoggle/SignalToggle;->updateSignalStrength()V
    invoke-static {v0}, Lcom/mda/Ltoggle/SignalToggle;->access$000(Lcom/mda/Ltoggle/SignalToggle;)V

    .line 141
    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mda/Ltoggle/SignalToggle$4;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    iput-object p1, v0, Lcom/mda/Ltoggle/SignalToggle;->mServiceState:Landroid/telephony/ServiceState;

    .line 133
    iget-object v0, p0, Lcom/mda/Ltoggle/SignalToggle$4;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    #calls: Lcom/mda/Ltoggle/SignalToggle;->updateSignalStrength()V
    invoke-static {v0}, Lcom/mda/Ltoggle/SignalToggle;->access$000(Lcom/mda/Ltoggle/SignalToggle;)V

    .line 134
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mda/Ltoggle/SignalToggle$4;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    iput-object p1, v0, Lcom/mda/Ltoggle/SignalToggle;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 127
    iget-object v0, p0, Lcom/mda/Ltoggle/SignalToggle$4;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    #calls: Lcom/mda/Ltoggle/SignalToggle;->updateSignalStrength()V
    invoke-static {v0}, Lcom/mda/Ltoggle/SignalToggle;->access$000(Lcom/mda/Ltoggle/SignalToggle;)V

    .line 128
    return-void
.end method
