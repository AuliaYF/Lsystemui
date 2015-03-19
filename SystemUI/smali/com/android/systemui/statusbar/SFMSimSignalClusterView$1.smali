.class Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;
.super Landroid/content/BroadcastReceiver;
.source "SFMSimSignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SFMSimSignalClusterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SFMSimSignalClusterView;)V
    .locals 0
    .parameter

    .prologue
    .line 889
    iput-object p1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 892
    const-string v1, "SFMSimSignalClusterView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SignalColorChange intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string v1, "com.android.phone.COLOR_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    const-string v1, "SUBSCRIPTION_ID"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 895
    .local v0, sub:I
    if-nez v0, :cond_1

    .line 896
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA3g:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 897
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA1x:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 898
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mSignalCDMA1xOnly:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 899
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 900
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 907
    .end local v0           #sub:I
    :cond_0
    :goto_0
    return-void

    .line 902
    .restart local v0       #sub:I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mMobileSub2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 903
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 904
    iget-object v1, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SFMSimSignalClusterView;->mNoSimSlotSub2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SFMSimSignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SFMSimSignalClusterView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/telephony/MSimTelephonyManager;->getSimColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
