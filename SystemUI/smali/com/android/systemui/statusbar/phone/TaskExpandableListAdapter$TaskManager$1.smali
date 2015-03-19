.class Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager$1;
.super Ljava/lang/Object;
.source "TaskExpandableListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;)V
    .locals 0
    .parameter

    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager$1;->this$1:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager$1;->this$1:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->getRunningProcess()V

    .line 880
    return-void
.end method
