.class public Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchTimer"
.end annotation


# instance fields
.field mInDischarge:Z

.field mLastAddedDuration:J

.field mLastAddedTime:J

.field final mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 1
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p4, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .prologue
    .line 1460
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1461
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1462
    invoke-virtual {p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 1459
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p4, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p5, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1452
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 1453
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1454
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 1455
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    .line 1456
    invoke-virtual {p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 1451
    return-void
.end method

.method private computeOverage(J)J
    .locals 5
    .param p1, "curTime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1498
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1499
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastTime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    return-wide v0

    .line 1501
    :cond_0
    return-wide v2
.end method

.method private recomputeLastDuration(JZ)V
    .locals 7
    .param p1, "curTime"    # J
    .param p3, "abort"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 1505
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->computeOverage(J)J

    move-result-wide v0

    .line 1506
    .local v0, "overage":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 1510
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    if-eqz v2, :cond_0

    .line 1511
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    .line 1513
    :cond_0
    if-eqz p3, :cond_2

    .line 1514
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 1504
    :cond_1
    :goto_0
    return-void

    .line 1516
    :cond_2
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 1517
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    goto :goto_0
.end method


# virtual methods
.method public abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 6
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .prologue
    .line 1534
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 1535
    .local v0, "now":J
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 1533
    return-void
.end method

.method public addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V
    .locals 6
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "durationMillis"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1523
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    mul-long v0, v2, v4

    .line 1524
    .local v0, "now":J
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 1525
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    .line 1526
    mul-long v2, p2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    .line 1527
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    if-eqz v2, :cond_0

    .line 1528
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    .line 1529
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mCount:I

    .line 1522
    :cond_0
    return-void
.end method

.method protected computeCurrentCountLocked()I
    .locals 1

    .prologue
    .line 1540
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mCount:I

    return v0
.end method

.method protected computeRunTimeLocked(J)J
    .locals 6
    .param p1, "curBatteryRealtime"    # J

    .prologue
    .line 1545
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->computeOverage(J)J

    move-result-wide v0

    .line 1546
    .local v0, "overage":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1547
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    return-wide v0

    .line 1549
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    return-wide v2
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1492
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLastAddedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1494
    const-string/jumbo v1, " mLastAddedDuration="

    .line 1493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1494
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    .line 1493
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 5
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 1481
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 1482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 1484
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 1485
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTime:J

    .line 1487
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    .line 1480
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 5
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    const/4 v4, 0x0

    .line 1474
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 1475
    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 1476
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    .line 1473
    return-void
.end method

.method public reset(Z)Z
    .locals 10
    .param p1, "detachIfReset"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1554
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v0, v6, v8

    .line 1555
    .local v0, "now":J
    invoke-direct {p0, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 1556
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    cmp-long v5, v6, v0

    if-nez v5, :cond_0

    move v2, v4

    .line 1557
    .local v2, "stillActive":Z
    :goto_0
    if-nez v2, :cond_1

    .end local p1    # "detachIfReset":Z
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Z)Z

    .line 1558
    if-eqz v2, :cond_2

    :goto_2
    return v3

    .end local v2    # "stillActive":Z
    .restart local p1    # "detachIfReset":Z
    :cond_0
    move v2, v3

    .line 1556
    goto :goto_0

    .restart local v2    # "stillActive":Z
    :cond_1
    move p1, v3

    .line 1557
    goto :goto_1

    .end local p1    # "detachIfReset":Z
    :cond_2
    move v3, v4

    .line 1558
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 1467
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1468
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1469
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1466
    return-void
.end method
