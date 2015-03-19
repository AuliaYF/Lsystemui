.class Lcom/mda/Ltoggle/SignalToggle$2;
.super Ljava/lang/Object;
.source "SignalToggle.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mda/Ltoggle/SignalToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mda/Ltoggle/SignalToggle;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mda/Ltoggle/SignalToggle;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mda/Ltoggle/SignalToggle$2;->this$0:Lcom/mda/Ltoggle/SignalToggle;

    iput-object p2, p0, Lcom/mda/Ltoggle/SignalToggle$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, i:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.Settings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 91
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    iget-object v2, p0, Lcom/mda/Ltoggle/SignalToggle$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mda/Ltoggle/SignalToggle$2;->val$context:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 94
    .local v1, statusBar:Landroid/app/StatusBarManager;
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 97
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
