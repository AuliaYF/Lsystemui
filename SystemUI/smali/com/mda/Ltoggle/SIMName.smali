.class public Lcom/mda/Ltoggle/SIMName;
.super Landroid/widget/TextView;
.source "SIM.java"


# static fields
.field public static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field public static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field public static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field public static final EXTRA_SIMID:Ljava/lang/String; = "simId"

.field public static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field public static final SIM1NUM:I = 0x0

.field public static final SIM2NUM:I = 0x1

.field public static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"


# instance fields
.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private sAttached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mda/Ltoggle/SIMName;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mda/Ltoggle/SIMName;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Lcom/mda/Ltoggle/SIMName$1;

    invoke-direct {v0, p0}, Lcom/mda/Ltoggle/SIMName$1;-><init>(Lcom/mda/Ltoggle/SIMName;)V

    iput-object v0, p0, Lcom/mda/Ltoggle/SIMName;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/mda/Ltoggle/SIMName;->updateSIM(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 40
    iget-boolean v1, p0, Lcom/mda/Ltoggle/SIMName;->sAttached:Z

    if-nez v1, :cond_0

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mda/Ltoggle/SIMName;->sAttached:Z

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/mda/Ltoggle/SIMName;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mda/Ltoggle/SIMName;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mda/Ltoggle/SIMName;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 47
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 52
    iget-boolean v0, p0, Lcom/mda/Ltoggle/SIMName;->sAttached:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/mda/Ltoggle/SIMName;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mda/Ltoggle/SIMName;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mda/Ltoggle/SIMName;->sAttached:Z

    .line 56
    :cond_0
    return-void
.end method

.method updateSIM(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v2, str:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 75
    .local v1, something:Z
    const-string v0, "No sim"

    .line 76
    .local v0, sn:Ljava/lang/String;
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 77
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/4 v1, 0x1

    .line 80
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 81
    if-eqz v1, :cond_1

    .line 82
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const/4 v1, 0x1

    .line 87
    :cond_2
    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mda/Ltoggle/SIMName;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/SIMName;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
