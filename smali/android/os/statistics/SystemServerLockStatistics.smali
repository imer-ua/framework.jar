.class Landroid/os/statistics/SystemServerLockStatistics;
.super Ljava/lang/Object;
.source "SystemServerLockStatistics.java"


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x20

.field private static volatile filter:Landroid/os/statistics/PerfEventFilter;

.field private static final lockHolds:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MonitorSuperviser$SingleLockHold;",
            ">;"
        }
    .end annotation
.end field

.field private static final tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final tempLockHolds:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final tempLockWaits:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 16
    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    .line 15
    sput-object v0, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    .line 19
    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MicroscopicEvent;

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    .line 18
    sput-object v0, Landroid/os/statistics/SystemServerLockStatistics;->tempLockWaits:Landroid/os/statistics/FastPerfEventList;

    .line 21
    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/PerfEvent;

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    .line 20
    sput-object v0, Landroid/os/statistics/SystemServerLockStatistics;->tempLockHolds:Landroid/os/statistics/FastPerfEventList;

    .line 23
    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/PerfEvent;

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    .line 22
    sput-object v0, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    .line 11
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized report(Landroid/os/statistics/FastPerfEventList;J)V
    .locals 13
    .param p1, "earliestRootEventBeginUptimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p0, "suspectedEvents":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<Landroid/os/statistics/PerfEvent;>;"
    const-class v7, Landroid/os/statistics/SystemServerLockStatistics;

    monitor-enter v7

    .line 27
    :try_start_0
    iget v4, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    .line 28
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 29
    iget-object v6, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aget-object v2, v6, v3

    .line 30
    .local v2, "event":Landroid/os/statistics/PerfEvent;
    if-nez v2, :cond_1

    .line 28
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    :cond_1
    instance-of v6, v2, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;

    if-eqz v6, :cond_2

    .line 34
    move-object v0, v2

    nop

    nop

    move-object v5, v0

    .line 35
    .local v5, "lockWait":Landroid/os/statistics/MonitorSuperviser$SingleLockWait;
    iget-wide v8, v5, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, v5, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long/2addr v8, v10

    sget-wide v10, Landroid/os/AnrMonitor;->LOCK_WAIT_THRESHOLD:J

    cmp-long v6, v8, v10

    if-ltz v6, :cond_0

    .line 36
    sget-object v6, Landroid/os/statistics/SystemServerLockStatistics;->tempLockWaits:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v6, v5}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v2    # "event":Landroid/os/statistics/PerfEvent;
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "lockWait":Landroid/os/statistics/MonitorSuperviser$SingleLockWait;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 38
    .restart local v2    # "event":Landroid/os/statistics/PerfEvent;
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    :cond_2
    :try_start_1
    instance-of v6, v2, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    if-eqz v6, :cond_0

    .line 39
    sget-object v6, Landroid/os/statistics/SystemServerLockStatistics;->tempLockHolds:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v6, v2}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    goto :goto_1

    .line 42
    .end local v2    # "event":Landroid/os/statistics/PerfEvent;
    :cond_3
    sget-object v6, Landroid/os/statistics/SystemServerLockStatistics;->tempLockWaits:Landroid/os/statistics/FastPerfEventList;

    sget-object v8, Landroid/os/statistics/SystemServerLockStatistics;->tempLockHolds:Landroid/os/statistics/FastPerfEventList;

    invoke-static {v6, v8, p1, p2}, Landroid/os/statistics/SystemServerLockStatistics;->reportLocks(Landroid/os/statistics/FastPerfEventList;Landroid/os/statistics/FastPerfEventList;J)V

    .line 43
    sget-object v6, Landroid/os/statistics/SystemServerLockStatistics;->tempLockWaits:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v6}, Landroid/os/statistics/FastPerfEventList;->clear()V

    .line 44
    sget-object v6, Landroid/os/statistics/SystemServerLockStatistics;->tempLockWaits:Landroid/os/statistics/FastPerfEventList;

    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    .line 45
    sget-object v6, Landroid/os/statistics/SystemServerLockStatistics;->tempLockHolds:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v6}, Landroid/os/statistics/FastPerfEventList;->clear()V

    .line 46
    sget-object v6, Landroid/os/statistics/SystemServerLockStatistics;->tempLockHolds:Landroid/os/statistics/FastPerfEventList;

    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 26
    return-void
.end method

.method private static declared-synchronized reportLocks(Landroid/os/statistics/FastPerfEventList;Landroid/os/statistics/FastPerfEventList;J)V
    .locals 26
    .param p2, "earliestRootEventBeginUptimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;",
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p0, "newLockWaits":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<Landroid/os/statistics/MicroscopicEvent;>;"
    .local p1, "newLockHolds":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<Landroid/os/statistics/PerfEvent;>;"
    const-class v19, Landroid/os/statistics/SystemServerLockStatistics;

    monitor-enter v19

    .line 51
    :try_start_0
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->filter:Landroid/os/statistics/PerfEventFilter;

    if-nez v18, :cond_0

    .line 52
    new-instance v18, Landroid/os/statistics/PerfEventFilter;

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/statistics/PerfEventFilter;-><init>(Z)V

    sput-object v18, Landroid/os/statistics/SystemServerLockStatistics;->filter:Landroid/os/statistics/PerfEventFilter;

    .line 55
    :cond_0
    sget-object v3, Landroid/os/statistics/SystemServerLockStatistics;->filter:Landroid/os/statistics/PerfEventFilter;

    sget-object v8, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-virtual/range {v3 .. v8}, Landroid/os/statistics/PerfEventFilter;->filter(Landroid/os/statistics/FastPerfEventList;Landroid/os/statistics/FastPerfEventList;JLandroid/os/statistics/FastPerfEventList;)V

    .line 56
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/statistics/FastPerfEventList;->size:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_2

    .line 57
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    move-object/from16 v18, v0

    aget-object v9, v18, v12

    .line 58
    .local v9, "completedEvent":Landroid/os/statistics/PerfEvent;
    instance-of v0, v9, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 59
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    check-cast v9, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    .end local v9    # "completedEvent":Landroid/os/statistics/PerfEvent;
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    .line 56
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 62
    :cond_2
    const/4 v13, 0x0

    .local v13, "l":I
    :goto_1
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/statistics/FastPerfEventList;->size:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_7

    .line 63
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    move-object/from16 v18, v0

    aget-object v9, v18, v13

    .line 64
    .restart local v9    # "completedEvent":Landroid/os/statistics/PerfEvent;
    instance-of v0, v9, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 62
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 67
    :cond_3
    move-object v0, v9

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;

    move-object v2, v0

    .line 68
    .local v2, "lockWait":Landroid/os/statistics/MonitorSuperviser$SingleLockWait;
    invoke-virtual {v2}, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;->resolveLazyInfo()V

    .line 69
    const/4 v3, 0x0

    .line 70
    .local v3, "contentionCount":I
    const-wide/16 v4, 0x0

    .line 71
    .local v4, "contentionTotalMillis":J
    const-wide/16 v6, 0x0

    .line 72
    .local v6, "criticalContentionMillis":J
    const/4 v8, 0x0

    .line 73
    .local v8, "criticalContentionInfo":Landroid/os/statistics/MonitorSuperviser$SingleLockHold;
    const/4 v15, 0x0

    .end local v8    # "criticalContentionInfo":Landroid/os/statistics/MonitorSuperviser$SingleLockHold;
    .local v15, "m":I
    :goto_3
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/statistics/FastPerfEventList;->size:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_5

    .line 74
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/os/statistics/FastPerfEventList;->get(I)Landroid/os/statistics/PerfEvent;

    move-result-object v14

    check-cast v14, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    .line 75
    .local v14, "lockHold":Landroid/os/statistics/MonitorSuperviser$SingleLockHold;
    invoke-virtual {v2, v14}, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;->isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    iget-wide v0, v14, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    move-wide/from16 v20, v0

    iget-wide v0, v14, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-wide/from16 v22, v0

    iget-wide v0, v2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    sub-long v10, v20, v22

    .line 78
    .local v10, "contentionMillis":J
    add-long/2addr v4, v10

    .line 79
    cmp-long v18, v10, v6

    if-lez v18, :cond_4

    .line 80
    move-wide v6, v10

    .line 81
    move-object v8, v14

    .line 73
    .end local v10    # "contentionMillis":J
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 85
    .end local v14    # "lockHold":Landroid/os/statistics/MonitorSuperviser$SingleLockHold;
    :cond_5
    if-eqz v8, :cond_6

    .line 86
    invoke-virtual {v8}, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;->resolveLazyInfo()V

    .line 88
    :cond_6
    invoke-static/range {v2 .. v8}, Landroid/os/AnrMonitor;->checkLockWaitTime(Landroid/os/statistics/MonitorSuperviser$SingleLockWait;IJJLandroid/os/statistics/MonitorSuperviser$SingleLockHold;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .end local v2    # "lockWait":Landroid/os/statistics/MonitorSuperviser$SingleLockWait;
    .end local v3    # "contentionCount":I
    .end local v4    # "contentionTotalMillis":J
    .end local v6    # "criticalContentionMillis":J
    .end local v9    # "completedEvent":Landroid/os/statistics/PerfEvent;
    .end local v12    # "i":I
    .end local v13    # "l":I
    .end local v15    # "m":I
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 91
    .restart local v12    # "i":I
    .restart local v13    # "l":I
    :cond_7
    :try_start_1
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual/range {v18 .. v18}, Landroid/os/statistics/FastPerfEventList;->clear()V

    .line 92
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    const/16 v20, 0x20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    .line 93
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v16

    .line 94
    .local v16, "now":J
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/statistics/FastPerfEventList;->size:I

    move/from16 v18, v0

    add-int/lit8 v12, v18, -0x1

    :goto_4
    if-ltz v12, :cond_9

    .line 95
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/statistics/FastPerfEventList;->get(I)Landroid/os/statistics/PerfEvent;

    move-result-object v14

    check-cast v14, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    .line 96
    .restart local v14    # "lockHold":Landroid/os/statistics/MonitorSuperviser$SingleLockHold;
    iget-wide v0, v14, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0xea60

    sub-long v22, v16, v22

    cmp-long v18, v20, v22

    if-gez v18, :cond_8

    .line 97
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    move-object/from16 v18, v0

    check-cast v18, [Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    const/16 v20, 0x0

    aput-object v20, v18, v12

    .line 94
    :cond_8
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 100
    .end local v14    # "lockHold":Landroid/os/statistics/MonitorSuperviser$SingleLockHold;
    :cond_9
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual/range {v18 .. v18}, Landroid/os/statistics/FastPerfEventList;->compact()V

    .line 101
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    const/16 v20, 0x20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v19

    .line 50
    return-void
.end method
