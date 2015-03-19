.class Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$2;
.super Ljava/lang/Object;
.source "ExtQuickSettingsModel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->addRoamingTile()Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$2;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 2
    .parameter "unused"
    .parameter "state"

    .prologue
    .line 497
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$2;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #getter for: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$700(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$2;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #getter for: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$700(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    move-result-object v0

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    goto :goto_0
.end method
