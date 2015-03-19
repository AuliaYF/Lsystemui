.class Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$5;
.super Ljava/util/TimerTask;
.source "TaskExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->showTips(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

.field final synthetic val$floatView:Landroid/view/View;

.field final synthetic val$windowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 999
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$5;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$5;->val$windowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$5;->val$floatView:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$5;->val$windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$5;->val$floatView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1003
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$5;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mShowTips:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->access$802(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;Z)Z

    .line 1004
    return-void
.end method
