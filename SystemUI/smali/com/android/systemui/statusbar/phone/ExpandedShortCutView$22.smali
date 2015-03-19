.class Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$22;
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
    .line 934
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$22;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 938
    const-string v0, "ExpandedShortCutView"

    const-string v1, "airplane Mode Button clicked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$22;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->isAirplaneModeOn()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1100(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$22;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 943
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$22;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->sendAirplaneModeIntent(Z)V
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1900(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Z)V

    .line 944
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$22;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAirplaneModeButton:Landroid/widget/Button;

    const v1, 0x7f020021

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 953
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$22;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAirplaneModeButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 955
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$22;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mHandler:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$22;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mHandler:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$H;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 957
    return-void

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$22;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$22;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->sendAirplaneModeIntent(Z)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1900(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Z)V

    .line 950
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$22;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAirplaneModeButton:Landroid/widget/Button;

    const v1, 0x7f020022

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method
