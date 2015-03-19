.class Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$19;
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
    .line 773
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$19;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 777
    const-string v2, "ExpandedShortCutView"

    const-string v4, "hotspot Button clicked"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$19;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->isAirplaneModeOn()Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1100(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 795
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$19;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$400(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    .line 783
    .local v0, isWifiApEnabled:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$19;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$400(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 784
    .local v1, wifiState:I
    if-nez v0, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 787
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$19;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$400(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 790
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$19;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$400(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v5, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 793
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$19;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mHotspotButton:Landroid/widget/Button;

    const v4, 0x7f02003c

    invoke-virtual {v2, v3, v4, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 790
    goto :goto_1
.end method
