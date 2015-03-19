.class Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$21;
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
    .line 910
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$21;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 914
    const-string v0, "ExpandedShortCutView"

    const-string v3, "Rotate Button clicked"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$21;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$21;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accelerometer_rotation"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateMode:Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1802(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Z)Z

    .line 918
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$21;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$21;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateMode:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1800(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    #setter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateMode:Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1802(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Z)Z

    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$21;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateMode:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1800(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 920
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$21;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 922
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$21;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateButton:Landroid/widget/Button;

    const v1, 0x7f02009f

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 930
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 916
    goto :goto_0

    :cond_1
    move v0, v2

    .line 918
    goto :goto_1

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$21;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 927
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$21;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRotateButton:Landroid/widget/Button;

    const v1, 0x7f02009e

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2
.end method
