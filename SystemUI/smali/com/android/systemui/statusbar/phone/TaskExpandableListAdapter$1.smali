.class Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$1;
.super Ljava/lang/Object;
.source "TaskExpandableListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$1;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 215
    .local v1, tag:Ljava/lang/String;
    const-string v2, "killchild-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 218
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 219
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 220
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$1;->this$0:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mHandler:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->access$200(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v2

    goto :goto_0
.end method
