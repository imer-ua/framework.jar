.class Landroid/os/statistics/PerfEvent$EndTimeComparator;
.super Ljava/lang/Object;
.source "PerfEvent.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/os/statistics/PerfEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 204
    .local p0, "this":Landroid/os/statistics/PerfEvent$EndTimeComparator;, "Landroid/os/statistics/PerfEvent<TT;>.EndTimeComparator;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/statistics/PerfEvent$EndTimeComparator;)V
    .locals 0

    .prologue
    .local p0, "this":Landroid/os/statistics/PerfEvent$EndTimeComparator;, "Landroid/os/statistics/PerfEvent<TT;>.EndTimeComparator;"
    invoke-direct {p0}, Landroid/os/statistics/PerfEvent$EndTimeComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/os/statistics/PerfEvent;Landroid/os/statistics/PerfEvent;)I
    .locals 6
    .param p1, "o1"    # Landroid/os/statistics/PerfEvent;
    .param p2, "o2"    # Landroid/os/statistics/PerfEvent;

    .prologue
    .line 207
    .local p0, "this":Landroid/os/statistics/PerfEvent$EndTimeComparator;, "Landroid/os/statistics/PerfEvent<TT;>.EndTimeComparator;"
    invoke-virtual {p1}, Landroid/os/statistics/PerfEvent;->getEndUptimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/statistics/PerfEvent;->getEndUptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 208
    .local v0, "endCompareResult":I
    if-eqz v0, :cond_0

    .line 209
    return v0

    .line 211
    :cond_0
    invoke-virtual {p2}, Landroid/os/statistics/PerfEvent;->getBeginUptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/statistics/PerfEvent;->getBeginUptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 212
    if-eqz v0, :cond_1

    .line 213
    return v0

    .line 215
    :cond_1
    iget-wide v2, p1, Landroid/os/statistics/PerfEvent;->eventSeq:J

    iget-wide v4, p2, Landroid/os/statistics/PerfEvent;->eventSeq:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 216
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 206
    .local p0, "this":Landroid/os/statistics/PerfEvent$EndTimeComparator;, "Landroid/os/statistics/PerfEvent<TT;>.EndTimeComparator;"
    check-cast p1, Landroid/os/statistics/PerfEvent;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Landroid/os/statistics/PerfEvent;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/statistics/PerfEvent$EndTimeComparator;->compare(Landroid/os/statistics/PerfEvent;Landroid/os/statistics/PerfEvent;)I

    move-result v0

    return v0
.end method
