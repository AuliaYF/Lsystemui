.class final Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$6;
.super Ljava/lang/Object;
.source "TaskExpandableListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1012
    invoke-static {}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter;->access$900()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1010
    check-cast p1, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;

    .end local p1
    check-cast p2, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$6;->compare(Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;Lcom/android/systemui/statusbar/phone/TaskExpandableListAdapter$DetailProcess;)I

    move-result v0

    return v0
.end method
