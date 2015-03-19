.class Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$14;
.super Ljava/lang/Object;
.source "ExpandedShortCutView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V
    .locals 0
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$14;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 650
    const-string v0, "ExpandedShortCutView"

    const-string v1, "PPP1 Button clicked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$14;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mConnectivityMgr:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1000(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$14;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->isAirplaneModeOn()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1100(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$14;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #setter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPPPDelayTimeup:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1302(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Z)Z

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$14;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->EnablePPP(Z)V
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1400(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Z)V

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$14;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mHandler:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$14;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mHandler:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$14;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->setActivppp(I)V
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1500(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;I)V

    .line 675
    const-string v0, "ro.hmct.cta.test"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$14;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0
.end method
