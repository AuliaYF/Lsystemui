.class Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;
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
    .line 599
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 602
    const/4 v0, 0x0

    .line 605
    .local v0, forbitgsmRet:I
    const-string v6, "ExpandedShortCutView"

    const-string v7, "PPP Button clicked"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v6, "ExpandedShortCutView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mConnectivityMgr is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mConnectivityMgr:Landroid/net/ConnectivityManager;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1000(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/ConnectivityManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mConnectivityMgr:Landroid/net/ConnectivityManager;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1000(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/ConnectivityManager;

    move-result-object v6

    if-nez v6, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->isAirplaneModeOn()Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1100(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 617
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->isForbitGsm(I)I
    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1200(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;I)I

    move-result v0

    .line 618
    const-string v6, "ExpandedShortCutView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "forbitgsmRet is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v6, 0x2

    if-eq v6, v0, :cond_0

    .line 623
    if-ne v4, v0, :cond_2

    .line 624
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 625
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, status:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 630
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 633
    .end local v2           #status:Ljava/lang/String;
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mConnectivityMgr:Landroid/net/ConnectivityManager;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1000(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 635
    .local v1, isPppEnable:Z
    const-string v6, "ExpandedShortCutView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PPP Enabled is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mConnectivityMgr:Landroid/net/ConnectivityManager;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1000(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/ConnectivityManager;

    move-result-object v6

    if-nez v1, :cond_3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 638
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mPppButton:Landroid/widget/Button;

    const v6, 0x7f020032

    invoke-virtual {v4, v5, v6, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 640
    const-string v4, "ro.hmct.cta.test"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 641
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$13;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto/16 :goto_0

    :cond_3
    move v4, v5

    .line 637
    goto :goto_1
.end method
