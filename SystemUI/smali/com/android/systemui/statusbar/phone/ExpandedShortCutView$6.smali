.class Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$6;
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
    .line 432
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$6;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 436
    const-string v2, "ExpandedShortCutView"

    const-string v4, "wifi Button clicked"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$6;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$400(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 442
    .local v0, isWifiEnabled:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$6;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$400(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 444
    .local v1, wifiApState:I
    if-nez v0, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 447
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$6;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$400(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 449
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$6;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$400(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 451
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$6;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiButton:Landroid/widget/Button;

    const v4, 0x7f0200c0

    invoke-virtual {v2, v3, v4, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 453
    return-void

    :cond_2
    move v2, v3

    .line 449
    goto :goto_0
.end method
