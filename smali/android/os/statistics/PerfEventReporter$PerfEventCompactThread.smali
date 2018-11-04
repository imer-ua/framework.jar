.class Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;
.super Ljava/lang/Thread;
.source "PerfEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEventReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerfEventCompactThread"
.end annotation


# static fields
.field private static final sInstance:Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;


# instance fields
.field private latestFilterUptimeMillis:J

.field private final mCompletedEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPerfEventFetchingBuffer:[Landroid/os/statistics/PerfEvent;

.field private mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

.field private final mRootEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSendingParcel:Landroid/os/Parcel;

.field private final mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final perfEventFilter:Landroid/os/statistics/PerfEventFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;

    invoke-direct {v0}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;-><init>()V

    sput-object v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->sInstance:Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 61
    const-string/jumbo v0, "Binder:perf-event-compact"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MicroscopicEvent;

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    .line 46
    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mRootEvents:Landroid/os/statistics/FastPerfEventList;

    .line 49
    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/PerfEvent;

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    .line 48
    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;

    .line 51
    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/PerfEvent;

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    .line 50
    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    .line 54
    new-instance v0, Landroid/os/statistics/PerfEventFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/statistics/PerfEventFilter;-><init>(Z)V

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->perfEventFilter:Landroid/os/statistics/PerfEventFilter;

    .line 60
    return-void
.end method

.method private fetchPerfEventsFromBuffer()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 148
    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventFetchingBuffer:[Landroid/os/statistics/PerfEvent;

    .line 149
    .local v1, "fetchingBuffer":[Landroid/os/statistics/PerfEvent;
    if-nez v1, :cond_0

    .line 150
    invoke-static {}, Landroid/os/statistics/PerfEventReporter;->-wrap0()[Landroid/os/statistics/PerfEvent;

    move-result-object v7

    iput-object v7, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventFetchingBuffer:[Landroid/os/statistics/PerfEvent;

    .line 151
    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventFetchingBuffer:[Landroid/os/statistics/PerfEvent;

    .line 153
    :cond_0
    invoke-static {v1}, Landroid/os/statistics/PerfEventReporter;->-wrap1([Landroid/os/statistics/PerfEvent;)I

    move-result v0

    .line 154
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 155
    return-void

    .line 157
    :cond_1
    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mRootEvents:Landroid/os/statistics/FastPerfEventList;

    .line 158
    .local v5, "rootEvents":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<Landroid/os/statistics/MicroscopicEvent;>;"
    iget-object v6, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;

    .line 159
    .local v6, "suspectedEvents":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<Landroid/os/statistics/PerfEvent;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 160
    aget-object v4, v1, v2

    .line 161
    .local v4, "reportedEvent":Landroid/os/statistics/PerfEvent;
    aput-object v10, v1, v2

    .line 162
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isInTestMode()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 163
    const-string/jumbo v7, "MiuiPerfSuperviser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fetched: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/os/statistics/PerfEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_2
    invoke-virtual {v4}, Landroid/os/statistics/PerfEvent;->isConcerned()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 166
    invoke-virtual {v4}, Landroid/os/statistics/PerfEvent;->fillInCurrentProcessId()V

    .line 167
    instance-of v7, v4, Landroid/os/statistics/MicroscopicEvent;

    if-eqz v7, :cond_5

    move-object v3, v4

    .line 168
    nop

    nop

    .line 169
    .local v3, "microEvent":Landroid/os/statistics/MicroscopicEvent;
    invoke-virtual {v3}, Landroid/os/statistics/MicroscopicEvent;->isRootEvent()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 170
    invoke-virtual {v5, v3}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    .line 159
    .end local v3    # "microEvent":Landroid/os/statistics/MicroscopicEvent;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .restart local v3    # "microEvent":Landroid/os/statistics/MicroscopicEvent;
    :cond_4
    invoke-virtual {v6, v3}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    goto :goto_1

    .line 175
    .end local v3    # "microEvent":Landroid/os/statistics/MicroscopicEvent;
    :cond_5
    invoke-virtual {v6, v4}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    goto :goto_1

    .line 147
    .end local v4    # "reportedEvent":Landroid/os/statistics/PerfEvent;
    :cond_6
    return-void
.end method

.method private getEarliestBeginUptimeMillis(Landroid/os/statistics/FastPerfEventList;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "events":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<Landroid/os/statistics/MicroscopicEvent;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 183
    .local v0, "earliest":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p1, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v2, v4, :cond_1

    .line 184
    iget-object v4, p1, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v4, [Landroid/os/statistics/MicroscopicEvent;

    aget-object v3, v4, v2

    .line 185
    .local v3, "perfEvent":Landroid/os/statistics/MicroscopicEvent;
    if-eqz v3, :cond_0

    iget-wide v4, v3, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 186
    iget-wide v0, v3, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 183
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v3    # "perfEvent":Landroid/os/statistics/MicroscopicEvent;
    :cond_1
    return-wide v0
.end method

.method public static getInstance()Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->sInstance:Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;

    return-object v0
.end method

.method private loopOnce()V
    .locals 24

    .prologue
    .line 76
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    const/16 v6, -0xa

    invoke-static {v5, v6}, Landroid/os/statistics/OsUtils;->setThreadPriorityUnconditonally(II)V

    .line 77
    const-wide/16 v18, 0x0

    .line 78
    .local v18, "now":J
    const-wide/16 v12, 0x0

    .line 81
    .local v12, "executingBeginUptimeMillis":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mRootEvents:Landroid/os/statistics/FastPerfEventList;

    iget v5, v5, Landroid/os/statistics/FastPerfEventList;->size:I

    if-gtz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;

    iget v5, v5, Landroid/os/statistics/FastPerfEventList;->size:I

    if-lez v5, :cond_1

    .line 82
    :cond_0
    const/16 v20, 0x3e8

    .line 88
    .local v20, "waitTimeMs":I
    :goto_1
    invoke-static/range {v20 .. v20}, Landroid/os/statistics/PerfEventReporter;->-wrap3(I)V

    .line 90
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v18

    .line 91
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->latestFilterUptimeMillis:J

    sub-long v6, v18, v6

    const-wide/16 v22, 0x7d0

    cmp-long v5, v6, v22

    if-gez v5, :cond_3

    .line 92
    invoke-direct/range {p0 .. p0}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->fetchPerfEventsFromBuffer()V

    goto :goto_0

    .line 83
    .end local v20    # "waitTimeMs":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->perfEventFilter:Landroid/os/statistics/PerfEventFilter;

    invoke-virtual {v5}, Landroid/os/statistics/PerfEventFilter;->hasPendingPerfEvents()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 84
    const/16 v20, 0x7d0

    .restart local v20    # "waitTimeMs":I
    goto :goto_1

    .line 86
    .end local v20    # "waitTimeMs":I
    :cond_2
    const/16 v20, -0x1

    .restart local v20    # "waitTimeMs":I
    goto :goto_1

    .line 95
    :cond_3
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->latestFilterUptimeMillis:J

    .line 99
    invoke-static {}, Landroid/os/statistics/PerfEventReporter;->-wrap2()J

    move-result-wide v12

    .line 100
    invoke-direct/range {p0 .. p0}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->fetchPerfEventsFromBuffer()V

    .line 105
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mRootEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->getEarliestBeginUptimeMillis(Landroid/os/statistics/FastPerfEventList;)J

    move-result-wide v14

    .line 107
    .local v14, "finishingRootEventBeginUptimeMillis":J
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 106
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 109
    .local v8, "earliestRootEventBeginUptimeMillis":J
    invoke-static {}, Landroid/app/ActivityThreadInjector;->isSystemThread()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 110
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-static {v5, v8, v9}, Landroid/os/statistics/SystemServerLockStatistics;->report(Landroid/os/statistics/FastPerfEventList;J)V

    .line 112
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->perfEventFilter:Landroid/os/statistics/PerfEventFilter;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mRootEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual/range {v5 .. v10}, Landroid/os/statistics/PerfEventFilter;->filter(Landroid/os/statistics/FastPerfEventList;Landroid/os/statistics/FastPerfEventList;JLandroid/os/statistics/FastPerfEventList;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v5}, Landroid/os/statistics/FastPerfEventList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 114
    invoke-direct/range {p0 .. p0}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->obtainPerfEventSocketFd()V

    .line 115
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    iget v5, v5, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v11, v5, :cond_8

    .line 116
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v5, v5, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aget-object v4, v5, v11

    .line 117
    .local v4, "event":Landroid/os/statistics/PerfEvent;
    instance-of v5, v4, Landroid/os/statistics/LooperOnce;

    if-nez v5, :cond_5

    instance-of v5, v4, Landroid/os/statistics/LooperCheckPoint;

    if-eqz v5, :cond_6

    .line 115
    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 120
    :cond_6
    invoke-virtual {v4}, Landroid/os/statistics/PerfEvent;->fillInCurrentProcessInfo()V

    .line 121
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSendingParcel:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSendingParcel:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataSize(I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSendingParcel:Landroid/os/Parcel;

    iget v6, v4, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSendingParcel:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/statistics/PerfEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSendingParcel:Landroid/os/Parcel;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->sendPerfEventParcel(Landroid/os/Parcel;)Z

    move-result v16

    .line 126
    .local v16, "isReportSuccess":Z
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isInTestMode()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 127
    if-nez v16, :cond_7

    .line 128
    const-string/jumbo v5, "MiuiPerfSuperviser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fail to send by PerfEventReporter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/statistics/PerfEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_7
    invoke-static {v4}, Landroid/os/AnrMonitor;->checkPerfEvent(Landroid/os/statistics/PerfEvent;)V

    goto :goto_3

    .line 135
    .end local v4    # "event":Landroid/os/statistics/PerfEvent;
    .end local v11    # "i":I
    .end local v16    # "isReportSuccess":Z
    :cond_8
    invoke-static {}, Landroid/app/ActivityThreadInjector;->isSystemThread()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 136
    const/16 v17, 0x100

    .line 137
    .local v17, "maxCapacity":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mRootEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v5}, Landroid/os/statistics/FastPerfEventList;->clear()V

    .line 138
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mRootEvents:Landroid/os/statistics/FastPerfEventList;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v5}, Landroid/os/statistics/FastPerfEventList;->clear()V

    .line 140
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    .line 141
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v5}, Landroid/os/statistics/FastPerfEventList;->clear()V

    .line 142
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    .line 144
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 75
    return-void

    .line 136
    .end local v17    # "maxCapacity":I
    :cond_9
    const/16 v17, 0x40

    .restart local v17    # "maxCapacity":I
    goto :goto_4
.end method

.method private obtainPerfEventSocketFd()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 193
    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_3

    .line 194
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    .line 195
    .local v1, "perfShielder":Lcom/android/internal/app/IPerfShielder;
    if-nez v1, :cond_0

    .line 196
    return-void

    .line 199
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/app/IPerfShielder;->getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 206
    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    if-nez v2, :cond_4

    .line 208
    :cond_2
    iput-object v4, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    .line 192
    .end local v1    # "perfShielder":Lcom/android/internal/app/IPerfShielder;
    :cond_3
    :goto_1
    return-void

    .line 200
    .restart local v1    # "perfShielder":Lcom/android/internal/app/IPerfShielder;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isInTestMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    const-string/jumbo v2, "MiuiPerfSuperviser"

    const-string/jumbo v3, "Failed to get perf event socket fd"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 207
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_4
    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1
.end method

.method private sendPerfEventParcel(Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 214
    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_4

    .line 215
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v5, 0x6

    if-ge v3, v5, :cond_4

    .line 217
    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    .line 218
    const/16 v6, 0x1000

    .line 216
    invoke-static {v5, p1, v6}, Landroid/os/statistics/PerfEventSocket;->sendPerfEvent(ILandroid/os/Parcel;I)I

    move-result v4

    .line 219
    .local v4, "result":I
    if-ltz v4, :cond_0

    .line 220
    const/4 v5, 0x1

    return v5

    .line 222
    :cond_0
    neg-int v0, v4

    .line 223
    .local v0, "errno":I
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isInTestMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    const-string/jumbo v5, "MiuiPerfSuperviser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to send perf event to perf event socket, errno: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_1
    sget v5, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v0, v5, :cond_2

    sget v5, Landroid/system/OsConstants;->EINTR:I

    if-ne v0, v5, :cond_3

    .line 228
    :cond_2
    :try_start_0
    div-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_3
    sget v5, Landroid/system/OsConstants;->EMSGSIZE:I

    if-eq v0, v5, :cond_4

    sget v5, Landroid/system/OsConstants;->ENOMEM:I

    if-ne v0, v5, :cond_5

    .line 244
    .end local v0    # "errno":I
    .end local v3    # "i":I
    .end local v4    # "result":I
    :cond_4
    :goto_2
    return v8

    .line 235
    .restart local v0    # "errno":I
    .restart local v3    # "i":I
    .restart local v4    # "result":I
    :cond_5
    :try_start_1
    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 239
    :goto_3
    iput-object v9, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    goto :goto_2

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 229
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/InterruptedException;
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/statistics/PerfSuperviser;->setThreadPerfSupervisionOn(Z)V

    .line 67
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSendingParcel:Landroid/os/Parcel;

    .line 68
    iget-object v0, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSendingParcel:Landroid/os/Parcel;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 69
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->latestFilterUptimeMillis:J

    .line 71
    :goto_0
    invoke-direct {p0}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->loopOnce()V

    goto :goto_0
.end method
