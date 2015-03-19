.class Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$8;
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
    .line 476
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$8;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 480
    const-string v0, "ExpandedShortCutView"

    const-string v1, "bluetooth button clicked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$8;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$500(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$8;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$500(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$8;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$500(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 494
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$8;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothButton:Landroid/widget/Button;

    const v1, 0x7f020027

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 496
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$8;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$500(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0

    .line 492
    :cond_1
    const-string v0, "ExpandedShortCutView"

    const-string v1, "BluetoothAdapter is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
