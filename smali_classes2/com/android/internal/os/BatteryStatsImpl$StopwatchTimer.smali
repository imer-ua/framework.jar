.class public Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopwatchTimer"
.end annotation


# instance fields
.field mAcquireTime:J

.field mInList:Z

.field mNesting:I

.field mTimeout:J

.field final mTimerPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

.field mUpdateTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p5, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Clocks;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1783
    .local p4, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {p0, p1, p3, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1784
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1785
    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 1782
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p5, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p6, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Clocks;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1775
    .local p4, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {p0, p1, p3, p5, p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 1776
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1777
    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 1778
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1774
    return-void
.end method

.method private static refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J
    .locals 12
    .param p0, "batteryRealtime"    # J
    .param p3, "self"    # Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ")J"
        }
    .end annotation

    .prologue
    .line 1886
    .local p2, "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    const-wide/16 v6, 0x0

    .line 1887
    .local v6, "selfTime":J
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1888
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1889
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 1890
    .local v8, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-wide v10, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    sub-long v2, p0, v10

    .line 1891
    .local v2, "heldTime":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-lez v9, :cond_1

    .line 1892
    int-to-long v10, v0

    div-long v4, v2, v10

    .line 1893
    .local v4, "myTime":J
    if-ne v8, p3, :cond_0

    .line 1894
    move-wide v6, v4

    .line 1896
    :cond_0
    iget-wide v10, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    add-long/2addr v10, v4

    iput-wide v10, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    .line 1898
    .end local v4    # "myTime":J
    :cond_1
    iput-wide p0, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1888
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1900
    .end local v2    # "heldTime":J
    .end local v8    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2
    return-wide v6
.end method


# virtual methods
.method protected computeCurrentCountLocked()I
    .locals 1

    .prologue
    .line 1916
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    return v0
.end method

.method protected computeRunTimeLocked(J)J
    .locals 7
    .param p1, "curBatteryRealtime"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 1905
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 1906
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    add-long p1, v2, v4

    .line 1908
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v4, :cond_1

    .line 1909
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    sub-long v4, p1, v0

    .line 1910
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    int-to-long v0, v0

    .line 1909
    div-long v0, v4, v0

    .line 1908
    :cond_1
    add-long/2addr v0, v2

    return-wide v0

    .line 1910
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 1932
    invoke-super {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    .line 1933
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1931
    :cond_0
    return-void
.end method

.method public isRunningLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1839
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1811
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mNesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1813
    const-string/jumbo v1, " mAcquireTime="

    .line 1812
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1813
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    .line 1812
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1810
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 1798
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 1802
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    .line 1803
    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1797
    :cond_0
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1940
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1941
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 1939
    return-void
.end method

.method public reset(Z)Z
    .locals 6
    .param p1, "detachIfReset"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1921
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-gtz v2, :cond_1

    const/4 v0, 0x1

    .line 1922
    .local v0, "canDetach":Z
    :goto_0
    if-eqz v0, :cond_2

    .end local p1    # "detachIfReset":Z
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Z)Z

    .line 1923
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v1, :cond_0

    .line 1924
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1926
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    .line 1927
    return v0

    .end local v0    # "canDetach":Z
    .restart local p1    # "detachIfReset":Z
    :cond_1
    move v0, v1

    .line 1921
    goto :goto_0

    .restart local v0    # "canDetach":Z
    :cond_2
    move p1, v1

    .line 1922
    goto :goto_1
.end method

.method public setMark(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 1951
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 1952
    .local v0, "batteryRealtime":J
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v2, :cond_0

    .line 1954
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1955
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    .line 1961
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBeforeMark:J

    .line 1950
    return-void

    .line 1957
    :cond_1
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    .line 1958
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    goto :goto_0
.end method

.method public setTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 1789
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    .line 1788
    return-void
.end method

.method public startRunningLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v6, 0x0

    .line 1817
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v2, :cond_1

    .line 1818
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 1819
    .local v0, "batteryRealtime":J
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1820
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1823
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    .line 1825
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1828
    :cond_0
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    .line 1829
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    .line 1816
    .end local v0    # "batteryRealtime":J
    :cond_1
    return-void
.end method

.method public stopAllRunningLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 1876
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 1877
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 1878
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1875
    :cond_0
    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1844
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v2, :cond_0

    .line 1845
    return-void

    .line 1847
    :cond_0
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v2, :cond_1

    .line 1848
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 1849
    .local v0, "batteryRealtime":J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1852
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    .line 1854
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1867
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1870
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    .line 1842
    .end local v0    # "batteryRealtime":J
    :cond_1
    return-void

    .line 1856
    .restart local v0    # "batteryRealtime":J
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 1857
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->computeRunTimeLocked(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    .line 1858
    iput v6, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 1793
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1794
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1792
    return-void
.end method
