.class Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$4;
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
    .line 396
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$4;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

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

    .line 400
    const-string v3, "ExpandedShortCutView"

    const-string v4, "sync Button clicked"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 403
    .local v0, isEnable:Z
    if-eqz v0, :cond_0

    .line 404
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 408
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$4;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateButton(IZ)V

    .line 409
    return-void

    .line 406
    :cond_0
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 408
    goto :goto_1
.end method
