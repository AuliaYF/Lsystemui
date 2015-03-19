.class public Lcom/android/systemui/screenshot/SystemUiUtil;
.super Ljava/lang/Object;
.source "SystemUiUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInternalCardAvailableSpace()J
    .locals 8

    .prologue
    .line 41
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, storageDirectory:Ljava/lang/String;
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 44
    .local v0, remaining:J
    return-wide v0
.end method

.method private static getSdAvailableSpace()J
    .locals 8

    .prologue
    .line 22
    invoke-static {}, Landroid/os/Environment;->getExternalStorageSdDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, storageDirectory:Ljava/lang/String;
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 24
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 25
    .local v0, remaining:J
    return-wide v0
.end method

.method public static isInternalCardFull()Z
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Lcom/android/systemui/screenshot/SystemUiUtil;->getInternalCardAvailableSpace()J

    move-result-wide v0

    .line 34
    .local v0, available:J
    const-wide/32 v2, 0x100000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 35
    const/4 v2, 0x1

    .line 37
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSdCardFull()Z
    .locals 4

    .prologue
    .line 13
    invoke-static {}, Lcom/android/systemui/screenshot/SystemUiUtil;->getSdAvailableSpace()J

    move-result-wide v0

    .line 14
    .local v0, available:J
    const-wide/32 v2, 0x100000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 15
    const/4 v2, 0x1

    .line 17
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
