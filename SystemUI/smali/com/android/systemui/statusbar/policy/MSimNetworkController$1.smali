.class Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;
.super Landroid/telephony/PhoneStateListener;
.source "MSimNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 536
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged received on subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 544
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 570
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity received on subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    aput p1, v0, v1

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 576
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 549
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged received on subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget v0, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateIconSet(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 565
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 506
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged received on subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    aput-object p1, v0, v1

    .line 510
    const-string v0, "ro.config.combined_signal"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v3, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    aput v2, v0, v1

    .line 518
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Combining data service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    iget v3, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for signal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateIconSet(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowSpn:[Z

    iget v2, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    aget-boolean v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSpn:[Ljava/lang/String;

    iget v3, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowPlmn:[Z

    iget v4, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    aget-boolean v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPlmn:[Ljava/lang/String;

    iget v5, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    aget-object v4, v4, v5

    iget v5, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateCarrierText(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 531
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .parameter "signalStrength"

    .prologue
    .line 493
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged received on subscription :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "signalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    aput-object p1, v0, v1

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateIconSet(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Landroid/telephony/PhoneStateListener;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 501
    return-void

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
