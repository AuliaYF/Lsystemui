.class Lcom/mda/Ltoggle/SignalToggle$3$1;
.super Ljava/lang/Object;
.source "SignalToggle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mda/Ltoggle/SignalToggle$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mda/Ltoggle/SignalToggle$3;

.field final synthetic val$fadeIn:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/mda/Ltoggle/SignalToggle$3;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mda/Ltoggle/SignalToggle$3$1;->this$1:Lcom/mda/Ltoggle/SignalToggle$3;

    iput-object p2, p0, Lcom/mda/Ltoggle/SignalToggle$3$1;->val$fadeIn:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mda/Ltoggle/SignalToggle$3$1;->this$1:Lcom/mda/Ltoggle/SignalToggle$3;

    iget-object v0, v0, Lcom/mda/Ltoggle/SignalToggle$3;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    iget-object v1, p0, Lcom/mda/Ltoggle/SignalToggle$3$1;->val$fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/mda/Ltoggle/SignalToggle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 117
    return-void
.end method
