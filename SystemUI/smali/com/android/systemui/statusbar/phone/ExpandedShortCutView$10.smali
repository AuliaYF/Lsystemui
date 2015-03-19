.class Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$10;
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
    .line 537
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$10;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 541
    const-string v1, "ExpandedShortCutView"

    const-string v2, "DOLBY button clicked"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$10;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClient:Landroid/dolby/DsClient;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$000(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/dolby/DsClient;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$10;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClientConnected:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$100(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$10;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClient:Landroid/dolby/DsClient;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$000(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/dolby/DsClient;

    move-result-object v1

    invoke-virtual {v1}, Landroid/dolby/DsClient;->getDsOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$10;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClient:Landroid/dolby/DsClient;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$000(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/dolby/DsClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/dolby/DsClient;->setDsOn(Z)V

    .line 549
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$10;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDolbyButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$900(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f020035

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$10;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClient:Landroid/dolby/DsClient;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$000(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/dolby/DsClient;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/dolby/DsClient;->setDsOn(Z)V

    .line 554
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$10;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDolbyButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$900(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f020036

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 560
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$10;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->unbindDsClient()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$200(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    goto :goto_0
.end method
