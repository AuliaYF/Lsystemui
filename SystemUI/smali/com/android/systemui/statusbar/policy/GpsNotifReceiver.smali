.class public Lcom/android/systemui/statusbar/policy/GpsNotifReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GpsNotifReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/GpsNotifReceiver$LocationGpsStateChangeCallback;
    }
.end annotation


# instance fields
.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/GpsNotifReceiver$LocationGpsStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mNotificationService:Landroid/app/INotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 63
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver;->mNotificationService:Landroid/app/INotificationManager;

    .line 64
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 73
    .local v12, action:Ljava/lang/String;
    const-string v1, "enabled"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 78
    .local v14, enabled:Z
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v14, :cond_1

    .line 80
    const v16, 0x10805d4

    .line 81
    .local v16, iconId:I
    const v19, 0x7f0a00b4

    .line 82
    .local v19, textResId:I
    const/16 v20, 0x1

    .line 95
    .local v20, visible:Z
    :goto_0
    if-eqz v20, :cond_3

    .line 96
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, gpsIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v17

    .line 101
    .local v17, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver;->mContext:Landroid/content/Context;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 103
    .local v18, text:Ljava/lang/String;
    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 111
    .local v9, n:Landroid/app/Notification;
    const/4 v1, 0x0

    iput-object v1, v9, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 112
    const/4 v1, 0x0

    iput-object v1, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 114
    const/4 v1, 0x1

    iput v1, v9, Landroid/app/Notification;->priority:I

    .line 116
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 117
    .local v10, idOut:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver;->mNotificationService:Landroid/app/INotificationManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x3d8d7

    const/4 v11, -0x1

    invoke-interface/range {v4 .. v11}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver$LocationGpsStateChangeCallback;

    .line 126
    .local v13, cb:Lcom/android/systemui/statusbar/policy/GpsNotifReceiver$LocationGpsStateChangeCallback;
    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-interface {v13, v1, v0}, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver$LocationGpsStateChangeCallback;->onLocationGpsStateChanged(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 137
    .end local v3           #gpsIntent:Landroid/content/Intent;
    .end local v9           #n:Landroid/app/Notification;
    .end local v10           #idOut:[I
    .end local v13           #cb:Lcom/android/systemui/statusbar/policy/GpsNotifReceiver$LocationGpsStateChangeCallback;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #pendingIntent:Landroid/app/PendingIntent;
    .end local v18           #text:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 140
    :cond_0
    return-void

    .line 83
    .end local v16           #iconId:I
    .end local v19           #textResId:I
    .end local v20           #visible:Z
    :cond_1
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v14, :cond_2

    .line 85
    const/16 v20, 0x0

    .line 86
    .restart local v20       #visible:Z
    const/16 v19, 0x0

    .restart local v19       #textResId:I
    move/from16 v16, v19

    .restart local v16       #iconId:I
    goto/16 :goto_0

    .line 89
    .end local v16           #iconId:I
    .end local v19           #textResId:I
    .end local v20           #visible:Z
    :cond_2
    const v16, 0x7f02013a

    .line 90
    .restart local v16       #iconId:I
    const v19, 0x7f0a00b3

    .line 91
    .restart local v19       #textResId:I
    const/16 v20, 0x1

    .restart local v20       #visible:Z
    goto/16 :goto_0

    .line 129
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver;->mNotificationService:Landroid/app/INotificationManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x3d8d7

    const/4 v6, -0x1

    invoke-interface {v1, v2, v4, v5, v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver$LocationGpsStateChangeCallback;

    .line 134
    .restart local v13       #cb:Lcom/android/systemui/statusbar/policy/GpsNotifReceiver$LocationGpsStateChangeCallback;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v13, v1, v2}, Lcom/android/systemui/statusbar/policy/GpsNotifReceiver$LocationGpsStateChangeCallback;->onLocationGpsStateChanged(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
