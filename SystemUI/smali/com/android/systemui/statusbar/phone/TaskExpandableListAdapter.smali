.class public Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TaskExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$PackageIntentReceiver;,
        Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;,
        Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;,
        Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;,
        Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$OnTaskActionListener;
    }
.end annotation


# static fields
.field public static final APP_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCollator:Ljava/text/Collator;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final FILTER_LAUNCHER:Z

.field private final FILTER_ON:Z

.field private childs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;",
            ">;"
        }
    .end annotation
.end field

.field private ctx:Landroid/content/Context;

.field private groups:[I

.field private final leftPadding:I

.field private final lpChild:Landroid/widget/AbsListView$LayoutParams;

.field private final lpGroup:Landroid/widget/AbsListView$LayoutParams;

.field private mExpanded:Z

.field private mHandler:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;

.field private mHomeIntent:Landroid/content/Intent;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnTaskActionListener:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$OnTaskActionListener;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mShowTips:Z

.field private pm:Landroid/content/pm/PackageManager;

.field final sPackageFilter:Landroid/content/IntentFilter;

.field private taskManager:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sLock:Ljava/lang/Object;

    .line 1008
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sCollator:Ljava/text/Collator;

    .line 1009
    new-instance v0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$6;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$6;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 89
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->FILTER_LAUNCHER:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->FILTER_ON:Z

    .line 101
    new-array v0, v0, [I

    const v1, 0x7f0a00dc

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->groups:[I

    .line 109
    new-instance v0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;-><init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mHandler:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sPackageFilter:Landroid/content/IntentFilter;

    .line 112
    new-instance v0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$PackageIntentReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$PackageIntentReceiver;-><init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mShowTips:Z

    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->pm:Landroid/content/pm/PackageManager;

    .line 131
    new-instance v0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;-><init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->taskManager:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->leftPadding:I

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 135
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->lpGroup:Landroid/widget/AbsListView$LayoutParams;

    .line 137
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->leftPadding:I

    invoke-direct {v0, v3, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->lpChild:Landroid/widget/AbsListView$LayoutParams;

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sPackageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sPackageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sPackageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sPackageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sPackageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sPackageFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sPackageFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sPackageFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mHomeIntent:Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mHandler:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mHomeIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->taskManager:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mShowTips:Z

    return p1
.end method

.method static synthetic access$900()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private extractMemValue([BI)J
    .locals 6
    .parameter "buffer"
    .parameter "index"

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 554
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 555
    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_1

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_1

    .line 556
    move v0, p2

    .line 557
    .local v0, start:I
    add-int/lit8 p2, p2, 0x1

    .line 559
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_0

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_0

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_0

    .line 560
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 562
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 563
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 567
    .end local v0           #start:I
    .end local v1           #str:Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 565
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 567
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private matchText([BILjava/lang/String;)Z
    .locals 5
    .parameter "buffer"
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 571
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 572
    .local v0, N:I
    add-int v3, p2, v0

    array-length v4, p1

    if-lt v3, v4, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v2

    .line 575
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 576
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 580
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private readAvailMem()J
    .locals 13

    .prologue
    const-wide/16 v9, 0x0

    .line 584
    const/16 v11, 0x400

    new-array v4, v11, [B

    .line 586
    .local v4, mBuffer:[B
    const-wide/16 v7, 0x0

    .line 587
    .local v7, memFree:J
    const-wide/16 v5, 0x0

    .line 588
    .local v5, memCached:J
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v11, "/proc/meminfo"

    invoke-direct {v2, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 589
    .local v2, is:Ljava/io/FileInputStream;
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 590
    .local v3, len:I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 591
    array-length v0, v4

    .line 592
    .local v0, BUFLEN:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_4

    cmp-long v11, v7, v9

    if-eqz v11, :cond_0

    cmp-long v11, v5, v9

    if-nez v11, :cond_4

    .line 593
    :cond_0
    const-string v11, "MemFree"

    invoke-direct {p0, v4, v1, v11}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->matchText([BILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 594
    add-int/lit8 v1, v1, 0x7

    .line 595
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->extractMemValue([BI)J

    move-result-wide v7

    .line 600
    :cond_1
    :goto_1
    if-ge v1, v0, :cond_3

    aget-byte v11, v4, v1

    const/16 v12, 0xa

    if-eq v11, v12, :cond_3

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 596
    :cond_2
    const-string v11, "Cached"

    invoke-direct {p0, v4, v1, v11}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->matchText([BILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 597
    add-int/lit8 v1, v1, 0x6

    .line 598
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->extractMemValue([BI)J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    goto :goto_1

    .line 592
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    :cond_4
    add-long v9, v7, v5

    .line 608
    .end local v0           #BUFLEN:I
    .end local v1           #i:I
    .end local v2           #is:Ljava/io/FileInputStream;
    .end local v3           #len:I
    :goto_2
    return-wide v9

    .line 606
    :catch_0
    move-exception v11

    goto :goto_2

    .line 605
    :catch_1
    move-exception v11

    goto :goto_2
.end method

.method private readTotalMem()J
    .locals 11

    .prologue
    const-wide/16 v7, 0x0

    .line 612
    const/16 v9, 0x400

    new-array v4, v9, [B

    .line 614
    .local v4, mBuffer:[B
    const-wide/16 v5, 0x0

    .line 615
    .local v5, memTotal:J
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v9, "/proc/meminfo"

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 616
    .local v2, is:Ljava/io/FileInputStream;
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 617
    .local v3, len:I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 618
    array-length v0, v4

    .line 619
    .local v0, BUFLEN:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 620
    const-string v9, "MemTotal"

    invoke-direct {p0, v4, v1, v9}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->matchText([BILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 621
    add-int/lit8 v1, v1, 0x7

    .line 622
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->extractMemValue([BI)J

    move-result-wide v5

    .line 624
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    aget-byte v9, v4, v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0xa

    if-eq v9, v10, :cond_1

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 619
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    .end local v0           #BUFLEN:I
    .end local v1           #i:I
    .end local v2           #is:Ljava/io/FileInputStream;
    .end local v3           #len:I
    :catch_0
    move-exception v9

    :goto_2
    move-wide v5, v7

    .line 632
    .end local v5           #memTotal:J
    :cond_2
    return-wide v5

    .line 629
    .restart local v5       #memTotal:J
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method private showTips(I)V
    .locals 9
    .parameter "resid"

    .prologue
    const/4 v7, -0x2

    .line 968
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mShowTips:Z

    if-eqz v5, :cond_0

    .line 969
    const-string v5, "TaskExpandableListAdapter"

    const-string v6, "The floating window is showing, stop showing another one."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :goto_0
    return-void

    .line 975
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 977
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v5, 0x10900b9

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 979
    .local v0, floatView:Landroid/view/View;
    const v5, 0x102000b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 982
    .local v3, textView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 985
    .local v4, windowManager:Landroid/view/WindowManager;
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 986
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x7de

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 987
    const/4 v5, -0x3

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 988
    const/16 v5, 0x98

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 991
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 992
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 993
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 994
    const v5, 0x1030004

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 995
    invoke-interface {v4, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mShowTips:Z

    .line 999
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    new-instance v6, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$5;

    invoke-direct {v6, p0, v4, v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$5;-><init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;Landroid/view/WindowManager;Landroid/view/View;)V

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method


# virtual methods
.method public bringChildtoFront(I)V
    .locals 11
    .parameter "childPosition"

    .prologue
    const/high16 v10, 0x1000

    const v9, -0x200001

    .line 431
    const/4 v4, 0x0

    .line 432
    .local v4, success:Z
    sget-object v6, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 433
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_4

    .line 434
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;

    .line 435
    .local v0, detailProcess:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, packageName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 440
    monitor-exit v6

    .line 472
    .end local v0           #detailProcess:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    .end local v3           #packageName:Ljava/lang/String;
    :goto_0
    return-void

    .line 442
    .restart local v0       #detailProcess:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->taskManager:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->getBringtoFrontIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 443
    .local v2, i:Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 444
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 446
    :cond_1
    if-eqz v2, :cond_2

    .line 448
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v9

    or-int/2addr v5, v10

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 450
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 451
    const/4 v4, 0x1

    .line 457
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 458
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    .end local v2           #i:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 459
    .restart local v2       #i:Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getBaseActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    :try_start_3
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v9

    or-int/2addr v5, v10

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 463
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 469
    :cond_3
    :goto_2
    :try_start_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mOnTaskActionListener:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$OnTaskActionListener;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$OnTaskActionListener;->onTaskBroughtToFront()V

    .line 471
    .end local v0           #detailProcess:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_4
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 452
    .restart local v0       #detailProcess:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    .restart local v2       #i:Landroid/content/Intent;
    .restart local v3       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 454
    .local v1, ee:Ljava/lang/Exception;
    :try_start_5
    const-string v5, "TaskExpandableListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start activity meets exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 464
    .end local v1           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 466
    .restart local v1       #ee:Ljava/lang/Exception;
    const-string v5, "TaskExpandableListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start activity meets exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public clearPrefer(Ljava/lang/String;)V
    .locals 7
    .parameter "packagename"

    .prologue
    .line 527
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 529
    .local v1, mPmService:Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mHomeIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    const/high16 v5, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 534
    .local v2, preferred:Landroid/content/pm/ResolveInfo;
    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 542
    :cond_0
    return-void

    .line 531
    .end local v2           #preferred:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 532
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    .restart local v2       #preferred:Landroid/content/pm/ResolveInfo;
    goto :goto_0
.end method

.method public expandGroup(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "groupPosition"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mHandler:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mExpanded:Z

    .line 354
    return-void
.end method

.method public findHome()I
    .locals 4

    .prologue
    .line 475
    const/4 v2, 0x0

    .line 480
    .local v2, result:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 482
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;

    .line 483
    .local v0, dp:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->isHome()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 488
    .end local v0           #dp:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    .line 494
    :cond_2
    return v2
.end method

.method public findPrefHome()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 498
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 501
    .local v1, mPmService:Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mHomeIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/high16 v6, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v1, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 506
    .local v2, preferred:Landroid/content/pm/ResolveInfo;
    :goto_0
    if-eqz v2, :cond_0

    .line 510
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 512
    :cond_0
    return-object v3

    .line 503
    .end local v2           #preferred:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    .restart local v2       #preferred:Landroid/content/pm/ResolveInfo;
    goto :goto_0
.end method

.method public getChild(II)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 162
    sget-object v2, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 163
    if-ltz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    .line 164
    .local v0, validChild:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;

    monitor-exit v2

    .line 167
    :goto_1
    return-object v1

    .line 163
    .end local v0           #validChild:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    .restart local v0       #validChild:Z
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 169
    .end local v0           #validChild:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->getChild(II)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 173
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 199
    if-nez p4, :cond_0

    .line 200
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040027

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 202
    :cond_0
    const v5, 0x7f0700aa

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 203
    .local v4, textView:Landroid/widget/TextView;
    const v5, 0x7f0700ab

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 204
    .local v1, imageView:Landroid/widget/ImageView;
    const v5, 0x7f0700a9

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 205
    .local v2, imageView2:Landroid/widget/ImageView;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->getChild(II)Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;

    move-result-object v0

    .line 206
    .local v0, dp:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "taskitem-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "killchild-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 212
    new-instance v5, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$1;-><init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "icon-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 230
    new-instance v5, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$2;-><init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 249
    new-instance v5, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$3;-><init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 177
    sget-object v1, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGroup(I)Ljava/lang/Integer;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->groups:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->getGroup(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->groups:[I

    array-length v0, v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 279
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 284
    if-nez p3, :cond_0

    .line 285
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040026

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 287
    :cond_0
    const v11, 0x7f0700a5

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 290
    .local v8, title:Landroid/widget/TextView;
    const v11, 0x7f0700a8

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 291
    .local v6, memProgressBar:Landroid/widget/ProgressBar;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->readTotalMem()J

    move-result-wide v11

    long-to-int v5, v11

    .line 292
    .local v5, max:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->readAvailMem()J

    move-result-wide v11

    long-to-int v2, v11

    .line 293
    .local v2, currentMem:I
    invoke-virtual {v6, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 294
    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 296
    const v11, 0x7f0700a7

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 297
    .local v7, memUsage:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->getGroup(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 298
    .local v3, groupTitle:I
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(I)V

    .line 299
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "category-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 300
    const v11, 0x7f0700a6

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 301
    .local v4, killall:Landroid/widget/TextView;
    const v11, 0x7f0a00de

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    .line 302
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "killall-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 303
    new-instance v11, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$4;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$4;-><init>(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;)V

    invoke-virtual {v4, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mExpanded:Z

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 311
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mExpanded:Z

    if-eqz v11, :cond_1

    .line 312
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->readAvailMem()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, availMem:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->readTotalMem()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 315
    .local v10, totalMem:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->ctx:Landroid/content/Context;

    const v12, 0x7f0a00df

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    const/4 v14, 0x1

    aput-object v10, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, toast:Ljava/lang/String;
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 327
    .end local v1           #availMem:Ljava/lang/String;
    .end local v9           #toast:Ljava/lang/String;
    .end local v10           #totalMem:Ljava/lang/String;
    :goto_0
    return-object p3

    .line 323
    :cond_1
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 325
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public killAllChild()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 362
    sget-object v6, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 363
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->findHome()I

    move-result v0

    .line 368
    .local v0, allHomes:I
    if-le v0, v7, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->findPrefHome()Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, prefHome:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;

    .line 370
    .local v1, detailProcess:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->isHome()Z

    move-result v5

    if-eqz v5, :cond_1

    if-le v0, v7, :cond_0

    .line 378
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 379
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->isHome()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 380
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->clearPrefer(Ljava/lang/String;)V

    .line 381
    add-int/lit8 v0, v0, -0x1

    .line 383
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->killChildByName(Ljava/lang/String;)V

    goto :goto_1

    .line 392
    .end local v0           #allHomes:I
    .end local v1           #detailProcess:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #prefHome:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 368
    .restart local v0       #allHomes:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 387
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #prefHome:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 391
    .end local v0           #allHomes:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #prefHome:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 392
    monitor-exit v6

    .line 393
    return-void

    .line 389
    :cond_5
    const-string v5, "TaskExpandableListAdapter"

    const-string v7, "killAllChild got childs null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public killChild(I)V
    .locals 5
    .parameter "childPosition"

    .prologue
    .line 405
    sget-object v3, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 406
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 407
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;

    .line 408
    .local v0, detailProcess:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->isHome()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->findHome()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 411
    const v2, 0x7f0a00e0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->showTips(I)V

    .line 412
    monitor-exit v3

    .line 428
    .end local v0           #detailProcess:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    .end local v1           #packageName:Ljava/lang/String;
    :goto_0
    return-void

    .line 414
    .restart local v0       #detailProcess:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    .restart local v1       #packageName:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->clearPrefer(Ljava/lang/String;)V

    .line 420
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->taskManager:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->am:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->access$300(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 421
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mOnTaskActionListener:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$OnTaskActionListener;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$OnTaskActionListener;->onTaskKilled()V

    .line 422
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 426
    .end local v0           #detailProcess:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;
    .end local v1           #packageName:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 427
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 424
    :cond_2
    :try_start_1
    const-string v2, "TaskExpandableListAdapter"

    const-string v4, "kill child with illegle pos"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public killChildByName(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 396
    if-nez p1, :cond_0

    .line 397
    const-string v0, "TaskExpandableListAdapter"

    const-string v1, "killChildByName got packageName null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->taskManager:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    #getter for: Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->am:Landroid/app/ActivityManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->access$300(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mOnTaskActionListener:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$OnTaskActionListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$OnTaskActionListener;->onTaskKilled()V

    goto :goto_0
.end method

.method public onGroupCollapsed(I)V
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mHandler:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mHandler:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$H;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    return-void
.end method

.method public setOnTaskActionListener(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$OnTaskActionListener;)V
    .locals 0
    .parameter "onTaskActionListener"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->mOnTaskActionListener:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$OnTaskActionListener;

    .line 159
    return-void
.end method

.method public updateChildsList()V
    .locals 2

    .prologue
    .line 183
    sget-object v1, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->taskManager:Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$TaskManager;->getList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->childs:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 186
    monitor-exit v1

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
