.class public Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;
.source "ExtQuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApnState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;
    }
.end annotation


# instance fields
.field private final APN_ID:Ljava/lang/String;

.field private final DEFAULT:Ljava/lang/String;

.field private final INDEX_APN:I

.field private final INDEX_ID:I

.field private final INDEX_NAME:I

.field private final INDEX_TYPE:I

.field private final PREFERAPN_URI:Landroid/net/Uri;

.field private final PROJECTION:[Ljava/lang/String;

.field private final WAP:Ljava/lang/String;

.field private mApnIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentApn:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;

.field private mNextApn:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    .line 80
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->DEFAULT:Ljava/lang/String;

    .line 81
    const-string v0, "wap"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->WAP:Ljava/lang/String;

    .line 83
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->PREFERAPN_URI:Landroid/net/Uri;

    .line 84
    const-string v0, "apn_id"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->APN_ID:Ljava/lang/String;

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "apn"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->PROJECTION:[Ljava/lang/String;

    .line 89
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->INDEX_ID:I

    .line 90
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->INDEX_NAME:I

    .line 91
    iput v4, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->INDEX_APN:I

    .line 92
    iput v5, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->INDEX_TYPE:I

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->mApnIconMap:Ljava/util/HashMap;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->mApnIconMap:Ljava/util/HashMap;

    const-string v1, "ctwap"

    const v2, 0x7f020053

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->mApnIconMap:Ljava/util/HashMap;

    const-string v1, "ctnet"

    const v2, 0x7f020052

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->mApnIconMap:Ljava/util/HashMap;

    const-string v1, "cmnet"

    const v2, 0x7f020050

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->mApnIconMap:Ljava/util/HashMap;

    const-string v1, "cmwap"

    const v2, 0x7f020051

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private getOperatorNumeric()[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 266
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "persist.radio.use_nv_for_ehrpd"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 268
    const-string v7, "ro.cdma.home.operator.numeric"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, mccMncForEhrpd:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 270
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v2           #mccMncForEhrpd:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 275
    .local v1, dataSub:I
    const/4 v5, 0x0

    .line 276
    .local v5, property:Ljava/lang/String;
    const/4 v3, 0x0

    .line 277
    .local v3, mccMncFromSim:Ljava/lang/String;
    const/4 v0, 0x0

    .line 279
    .local v0, activePhone:I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 280
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #getter for: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone_msim"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/MSimTelephonyManager;

    .line 282
    .local v4, msimTM:Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v1

    .line 283
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneType(I)I

    move-result v0

    .line 289
    .end local v4           #msimTM:Landroid/telephony/MSimTelephonyManager;
    :goto_0
    if-ne v0, v10, :cond_3

    .line 290
    const-string v5, "gsm.apn.ruim.operator.numeric"

    .line 295
    :goto_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 296
    invoke-static {v5, v1, v9}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 303
    :goto_2
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 304
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_1
    new-array v7, v10, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7

    .line 285
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    .line 286
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v0

    goto :goto_0

    .line 292
    :cond_3
    const-string v5, "gsm.apn.sim.operator.numeric"

    goto :goto_1

    .line 299
    :cond_4
    invoke-static {v5, v1, v9}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private getOperatorNumericSelection()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->getOperatorNumeric()[Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, mccmncs:[Ljava/lang/String;
    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, where:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, v0, v5

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " or numeric=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v0, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    const-string v2, "ApnState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOperatorNumericSelection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-object v1

    .line 259
    .end local v1           #where:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 260
    .restart local v1       #where:Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 8

    .prologue
    .line 310
    const/4 v7, 0x0

    .line 312
    .local v7, key:Ljava/lang/String;
    const/4 v6, 0x0

    .line 314
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #getter for: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 316
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 317
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 318
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 321
    :cond_0
    if-eqz v6, :cond_1

    .line 322
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 323
    const/4 v6, 0x0

    .line 326
    :cond_1
    return-object v7

    .line 321
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 322
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 323
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method


# virtual methods
.method public getCurrentApnName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    const-string v0, ""

    .line 133
    .local v0, apn:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->mCurrentApn:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->mCurrentApn:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->apn:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->mCurrentApn:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->apn:Ljava/lang/String;

    .line 136
    :cond_0
    return-object v0
.end method

.method public switchToNextApn(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;)V
    .locals 5
    .parameter "apn"

    .prologue
    const/4 v4, 0x0

    .line 113
    if-nez p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->mNextApn:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;

    .line 119
    :cond_0
    if-eqz p1, :cond_1

    .line 120
    const-string v1, "ApnState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch to the next apn, and it\'s id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "apn_id"

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #getter for: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method public updateApnList()V
    .locals 16

    .prologue
    .line 156
    const-string v1, "ApnState"

    const-string v2, "Try to update the apn list."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v9, 0x0

    .line 158
    .local v9, currentApn:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;
    const/4 v13, 0x0

    .line 160
    .local v13, nextApn:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v8, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;>;"
    const/4 v10, 0x0

    .line 164
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->getOperatorNumericSelection()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, where:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    const-string v1, "ApnState"

    const-string v2, "getOperatorNumericSelection is empty "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    if-eqz v10, :cond_0

    .line 250
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 251
    const/4 v10, 0x0

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v15

    .line 171
    .local v15, selectedKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->this$0:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    #getter for: Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 174
    if-nez v10, :cond_2

    .line 175
    const-string v1, "ApnState"

    const-string v2, "When update the apn list, the cursor is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    if-eqz v10, :cond_0

    .line 250
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 251
    const/4 v10, 0x0

    goto :goto_0

    .line 179
    :cond_2
    const/4 v11, 0x0

    .line 180
    .local v11, getNextApn:Z
    :cond_3
    :goto_1
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 181
    new-instance v7, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;-><init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;)V

    .line 182
    .local v7, apn:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->id:Ljava/lang/String;

    .line 183
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->name:Ljava/lang/String;

    .line 184
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->apn:Ljava/lang/String;

    .line 185
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->type:Ljava/lang/String;

    .line 187
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->type:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->type:Ljava/lang/String;

    const-string v2, "mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_4
    const/4 v14, 0x1

    .line 188
    .local v14, selectable:Z
    :goto_2
    if-eqz v14, :cond_3

    .line 193
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    if-eqz v11, :cond_9

    .line 195
    move-object v13, v7

    .line 196
    const/4 v11, 0x0

    .line 216
    .end local v7           #apn:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;
    .end local v14           #selectable:Z
    :cond_5
    :goto_3
    if-eqz v11, :cond_6

    .line 219
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;

    move-object v13, v0

    .line 227
    :cond_6
    if-nez v9, :cond_d

    .line 228
    if-nez v15, :cond_b

    .line 229
    const/4 v12, 0x0

    .local v12, i:I
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_c

    .line 230
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;

    .line 231
    .restart local v7       #apn:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->type:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->type:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->apn:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->apn:Ljava/lang/String;

    const-string v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->switchToNextApn(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;)V

    .line 229
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 187
    .end local v12           #i:I
    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    .line 202
    .restart local v14       #selectable:Z
    :cond_9
    if-eqz v15, :cond_3

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;->id:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    move-object v9, v7

    .line 204
    invoke-interface {v10}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;

    move-object v13, v0

    .line 208
    const/4 v11, 0x0

    .line 209
    goto :goto_3

    .line 212
    :cond_a
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 241
    .end local v7           #apn:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;
    .end local v14           #selectable:Z
    :cond_b
    const-string v1, "ApnState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The selected key is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but we didn\'t matched the current apn."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    :cond_c
    :goto_5
    if-eqz v10, :cond_0

    .line 250
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 251
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 245
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->mCurrentApn:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;

    .line 246
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->mNextApn:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState$Apn;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 249
    .end local v4           #where:Ljava/lang/String;
    .end local v11           #getNextApn:Z
    .end local v15           #selectedKey:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_e

    .line 250
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 251
    const/4 v10, 0x0

    :cond_e
    throw v1
.end method

.method updateIconId()V
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->getCurrentApnName()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, apn:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->mApnIconMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 142
    .local v1, icon:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$ApnState;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 148
    const v2, 0x7f020053

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 150
    :cond_1
    return-void
.end method
