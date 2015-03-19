.class Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.super Landroid/widget/FrameLayout;
.source "QuickSettingsTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;
    }
.end annotation


# instance fields
.field private mColSpan:I

.field private mContentLayoutId:I

.field private mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

.field private mPrepared:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContentLayoutId:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mColSpan:I

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V

    return-void
.end method

.method private isParentVisible()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v2

    .line 131
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, current:Landroid/view/ViewParent;
    :goto_1
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 133
    check-cast v1, Landroid/view/View;

    .line 134
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 132
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 138
    .end local v1           #view:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updatePreparedState()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->isParentVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;->onPrepare()V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;->onUnprepare()V

    goto :goto_0
.end method


# virtual methods
.method getColumnSpan()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mColSpan:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V

    .line 105
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V

    .line 111
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V

    .line 99
    return-void
.end method

.method reinflateContent(Landroid/view/LayoutInflater;)V
    .locals 2
    .parameter "inflater"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContentLayoutId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 61
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContentLayoutId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v0, "QuickSettingsTileView"

    const-string v1, "Not reinflating content: No layoutId set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setColumnSpan(I)V
    .locals 0
    .parameter "span"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mColSpan:I

    .line 47
    return-void
.end method

.method setContent(ILandroid/view/LayoutInflater;)V
    .locals 0
    .parameter "layoutId"
    .parameter "inflater"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContentLayoutId:I

    .line 55
    invoke-virtual {p2, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    return-void
.end method

.method public setOnPrepareListener(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    if-eq v0, p1, :cond_0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 93
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "vis"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method
