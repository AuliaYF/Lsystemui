.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    .line 13
    :array_0
    .array-data 0x4
        0x68t 0x0t 0xat 0x7ft
        0x69t 0x0t 0xat 0x7ft
        0x6at 0x0t 0xat 0x7ft
        0x6bt 0x0t 0xat 0x7ft
        0x6ct 0x0t 0xat 0x7ft
    .end array-data

    .line 21
    :array_1
    .array-data 0x4
        0x6dt 0x0t 0xat 0x7ft
        0x6et 0x0t 0xat 0x7ft
        0x6ft 0x0t 0xat 0x7ft
        0x70t 0x0t 0xat 0x7ft
        0x71t 0x0t 0xat 0x7ft
    .end array-data

    .line 29
    :array_2
    .array-data 0x4
        0x73t 0x0t 0xat 0x7ft
        0x74t 0x0t 0xat 0x7ft
        0x75t 0x0t 0xat 0x7ft
        0x76t 0x0t 0xat 0x7ft
        0x77t 0x0t 0xat 0x7ft
    .end array-data

    .line 36
    :array_3
    .array-data 0x4
        0x78t 0x0t 0xat 0x7ft
        0x79t 0x0t 0xat 0x7ft
        0x7at 0x0t 0xat 0x7ft
        0x7bt 0x0t 0xat 0x7ft
        0x7ct 0x0t 0xat 0x7ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
