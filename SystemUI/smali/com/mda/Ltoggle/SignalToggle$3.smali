.class Lcom/mda/Ltoggle/SignalToggle$3;
.super Ljava/lang/Object;
.source "SignalToggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 101
    iput-object p1, p0, Lcom/mda/Ltoggle/SignalToggle$3;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const-wide/16 v4, 0x1f4

    .line 104
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 105
    .local v0, fadeIn:Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 106
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 108
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 109
    .local v1, fadeOut:Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 110
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 111
    iget-object v3, p0, Lcom/mda/Ltoggle/SignalToggle$3;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    invoke-virtual {v3, v1}, Lcom/mda/Ltoggle/SignalToggle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 113
    .local v2, h:Landroid/os/Handler;
    new-instance v3, Lcom/mda/Ltoggle/SignalToggle$3$1;

    invoke-direct {v3, p0, v0}, Lcom/mda/Ltoggle/SignalToggle$3$1;-><init>(Lcom/mda/Ltoggle/SignalToggle$3;Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    iget-object v3, p0, Lcom/mda/Ltoggle/SignalToggle$3;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    #calls: Lcom/mda/Ltoggle/SignalToggle;->updateSignalStrength()V
    invoke-static {v3}, Lcom/mda/Ltoggle/SignalToggle;->access$000(Lcom/mda/Ltoggle/SignalToggle;)V

    .line 120
    return-void
.end method
