.class Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;
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
    .line 833
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const v8, 0x111001b

    const/4 v7, 0x0

    .line 837
    const-string v5, "ExpandedShortCutView"

    const-string v6, "bright Button clicked"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 843
    .local v4, power:Landroid/os/IPowerManager;
    const/4 v1, 0x1

    .line 844
    .local v1, brightnessMode:I
    const/16 v0, 0x1e

    .line 846
    .local v0, brightness:I
    if-eqz v4, :cond_0

    .line 847
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->getBrightness()I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1600(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)I

    move-result v0

    .line 848
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->getBrightnessMode()I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1700(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)I

    move-result v1

    .line 852
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 856
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->getBrightnessMode()I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$1700(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)I

    move-result v1

    .line 860
    :cond_1
    const/4 v5, 0x1

    if-ne v5, v1, :cond_3

    .line 861
    const/16 v0, 0x1e

    .line 862
    const/4 v1, 0x0

    .line 863
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBrightNessButton:Landroid/widget/Button;

    const v6, 0x7f02002b

    invoke-virtual {v5, v7, v6, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 880
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 885
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 893
    :goto_1
    if-nez v1, :cond_2

    .line 895
    :try_start_0
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 903
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.settings.BRIGHTNESS_STATUS_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 905
    .local v3, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 906
    return-void

    .line 865
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    const/16 v5, 0x1e

    if-gt v0, v5, :cond_4

    .line 866
    const/16 v0, 0x66

    .line 867
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBrightNessButton:Landroid/widget/Button;

    const v6, 0x7f020029

    invoke-virtual {v5, v7, v6, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 869
    :cond_4
    const/16 v5, 0x66

    if-gt v0, v5, :cond_5

    .line 870
    const/16 v0, 0xff

    .line 871
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBrightNessButton:Landroid/widget/Button;

    const v6, 0x7f02002a

    invoke-virtual {v5, v7, v6, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 874
    :cond_5
    const/4 v1, 0x1

    .line 875
    const/16 v0, 0x1e

    .line 876
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$20;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mBrightNessButton:Landroid/widget/Button;

    const v6, 0x7f020028

    invoke-virtual {v5, v7, v6, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 890
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 896
    :catch_0
    move-exception v2

    .line 897
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "ExpandedShortCutView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BrightnessListener catch RemoteException:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
