.class public Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;
.super Ljava/lang/Object;
.source "ExtQuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Apn"
.end annotation


# instance fields
.field apn:Ljava/lang/String;

.field id:Ljava/lang/String;

.field name:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->this$1:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
