.class Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;
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
    .line 504
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/16 v5, 0x66

    const/16 v4, 0x65

    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 508
    const-string v0, "ExpandedShortCutView"

    const-string v1, "silent Button clicked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->getRingMode()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$700(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRingMode:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$602(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;I)I

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRingMode:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$600(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)I

    move-result v0

    if-ne v4, v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #setter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRingMode:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$602(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;I)I

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$800(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 514
    const-string v0, "persist.sys.bootsong"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSilentButton:Landroid/widget/Button;

    const v1, 0x7f0200a8

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 532
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRingMode:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$600(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #setter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRingMode:I
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$602(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;I)I

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$800(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 520
    const-string v0, "persist.sys.bootsong"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSilentButton:Landroid/widget/Button;

    const v1, 0x7f0200a7

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRingMode:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$600(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)I

    move-result v0

    if-ne v5, v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #setter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mRingMode:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$602(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;I)I

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$800(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 526
    const-string v0, "persist.sys.bootsong"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$9;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mSilentButton:Landroid/widget/Button;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 530
    :cond_2
    const-string v0, "ExpandedShortCutView"

    const-string v1, "select ring error!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
