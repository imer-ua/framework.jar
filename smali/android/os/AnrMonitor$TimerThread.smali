.class public Landroid/os/AnrMonitor$TimerThread;
.super Ljava/lang/Thread;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AnrMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerThread"
.end annotation


# instance fields
.field private completed:Z

.field private timeout:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 983
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 984
    iput-wide p1, p0, Landroid/os/AnrMonitor$TimerThread;->timeout:J

    .line 982
    return-void
.end method


# virtual methods
.method public declared-synchronized finishRun()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 994
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/os/AnrMonitor$TimerThread;->completed:Z

    .line 995
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 993
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 989
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 990
    invoke-virtual {p0}, Landroid/os/AnrMonitor$TimerThread;->finishRun()V

    .line 988
    return-void
.end method

.method public declared-synchronized startAndWait()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 1000
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 1001
    iget-wide v2, p0, Landroid/os/AnrMonitor$TimerThread;->timeout:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1003
    iget-boolean v1, p0, Landroid/os/AnrMonitor$TimerThread;->completed:Z

    if-nez v1, :cond_0

    .line 1004
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 998
    return-void

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
