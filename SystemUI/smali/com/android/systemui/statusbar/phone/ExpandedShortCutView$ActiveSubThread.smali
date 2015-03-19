.class abstract Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;
.super Ljava/lang/Thread;
.source "ExpandedShortCutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ActiveSubThread"
.end annotation


# instance fields
.field cm:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

.field private final mSub:I

.field matctive_succ:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;ILandroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "sub"
    .parameter "ct"

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1099
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->matctive_succ:Z

    .line 1103
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->mSub:I

    .line 1104
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->mContext:Landroid/content/Context;

    .line 1105
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->cm:Landroid/net/ConnectivityManager;

    .line 1108
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1112
    const-string v1, "ExpandedShortCutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin setActivppp sub="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->mSub:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->mSimTeleManager:Landroid/telephony/MSimTelephonyManager;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->mSub:I

    invoke-virtual {v1, v2}, Landroid/telephony/MSimTelephonyManager;->setPreferredDataSubscription(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->matctive_succ:Z

    .line 1114
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->matctive_succ:Z

    if-ne v1, v4, :cond_0

    .line 1115
    const-string v1, "ExpandedShortCutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end setActivppp sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->mSub:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " successed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.DATA_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1119
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "STATE_DATA_ENABLE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1120
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1124
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1122
    :cond_0
    const-string v1, "ExpandedShortCutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end  setActivppp sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$ActiveSubThread;->mSub:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
