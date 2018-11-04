.class public Landroid/app/QueuedWork;
.super Ljava/lang/Object;
.source "QueuedWork.java"


# static fields
.field private static final QUEUEDWORK_WAIT_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "QueuedWork"

.field private static final sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 41
    sput-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "finisher"    # Ljava/lang/Runnable;

    .prologue
    .line 76
    sget-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public static getPendingWorkCount()I
    .locals 1

    .prologue
    .line 122
    sget-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public static hasPendingWork()Z
    .locals 1

    .prologue
    .line 132
    sget-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static remove(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "finisher"    # Ljava/lang/Runnable;

    .prologue
    .line 80
    sget-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public static singleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 54
    const-class v1, Landroid/app/QueuedWork;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 59
    :cond_0
    sget-object v0, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static waitToFinish()V
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x2710

    invoke-static {v0}, Landroid/app/QueuedWork;->waitToFinish(I)V

    .line 99
    return-void
.end method

.method public static waitToFinish(I)V
    .locals 10
    .param p0, "timeout"    # I

    .prologue
    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 106
    .local v2, "startTime":J
    invoke-static {}, Landroid/app/QueuedWork;->getPendingWorkCount()I

    move-result v0

    .line 107
    .local v0, "originWorkCount":I
    const/4 v4, 0x0

    .line 108
    .local v4, "workNdx":I
    :cond_0
    sget-object v5, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .local v1, "toFinish":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 109
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 110
    add-int/lit8 v4, v4, 0x1

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    int-to-long v8, p0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 112
    const-string/jumbo v5, "QueuedWork"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wait to finish, remaining= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 113
    invoke-static {}, Landroid/app/QueuedWork;->getPendingWorkCount()I

    move-result v7

    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 113
    const-string/jumbo v7, "/"

    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 114
    const-string/jumbo v7, ", workNdx="

    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 115
    const-string/jumbo v7, ", took too long "

    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    .line 112
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 115
    const-string/jumbo v7, " ms"

    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    return-void
.end method
