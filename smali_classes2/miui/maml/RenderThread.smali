.class public Lmiui/maml/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RenderThread$CommandThreadHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderThread"

.field private static sGlobalThread:Lmiui/maml/RenderThread;

.field private static sGlobalThreadLock:Ljava/lang/Object;


# instance fields
.field private mCmdHanlder:Lmiui/maml/RenderThread$CommandThreadHandler;

.field private mCmdThread:Landroid/os/HandlerThread;

.field private mPaused:Z

.field private mRendererControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeSignal:Ljava/lang/Object;

.field private mSignaled:Z

.field private mSleepSignal:Ljava/lang/Object;

.field private mStarted:Z

.field private mStop:Z


# direct methods
.method static synthetic -wrap0(Lmiui/maml/RenderThread;Z)V
    .locals 0
    .param p1, "pause"    # Z

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/RenderThread;->setPausedImpl(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 46
    invoke-direct {p0}, Lmiui/maml/RenderThread;->initCmdThread()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lmiui/maml/RendererController;)V
    .locals 1
    .param p1, "c"    # Lmiui/maml/RendererController;

    .prologue
    .line 39
    const-string/jumbo v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 40
    invoke-virtual {p0, p1}, Lmiui/maml/RenderThread;->addRendererController(Lmiui/maml/RendererController;)V

    .line 41
    invoke-direct {p0}, Lmiui/maml/RenderThread;->initCmdThread()V

    .line 38
    return-void
.end method

.method private doFinish()V
    .locals 5

    .prologue
    .line 271
    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 272
    :try_start_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 273
    return-void

    .line 275
    :cond_0
    :try_start_1
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 276
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 277
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .line 278
    .local v1, "c":Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "c":Lmiui/maml/RendererController;
    :cond_1
    monitor-exit v4

    .line 270
    return-void

    .line 271
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private doInit()V
    .locals 5

    .prologue
    .line 232
    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 233
    :try_start_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 234
    return-void

    .line 235
    :cond_0
    :try_start_1
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 236
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 237
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .line 238
    .local v1, "c":Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->init()V

    .line 239
    invoke-virtual {v1}, Lmiui/maml/RendererController;->requestUpdate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "c":Lmiui/maml/RendererController;
    :cond_1
    monitor-exit v4

    .line 231
    return-void

    .line 232
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private doPause()V
    .locals 5

    .prologue
    .line 245
    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 246
    :try_start_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 247
    return-void

    .line 249
    :cond_0
    :try_start_1
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 250
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 251
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .line 252
    .local v1, "c":Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "c":Lmiui/maml/RendererController;
    :cond_1
    monitor-exit v4

    .line 244
    return-void

    .line 245
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private doResume()V
    .locals 5

    .prologue
    .line 258
    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 259
    :try_start_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 260
    return-void

    .line 262
    :cond_0
    :try_start_1
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 263
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 264
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .line 265
    .local v1, "c":Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "c":Lmiui/maml/RendererController;
    :cond_1
    monitor-exit v4

    .line 257
    return-void

    .line 258
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static globalThread()Lmiui/maml/RenderThread;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v0

    return-object v0
.end method

.method public static globalThread(Z)Lmiui/maml/RenderThread;
    .locals 3
    .param p0, "ensureStart"    # Z

    .prologue
    .line 72
    sget-object v2, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 73
    :try_start_0
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lmiui/maml/RenderThread;

    invoke-direct {v1}, Lmiui/maml/RenderThread;-><init>()V

    sput-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    .line 76
    :cond_0
    if-eqz p0, :cond_1

    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v1}, Lmiui/maml/RenderThread;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    :cond_1
    :goto_0
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 78
    :cond_2
    :try_start_1
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/lang/IllegalThreadStateException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static globalThreadStop()V
    .locals 2

    .prologue
    .line 59
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->setStop()V

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initCmdThread()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "cmd"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    .line 51
    iget-object v0, p0, Lmiui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    new-instance v0, Lmiui/maml/RenderThread$CommandThreadHandler;

    iget-object v1, p0, Lmiui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/maml/RenderThread$CommandThreadHandler;-><init>(Lmiui/maml/RenderThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mCmdHanlder:Lmiui/maml/RenderThread$CommandThreadHandler;

    .line 49
    return-void
.end method

.method private setPausedImpl(Z)V
    .locals 2
    .param p1, "pause"    # Z

    .prologue
    .line 118
    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-ne v0, p1, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iput-boolean p1, p0, Lmiui/maml/RenderThread;->mPaused:Z

    .line 123
    if-nez p1, :cond_1

    .line 124
    iget-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 127
    invoke-virtual {p0}, Lmiui/maml/RenderThread;->signal()V

    .line 117
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final waitSleep(J)V
    .locals 5
    .param p1, "t"    # J

    .prologue
    .line 218
    iget-boolean v1, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 219
    :cond_0
    return-void

    .line 220
    :cond_1
    iget-object v2, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v2

    .line 221
    :try_start_0
    iget-boolean v1, p0, Lmiui/maml/RenderThread;->mSignaled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 223
    :try_start_1
    iget-object v1, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v2

    .line 217
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 220
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private waiteForResume()V
    .locals 2

    .prologue
    .line 285
    :try_start_0
    iget-object v1, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addRendererController(Lmiui/maml/RendererController;)V
    .locals 3
    .param p1, "c"    # Lmiui/maml/RendererController;

    .prologue
    .line 89
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string/jumbo v0, "RenderThread"

    const-string/jumbo v2, "addRendererController: RendererController already exists"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 92
    return-void

    .line 94
    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Lmiui/maml/RendererController;->setRenderThread(Lmiui/maml/RenderThread;)V

    .line 95
    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mStarted:Z

    return v0
.end method

.method public removeRendererController(Lmiui/maml/RendererController;)V
    .locals 2
    .param p1, "c"    # Lmiui/maml/RendererController;

    .prologue
    .line 103
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/maml/RendererController;->setRenderThread(Lmiui/maml/RenderThread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 137
    const-string/jumbo v12, "RenderThread"

    const-string/jumbo v13, "RenderThread started"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_0
    invoke-direct {p0}, Lmiui/maml/RenderThread;->doInit()V

    .line 142
    const/4 v12, 0x1

    iput-boolean v12, p0, Lmiui/maml/RenderThread;->mStarted:Z

    .line 143
    :goto_0
    iget-boolean v12, p0, Lmiui/maml/RenderThread;->mStop:Z

    if-nez v12, :cond_2

    .line 144
    iget-boolean v12, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v12, :cond_1

    .line 145
    iget-object v13, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    :try_start_1
    iget-boolean v12, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v12, :cond_0

    .line 147
    invoke-direct {p0}, Lmiui/maml/RenderThread;->doPause()V

    .line 148
    const-string/jumbo v12, "RenderThread"

    const-string/jumbo v14, "RenderThread paused, waiting for signal"

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lmiui/maml/RenderThread;->waiteForResume()V

    .line 150
    const-string/jumbo v12, "RenderThread"

    const-string/jumbo v14, "RenderThread resumed"

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0}, Lmiui/maml/RenderThread;->doResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v13

    .line 155
    :cond_1
    iget-boolean v12, p0, Lmiui/maml/RenderThread;->mStop:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v12, :cond_3

    .line 201
    :cond_2
    :goto_1
    invoke-direct {p0}, Lmiui/maml/RenderThread;->doFinish()V

    .line 202
    iget-object v12, p0, Lmiui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->quit()Z

    .line 203
    const-string/jumbo v12, "RenderThread"

    const-string/jumbo v13, "RenderThread stopped"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 145
    :catchall_0
    move-exception v12

    :try_start_3
    monitor-exit v13

    throw v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    .line 193
    :catch_0
    move-exception v3

    .line 194
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    const-string/jumbo v12, "RenderThread"

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 159
    .local v4, "currentTime":J
    const-wide v10, 0x7fffffffffffffffL

    .line 160
    .local v10, "nextUpdateInterval":J
    iget-object v13, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    .line 161
    :try_start_5
    iget-object v12, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 162
    .local v0, "N":I
    const/4 v1, 0x1

    .line 163
    .local v1, "allPause":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v0, :cond_4

    .line 165
    iget-boolean v12, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v12, :cond_6

    .line 182
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_a

    .line 183
    :cond_5
    const/4 v12, 0x1

    iput-boolean v12, p0, Lmiui/maml/RenderThread;->mPaused:Z

    .line 184
    const-string/jumbo v12, "RenderThread"

    const-string/jumbo v14, "All controllers paused."

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 196
    .end local v0    # "N":I
    .end local v1    # "allPause":Z
    .end local v4    # "currentTime":J
    .end local v7    # "i":I
    .end local v10    # "nextUpdateInterval":J
    :catch_1
    move-exception v6

    .line 197
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    const-string/jumbo v12, "RenderThread"

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 168
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v0    # "N":I
    .restart local v1    # "allPause":Z
    .restart local v4    # "currentTime":J
    .restart local v7    # "i":I
    .restart local v10    # "nextUpdateInterval":J
    :cond_6
    :try_start_7
    iget-object v12, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    .line 169
    .local v2, "c":Lmiui/maml/RendererController;
    invoke-virtual {v2}, Lmiui/maml/RendererController;->isSelfPaused()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v2}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 172
    :cond_7
    const/4 v1, 0x0

    .line 174
    invoke-virtual {v2}, Lmiui/maml/RendererController;->hasInited()Z

    move-result v12

    if-nez v12, :cond_8

    .line 175
    invoke-virtual {v2}, Lmiui/maml/RendererController;->init()V

    .line 178
    :cond_8
    invoke-virtual {v2, v4, v5}, Lmiui/maml/RendererController;->updateIfNeeded(J)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-wide v8

    .line 179
    .local v8, "l":J
    cmp-long v12, v8, v10

    if-gez v12, :cond_9

    .line 180
    move-wide v10, v8

    .line 163
    .end local v8    # "l":J
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v2    # "c":Lmiui/maml/RendererController;
    :cond_a
    :try_start_8
    monitor-exit v13

    .line 189
    invoke-direct {p0, v10, v11}, Lmiui/maml/RenderThread;->waitSleep(J)V

    .line 191
    const/4 v12, 0x0

    iput-boolean v12, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    goto/16 :goto_0

    .line 160
    .end local v0    # "N":I
    .end local v1    # "allPause":Z
    .end local v7    # "i":I
    :catchall_1
    move-exception v12

    monitor-exit v13

    throw v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
.end method

.method public setPaused(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lmiui/maml/RenderThread;->mCmdHanlder:Lmiui/maml/RenderThread$CommandThreadHandler;

    invoke-virtual {v0, p1}, Lmiui/maml/RenderThread$CommandThreadHandler;->setPause(Z)V

    .line 113
    return-void
.end method

.method public setStop()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mStop:Z

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 130
    return-void
.end method

.method public signal()V
    .locals 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    if-eqz v0, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    .line 213
    iget-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 207
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
