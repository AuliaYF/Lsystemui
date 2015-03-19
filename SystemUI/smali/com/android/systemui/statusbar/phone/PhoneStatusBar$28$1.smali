.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

.field final synthetic val$snapshot:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2574
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 2579
    const/16 v0, 0xa

    .line 2580
    .local v0, ROW_DELAY_DECREMENT:I
    const/16 v2, 0x8c

    .line 2581
    .local v2, currentDelay:I
    const/4 v6, 0x0

    .line 2586
    .local v6, totalDelay:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setViewRemoval(Z)V

    .line 2588
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1$1;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;)V

    iput-object v10, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 2601
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2602
    .local v5, sampleView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 2603
    .local v8, width:I
    invoke-virtual {v5}, Landroid/view/View;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v3, -0x1

    .line 2604
    .local v3, dir:I
    :goto_0
    mul-int v9, v3, v8

    mul-int/lit8 v7, v9, 0x8

    .line 2605
    .local v7, velocity:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2606
    .local v1, _v:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1$2;

    invoke-direct {v10, p0, v1, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;Landroid/view/View;I)V

    int-to-long v11, v6

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2612
    const/16 v9, 0x32

    add-int/lit8 v10, v2, -0xa

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2613
    add-int/2addr v6, v2

    goto :goto_1

    .line 2603
    .end local v1           #_v:Landroid/view/View;
    .end local v3           #dir:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #velocity:I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 2620
    .restart local v3       #dir:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #velocity:I
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1$3;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28$1;)V

    add-int/lit16 v11, v6, 0xe1

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2626
    return-void
.end method
