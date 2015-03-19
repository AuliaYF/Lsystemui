.class Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$1;
.super Ljava/lang/Object;
.source "ExtQuickSettingsModel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 486
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$1;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 489
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$1;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #calls: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->getDataRoaming(I)Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$500(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;I)Z

    move-result v0

    .line 490
    .local v0, enable:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$1;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->setDataRoaming(ZI)V
    invoke-static {v3, v1, v2}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$600(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;ZI)V

    .line 491
    return-void

    :cond_0
    move v1, v2

    .line 490
    goto :goto_0
.end method
