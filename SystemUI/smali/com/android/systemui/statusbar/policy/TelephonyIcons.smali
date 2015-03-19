.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_4G:[[I

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_LTE:[[I

.field static final DATA_SIGNAL_STRENGTH:[[I

.field static final QS_DATA_1X:[I

.field static final QS_DATA_3G:[I

.field static final QS_DATA_4G:[I

.field static final QS_DATA_E:[I

.field static final QS_DATA_G:[I

.field static final QS_DATA_H:[I

.field static final QS_DATA_LTE:[I

.field static final QS_DATA_R:[I

.field static final QS_TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

.field private static isInitiated:Z

.field static mDataActivityArray:[Ljava/lang/String;

.field static mDataTypeArray:[Ljava/lang/String;

.field static mDataTypeDescriptionArray:[Ljava/lang/String;

.field static mDataTypeGenerationArray:[Ljava/lang/String;

.field static mDataTypeGenerationDescArray:[Ljava/lang/String;

.field static mNoSimArray:[Ljava/lang/String;

.field private static mRes:Landroid/content/res/Resources;

.field static mSelectedDataActivityIndex:[I

.field static mSelectedDataTypeDesc:Ljava/lang/String;

.field static mSelectedDataTypeIcon:[I

.field static mSelectedQSDataTypeIcon:[I

.field static mSelectedSignalStreagthIndex:[I

.field static mSignalNullArray:[Ljava/lang/String;

.field static mSignalStrengthArray:[Ljava/lang/String;

.field static mSignalStrengthDesc:[Ljava/lang/String;

.field static mSignalStrengthRoamingArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 33
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 48
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 63
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 78
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    .line 83
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    .line 88
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    .line 99
    new-array v0, v2, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    .line 104
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    .line 115
    new-array v0, v2, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    .line 120
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    .line 131
    new-array v0, v2, [I

    fill-array-data v0, :array_f

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    .line 137
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    .line 148
    new-array v0, v2, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    .line 155
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    .line 166
    new-array v0, v2, [I

    fill-array-data v0, :array_15

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    .line 172
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    .line 183
    new-array v0, v2, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    .line 189
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    .line 200
    new-array v0, v2, [I

    fill-array-data v0, :array_1b

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    .line 246
    sput-boolean v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    return-void

    .line 33
    :array_0
    .array-data 0x4
        0x93t 0x1t 0x2t 0x7ft
        0xd5t 0x1t 0x2t 0x7ft
        0x1bt 0x2t 0x2t 0x7ft
        0x61t 0x2t 0x2t 0x7ft
        0xa7t 0x2t 0x2t 0x7ft
        0xe9t 0x2t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xbat 0x1t 0x2t 0x7ft
        0xfct 0x1t 0x2t 0x7ft
        0x42t 0x2t 0x2t 0x7ft
        0x88t 0x2t 0x2t 0x7ft
        0xcet 0x2t 0x2t 0x7ft
        0xfct 0x2t 0x2t 0x7ft
    .end array-data

    .line 48
    :array_2
    .array-data 0x4
        0x69t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
        0x70t 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x73t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
        0x76t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
    .end array-data

    .line 63
    :array_4
    .array-data 0x4
        0x93t 0x1t 0x2t 0x7ft
        0xd5t 0x1t 0x2t 0x7ft
        0x1bt 0x2t 0x2t 0x7ft
        0x61t 0x2t 0x2t 0x7ft
        0xa7t 0x2t 0x2t 0x7ft
        0xe9t 0x2t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0xbat 0x1t 0x2t 0x7ft
        0xfct 0x1t 0x2t 0x7ft
        0x42t 0x2t 0x2t 0x7ft
        0x88t 0x2t 0x2t 0x7ft
        0xcet 0x2t 0x2t 0x7ft
        0xfct 0x2t 0x2t 0x7ft
    .end array-data

    .line 78
    :array_6
    .array-data 0x4
        0x8bt 0x0t 0x2t 0x7ft
        0x81t 0x0t 0x2t 0x7ft
    .end array-data

    .line 88
    :array_7
    .array-data 0x4
        0xfbt 0x0t 0x2t 0x7ft
        0xfbt 0x0t 0x2t 0x7ft
        0xfbt 0x0t 0x2t 0x7ft
        0xfbt 0x0t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0xfbt 0x0t 0x2t 0x7ft
        0xfbt 0x0t 0x2t 0x7ft
        0xfbt 0x0t 0x2t 0x7ft
        0xfbt 0x0t 0x2t 0x7ft
    .end array-data

    .line 99
    :array_9
    .array-data 0x4
        0x82t 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 104
    :array_a
    .array-data 0x4
        0xf8t 0x0t 0x2t 0x7ft
        0xf8t 0x0t 0x2t 0x7ft
        0xf8t 0x0t 0x2t 0x7ft
        0xf8t 0x0t 0x2t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0xf8t 0x0t 0x2t 0x7ft
        0xf8t 0x0t 0x2t 0x7ft
        0xf8t 0x0t 0x2t 0x7ft
        0xf8t 0x0t 0x2t 0x7ft
    .end array-data

    .line 115
    :array_c
    .array-data 0x4
        0x6ft 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
    .end array-data

    .line 120
    :array_d
    .array-data 0x4
        0xfat 0x0t 0x2t 0x7ft
        0xfat 0x0t 0x2t 0x7ft
        0xfat 0x0t 0x2t 0x7ft
        0xfat 0x0t 0x2t 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0xfat 0x0t 0x2t 0x7ft
        0xfat 0x0t 0x2t 0x7ft
        0xfat 0x0t 0x2t 0x7ft
        0xfat 0x0t 0x2t 0x7ft
    .end array-data

    .line 131
    :array_f
    .array-data 0x4
        0x72t 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 137
    :array_10
    .array-data 0x4
        0xfct 0x0t 0x2t 0x7ft
        0xfct 0x0t 0x2t 0x7ft
        0xfct 0x0t 0x2t 0x7ft
        0xfct 0x0t 0x2t 0x7ft
    .end array-data

    :array_11
    .array-data 0x4
        0xfct 0x0t 0x2t 0x7ft
        0xfct 0x0t 0x2t 0x7ft
        0xfct 0x0t 0x2t 0x7ft
        0xfct 0x0t 0x2t 0x7ft
    .end array-data

    .line 148
    :array_12
    .array-data 0x4
        0x83t 0x0t 0x2t 0x7ft
        0x7et 0x0t 0x2t 0x7ft
    .end array-data

    .line 155
    :array_13
    .array-data 0x4
        0xf7t 0x0t 0x2t 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
    .end array-data

    :array_14
    .array-data 0x4
        0xf7t 0x0t 0x2t 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
    .end array-data

    .line 166
    :array_15
    .array-data 0x4
        0x6bt 0x0t 0x2t 0x7ft
        0x75t 0x0t 0x2t 0x7ft
    .end array-data

    .line 172
    :array_16
    .array-data 0x4
        0xf9t 0x0t 0x2t 0x7ft
        0xf9t 0x0t 0x2t 0x7ft
        0xf9t 0x0t 0x2t 0x7ft
        0xf9t 0x0t 0x2t 0x7ft
    .end array-data

    :array_17
    .array-data 0x4
        0xf9t 0x0t 0x2t 0x7ft
        0xf9t 0x0t 0x2t 0x7ft
        0xf9t 0x0t 0x2t 0x7ft
        0xf9t 0x0t 0x2t 0x7ft
    .end array-data

    .line 183
    :array_18
    .array-data 0x4
        0x71t 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 189
    :array_19
    .array-data 0x4
        0xfet 0x0t 0x2t 0x7ft
        0xfet 0x0t 0x2t 0x7ft
        0xfet 0x0t 0x2t 0x7ft
        0xfet 0x0t 0x2t 0x7ft
    .end array-data

    :array_1a
    .array-data 0x4
        0xfet 0x0t 0x2t 0x7ft
        0xfet 0x0t 0x2t 0x7ft
        0xfet 0x0t 0x2t 0x7ft
        0xfet 0x0t 0x2t 0x7ft
    .end array-data

    .line 200
    :array_1b
    .array-data 0x4
        0x87t 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDataActivity(I)I
    .locals 1
    .parameter "activity"

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataActivity(II)I

    move-result v0

    return v0
.end method

.method static getDataActivity(II)I
    .locals 8
    .parameter "sub"
    .parameter "activity"

    .prologue
    const/4 v7, 0x0

    .line 517
    const-string v2, "TelephonyIcons"

    const-string v3, "getDataActivity, sub=%d, activity=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    aget-object v4, v4, p0

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, dataActivityArray:[Ljava/lang/String;
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    aget v4, v4, p0

    aget-object v4, v0, v4

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, selectedTypeArray:[Ljava/lang/String;
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v3, v1, p1

    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method static getDataTypeDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    return-object v0
.end method

.method static getDataTypeIcon()I
    .locals 2

    .prologue
    .line 500
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method static getDataTypeIcon(I)I
    .locals 6
    .parameter "sub"

    .prologue
    .line 504
    const-string v0, "TelephonyIcons"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataTypeIcon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sub=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    aget v0, v0, p0

    return v0
.end method

.method static getNoSimIcon()I
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNoSimIcon(I)I

    move-result v0

    return v0
.end method

.method static getNoSimIcon(I)I
    .locals 5
    .parameter "sub"

    .prologue
    .line 306
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mNoSimArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    .line 309
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mNoSimArray:[Ljava/lang/String;

    aget-object v1, v2, p0

    .line 310
    .local v1, resName:Ljava/lang/String;
    const-string v2, "TelephonyIcons"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no sim icon name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const/4 v3, 0x0

    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 312
    .local v0, resId:I
    goto :goto_0
.end method

.method static getQSDataTypeIcon()I
    .locals 2

    .prologue
    .line 492
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method static getQSDataTypeIcon(I)I
    .locals 1
    .parameter "sub"

    .prologue
    .line 496
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    aget v0, v0, p0

    return v0
.end method

.method static getSignalNullIcon()I
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalNullIcon(I)I

    move-result v0

    return v0
.end method

.method static getSignalNullIcon(I)I
    .locals 5
    .parameter "sub"

    .prologue
    .line 320
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    .line 323
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    aget-object v1, v2, p0

    .line 324
    .local v1, resName:Ljava/lang/String;
    const-string v2, "TelephonyIcons"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null signal icon name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const/4 v3, 0x0

    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 326
    .local v0, resId:I
    goto :goto_0
.end method

.method static getSignalStrengthDes(I)Ljava/lang/String;
    .locals 1
    .parameter "level"

    .prologue
    .line 571
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalStrengthDes(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSignalStrengthDes(II)Ljava/lang/String;
    .locals 1
    .parameter "sub"
    .parameter "level"

    .prologue
    .line 575
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthDesc:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method static getSignalStrengthIcon(IIIZ)I
    .locals 12
    .parameter "sub"
    .parameter "inetCondition"
    .parameter "level"
    .parameter "isRoaming"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 536
    const-string v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSignalStrengthIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sub=%d, inetCondition=%d, level=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v3, "TelephonyIcons"

    const-string v4, "mSignalStrengthArray.length = %d"

    new-array v5, v10, [Ljava/lang/Object;

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    if-nez p3, :cond_0

    .line 545
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    aget-object v5, v5, p0

    const-string v6, "com.android.systemui"

    invoke-virtual {v4, v5, v11, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, signalStrengthArray:[Ljava/lang/String;
    :goto_0
    const-string v3, "TelephonyIcons"

    const-string v4, "signalStrengthArray.length = %d"

    new-array v5, v10, [Ljava/lang/Object;

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    aget v5, v5, p0

    aget-object v5, v2, v5

    const-string v6, "com.android.systemui"

    invoke-virtual {v4, v5, v11, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, selectedTypeArray:[Ljava/lang/String;
    const-string v3, "TelephonyIcons"

    const-string v4, "selectedTypeArray.length = %d"

    new-array v5, v10, [Ljava/lang/Object;

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v1, p1

    const-string v6, "com.android.systemui"

    invoke-virtual {v4, v5, v11, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, inetArray:[Ljava/lang/String;
    const-string v3, "TelephonyIcons"

    const-string v4, "inetArray.length = %d"

    new-array v5, v10, [Ljava/lang/Object;

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v4, v0, p2

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v4, v11, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3

    .line 548
    .end local v0           #inetArray:[Ljava/lang/String;
    .end local v1           #selectedTypeArray:[Ljava/lang/String;
    .end local v2           #signalStrengthArray:[Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthRoamingArray:[Ljava/lang/String;

    aget-object v5, v5, p0

    const-string v6, "com.android.systemui"

    invoke-virtual {v4, v5, v11, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #signalStrengthArray:[Ljava/lang/String;
    goto :goto_0
.end method

.method static getSignalStrengthIcon(IIZ)I
    .locals 1
    .parameter "inetCondition"
    .parameter "level"
    .parameter "isRoaming"

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalStrengthIcon(IIIZ)I

    move-result v0

    return v0
.end method

.method static initAll(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 249
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    if-eqz v1, :cond_0

    .line 250
    const-string v1, "TelephonyIcons"

    const-string v2, "initAll, already initiated!"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 256
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    .line 258
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f06000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    .line 260
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f06000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    .line 262
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    .line 264
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    .line 266
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    .line 268
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f060030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthRoamingArray:[Ljava/lang/String;

    .line 270
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f06006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    .line 272
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mNoSimArray:[Ljava/lang/String;

    .line 274
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f06006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthDesc:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 284
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    .line 286
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 288
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    .line 290
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_3

    .line 292
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    .line 294
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_4

    .line 296
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    .line 298
    :cond_4
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    goto/16 :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    .line 278
    const-string v1, "TelephonyIcons"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAll, exception happened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 580
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void
.end method

.method static updateDataType(IIZZZI)V
    .locals 9
    .parameter "sub"
    .parameter "type"
    .parameter "showAtLeast3G"
    .parameter "show4GforLte"
    .parameter "hspaDistinguishable"
    .parameter "inetCondition"

    .prologue
    .line 339
    const-string v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sub=%d, type=%d, inetCondition=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " showAtLeast3G="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " show4GforLte="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hspaDistinguishable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    aget-object v2, v3, p0

    .line 347
    .local v2, resName:Ljava/lang/String;
    const-string v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data type item name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const/4 v4, 0x0

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 349
    .local v1, resId:I
    const-string v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data type item id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, dataTypeArray:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 478
    :pswitch_0
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 479
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 480
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 481
    const-string v3, ""

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 482
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 485
    :goto_0
    const-string v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mSelectedDataTypeIcon[%d]=%d, mSelectedDataActivityIndex=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    aget v8, v8, p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    aget v8, v8, p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void

    .line 354
    :pswitch_1
    if-nez p2, :cond_0

    .line 355
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 357
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 358
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 359
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 360
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    goto :goto_0

    .line 366
    :cond_0
    :pswitch_2
    if-nez p2, :cond_1

    .line 367
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 369
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 370
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 371
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    .line 372
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x1

    aput v4, v3, p0

    goto/16 :goto_0

    .line 379
    :cond_1
    :pswitch_3
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 380
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 382
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 383
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 384
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    goto/16 :goto_0

    .line 390
    :pswitch_4
    if-eqz p4, :cond_2

    .line 391
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x6

    aput v4, v3, p0

    .line 392
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 394
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 395
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 396
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    goto/16 :goto_0

    .line 398
    :cond_2
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 399
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 401
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 402
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 403
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 408
    :pswitch_5
    if-nez p2, :cond_3

    .line 409
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    .line 410
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 412
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 413
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 414
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x7

    aput v4, v3, p0

    goto/16 :goto_0

    .line 420
    :cond_3
    :pswitch_6
    if-nez p2, :cond_4

    .line 421
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    .line 422
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 424
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 425
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 426
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x6

    aput v4, v3, p0

    goto/16 :goto_0

    .line 435
    :cond_4
    :pswitch_7
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 436
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 438
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 439
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 440
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 443
    :pswitch_8
    if-eqz p3, :cond_5

    .line 444
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x5

    aput v4, v3, p0

    .line 445
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 447
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 448
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 449
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x3

    aput v4, v3, p0

    goto/16 :goto_0

    .line 451
    :cond_5
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x9

    aput v4, v3, p0

    .line 452
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 454
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 455
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 456
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x3

    aput v4, v3, p0

    goto/16 :goto_0

    .line 461
    :pswitch_9
    if-nez p2, :cond_6

    .line 462
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x1

    aput v4, v3, p0

    .line 463
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v0, p1

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 465
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 466
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 467
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    goto/16 :goto_0

    .line 469
    :cond_6
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 470
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 472
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v4, v4, p5

    aput v4, v3, p0

    .line 473
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:Ljava/lang/String;

    .line 474
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_9
        :pswitch_3
    .end packed-switch
.end method

.method static updateDataType(IZZZI)V
    .locals 6
    .parameter "type"
    .parameter "showAtLeast3G"
    .parameter "show4GforLte"
    .parameter "hspaDistinguishable"
    .parameter "inetCondition"

    .prologue
    .line 332
    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->updateDataType(IIZZZI)V

    .line 334
    return-void
.end method
