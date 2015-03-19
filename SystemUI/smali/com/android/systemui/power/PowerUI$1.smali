.class Lcom/android/systemui/power/PowerUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 120
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v2, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 121
    .local v2, oldBatteryLevel:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "level"

    const/16 v12, 0x64

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 122
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v10, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 123
    .local v3, oldBatteryStatus:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "status"

    invoke-virtual {p2, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 125
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v10, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 126
    .local v6, oldPlugType:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "plugged"

    invoke-virtual {p2, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 127
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v5, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 128
    .local v5, oldInvalidCharger:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "invalid_charger"

    invoke-virtual {p2, v11, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 130
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v10, :cond_2

    move v8, v9

    .line 131
    .local v8, plugged:Z
    :goto_0
    if-eqz v6, :cond_0

    move v7, v9

    .line 133
    .local v7, oldPlugged:Z
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v10, v2}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v4

    .line 134
    .local v4, oldBucket:I
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v11, v11, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v10, v11}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v1

    .line 148
    .local v1, bucket:I
    if-nez v5, :cond_3

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    if-eqz v10, :cond_3

    .line 149
    const-string v9, "PowerUI"

    const-string v10, "showing invalid charger warning"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->showInvalidChargerDialog()V

    .line 181
    .end local v1           #bucket:I
    .end local v2           #oldBatteryLevel:I
    .end local v3           #oldBatteryStatus:I
    .end local v4           #oldBucket:I
    .end local v5           #oldInvalidCharger:I
    .end local v6           #oldPlugType:I
    .end local v7           #oldPlugged:Z
    .end local v8           #plugged:Z
    :cond_1
    :goto_1
    return-void

    .restart local v2       #oldBatteryLevel:I
    .restart local v3       #oldBatteryStatus:I
    .restart local v5       #oldInvalidCharger:I
    .restart local v6       #oldPlugType:I
    :cond_2
    move v8, v7

    .line 130
    goto :goto_0

    .line 152
    .restart local v1       #bucket:I
    .restart local v4       #oldBucket:I
    .restart local v7       #oldPlugged:Z
    .restart local v8       #plugged:Z
    :cond_3
    if-eqz v5, :cond_7

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    if-nez v10, :cond_7

    .line 153
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v10}, Lcom/android/systemui/power/PowerUI;->dismissInvalidChargerDialog()V

    .line 159
    :cond_4
    if-nez v8, :cond_8

    if-lt v1, v4, :cond_5

    if-eqz v7, :cond_8

    :cond_5
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq v10, v9, :cond_8

    if-gez v1, :cond_8

    .line 163
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 166
    if-ne v1, v4, :cond_6

    if-eqz v7, :cond_1

    .line 167
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->playLowBatterySound()V

    goto :goto_1

    .line 154
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v10, v10, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_4

    goto :goto_1

    .line 169
    :cond_8
    if-nez v8, :cond_9

    if-le v1, v4, :cond_a

    if-lez v1, :cond_a

    .line 170
    :cond_9
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto :goto_1

    .line 171
    :cond_a
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v9, v9, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_1

    .line 172
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v9}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto :goto_1

    .line 174
    .end local v1           #bucket:I
    .end local v2           #oldBatteryLevel:I
    .end local v3           #oldBatteryStatus:I
    .end local v4           #oldBucket:I
    .end local v5           #oldInvalidCharger:I
    .end local v6           #oldPlugType:I
    .end local v7           #oldPlugged:Z
    .end local v8           #plugged:Z
    :cond_b
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 175
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    #setter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static {v9, v10, v11}, Lcom/android/systemui/power/PowerUI;->access$102(Lcom/android/systemui/power/PowerUI;J)J

    goto :goto_1

    .line 176
    :cond_c
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 177
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v10, -0x1

    #setter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static {v9, v10, v11}, Lcom/android/systemui/power/PowerUI;->access$102(Lcom/android/systemui/power/PowerUI;J)J

    goto :goto_1

    .line 179
    :cond_d
    const-string v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
