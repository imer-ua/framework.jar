.class Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;
.super Landroid/os/Handler;
.source "LooperCheckPointDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/LooperCheckPointDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetectingHandler"
.end annotation


# instance fields
.field private final detectingThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final lockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method private decodeDetectingBeginUptimeMs(Landroid/os/Message;)J
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 97
    iget v0, p1, Landroid/os/Message;->arg2:I

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private decodeDetectingThread(Landroid/os/Message;)Ljava/lang/Thread;
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method

.method private decodeDetectingTid(Landroid/os/Message;)I
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 93
    iget v0, p1, Landroid/os/Message;->arg2:I

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private obtainDetectMessage(Ljava/lang/Thread;IJ)Landroid/os/Message;
    .locals 5
    .param p1, "targetThread"    # Ljava/lang/Thread;
    .param p2, "tid"    # I
    .param p3, "beginUptimeMs"    # J

    .prologue
    .line 78
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 79
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 80
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    const-wide v2, 0xffffffffL

    and-long/2addr v2, p3

    long-to-int v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 82
    const/16 v1, 0x20

    shr-long v2, p3, v1

    long-to-int v1, v2

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 84
    iget v1, v0, Landroid/os/Message;->arg2:I

    shl-int/lit8 v2, p2, 0x8

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 85
    return-object v0
.end method


# virtual methods
.method public beginLoopOnce(IJ)V
    .locals 6
    .param p1, "threadId"    # I
    .param p2, "beginUptimeMs"    # J

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 32
    .local v0, "currentThread":Ljava/lang/Thread;
    iget-object v3, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v2, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 35
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->obtainDetectMessage(Ljava/lang/Thread;IJ)Landroid/os/Message;

    move-result-object v1

    .line 36
    .local v1, "message":Landroid/os/Message;
    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->-get0()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 30
    return-void

    .line 32
    .end local v1    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public endLooperOnce()V
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 41
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->-get0()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 42
    iget-object v2, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 43
    :try_start_0
    iget-object v1, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 39
    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    const/16 v10, -0xa

    invoke-static {v9, v10}, Landroid/os/statistics/OsUtils;->setThreadPriorityUnconditonally(II)V

    .line 52
    invoke-direct {p0, p1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->decodeDetectingThread(Landroid/os/Message;)Ljava/lang/Thread;

    move-result-object v7

    .line 53
    .local v7, "targetThread":Ljava/lang/Thread;
    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->-get0()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 55
    iget-object v10, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    monitor-enter v10

    .line 56
    :try_start_0
    iget-object v9, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .local v3, "isDetecting":Z
    monitor-exit v10

    .line 58
    if-eqz v3, :cond_0

    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 59
    invoke-direct {p0, p1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->decodeDetectingTid(Landroid/os/Message;)I

    move-result v8

    .line 60
    .local v8, "tid":I
    invoke-direct {p0, p1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->decodeDetectingBeginUptimeMs(Landroid/os/Message;)J

    move-result-wide v0

    .line 61
    .local v0, "beginUptimeMs":J
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v4

    .line 63
    .local v4, "curUptimeMillis":J
    new-instance v2, Landroid/os/statistics/LooperCheckPoint;

    invoke-direct {v2}, Landroid/os/statistics/LooperCheckPoint;-><init>()V

    .line 64
    .local v2, "checkpoint":Landroid/os/statistics/LooperCheckPoint;
    iput v8, v2, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    .line 65
    iput-wide v0, v2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 66
    iput-wide v4, v2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 67
    invoke-static {v2}, Landroid/os/statistics/PerfEventReporter;->report(Landroid/os/statistics/PerfEvent;)V

    .line 69
    invoke-direct {p0, v7, v8, v4, v5}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->obtainDetectMessage(Ljava/lang/Thread;IJ)Landroid/os/Message;

    move-result-object v6

    .line 70
    .local v6, "next":Landroid/os/Message;
    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->-get0()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v9

    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, v6, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 55
    .end local v0    # "beginUptimeMs":J
    .end local v2    # "checkpoint":Landroid/os/statistics/LooperCheckPoint;
    .end local v3    # "isDetecting":Z
    .end local v4    # "curUptimeMillis":J
    .end local v6    # "next":Landroid/os/Message;
    .end local v8    # "tid":I
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
