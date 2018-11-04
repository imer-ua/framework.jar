.class public Lmiui/maml/RendererController;
.super Ljava/lang/Object;
.source "RendererController.java"

# interfaces
.implements Lmiui/maml/FramerateTokenList$FramerateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RendererController$EmptyListener;,
        Lmiui/maml/RendererController$IRenderable;,
        Lmiui/maml/RendererController$ISelfUpdateRenderable;,
        Lmiui/maml/RendererController$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererController"

.field private static final MAX_MSG_COUNT:I = 0x3


# instance fields
.field private mCurFramerate:F

.field private mFrameTime:J

.field private mFramerateControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/FramerateController;",
            ">;"
        }
    .end annotation
.end field

.field private mFramerateTokenList:Lmiui/maml/FramerateTokenList;

.field private mInited:Z

.field private mLastUpdateSystemTime:J

.field private mListener:Lmiui/maml/RendererController$Listener;

.field private mLock:[B

.field private mMsgLock:Ljava/lang/Object;

.field private mMsgQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mPendingRender:Z

.field private mReadRunnableQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderThread:Lmiui/maml/RenderThread;

.field private mSelfPaused:Z

.field private mShouldUpdate:Z

.field private mTouchX:F

.field private mTouchY:F

.field private mWriteRunnableQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteRunnableQueueLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Lmiui/maml/FramerateTokenList;

    invoke-direct {v0}, Lmiui/maml/FramerateTokenList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    .line 93
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/maml/RendererController;->mLock:[B

    .line 100
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/maml/RendererController;->mFrameTime:J

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    .line 107
    iput v2, p0, Lmiui/maml/RendererController;->mTouchX:F

    .line 109
    iput v2, p0, Lmiui/maml/RendererController;->mTouchY:F

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Lmiui/maml/FramerateTokenList;

    invoke-direct {v0, p0}, Lmiui/maml/FramerateTokenList;-><init>(Lmiui/maml/FramerateTokenList$FramerateChangeListener;)V

    iput-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    .line 117
    return-void
.end method

.method public constructor <init>(Lmiui/maml/RendererController$Listener;)V
    .locals 0
    .param p1, "l"    # Lmiui/maml/RendererController$Listener;

    .prologue
    .line 122
    invoke-direct {p0}, Lmiui/maml/RendererController;-><init>()V

    .line 123
    invoke-virtual {p0, p1}, Lmiui/maml/RendererController;->setListener(Lmiui/maml/RendererController$Listener;)V

    .line 121
    return-void
.end method


# virtual methods
.method public addFramerateController(Lmiui/maml/elements/FramerateController;)V
    .locals 1
    .param p1, "framerateController"    # Lmiui/maml/elements/FramerateController;

    .prologue
    .line 228
    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method public final createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v0, p1}, Lmiui/maml/FramerateTokenList;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public final doRender()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    .line 270
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->doRender()V

    .line 267
    :cond_0
    return-void
.end method

.method public final doneRender()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    .line 326
    invoke-virtual {p0}, Lmiui/maml/RendererController;->triggerUpdate()V

    .line 324
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 150
    iget-object v2, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v2

    .line 151
    :try_start_0
    iget-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    monitor-exit v2

    .line 152
    return-void

    .line 154
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .line 156
    :try_start_2
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1}, Lmiui/maml/RendererController$Listener;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    :cond_1
    :goto_0
    :try_start_3
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 163
    :try_start_4
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    .line 164
    :goto_1
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 165
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 162
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v3

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 150
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    const-string/jumbo v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    monitor-exit v3

    .line 169
    iget-object v3, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 170
    :try_start_7
    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v3

    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit v2

    .line 175
    iget-object v1, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v1}, Lmiui/maml/FramerateTokenList;->clear()V

    .line 149
    return-void

    .line 169
    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v3

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method public final getMessage()Landroid/view/MotionEvent;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 453
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 454
    return-object v0

    .line 455
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final hasInited()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    return v0
.end method

.method public final hasMessage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 445
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 446
    return v0

    .line 447
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_0
    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    monitor-exit v1

    return v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final hasRunnable()Z
    .locals 3

    .prologue
    .line 489
    iget-object v2, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 490
    :try_start_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "ret":Z
    :goto_0
    monitor-exit v2

    .line 492
    return v0

    .line 490
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "ret":Z
    goto :goto_0

    .line 489
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public init()V
    .locals 4

    .prologue
    .line 180
    iget-object v2, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v2

    .line 181
    :try_start_0
    iget-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 182
    return-void

    .line 184
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 186
    :try_start_2
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1}, Lmiui/maml/RendererController$Listener;->init()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :cond_1
    :goto_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 179
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    const-string/jumbo v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final isSelfPaused()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    return v0
.end method

.method public onFrameRateChage(FF)V
    .locals 1
    .param p1, "old"    # F
    .param p2, "cur"    # F

    .prologue
    .line 522
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 523
    invoke-virtual {p0}, Lmiui/maml/RendererController;->triggerUpdate()V

    .line 521
    :cond_0
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 428
    return-void

    .line 431
    :cond_0
    iget-object v2, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v2, :cond_1

    .line 433
    :try_start_0
    iget-object v2, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v2, p1}, Lmiui/maml/RendererController$Listener;->onHover(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 439
    const-string/jumbo v2, "RendererController"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 434
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 436
    const-string/jumbo v2, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    return-void

    .line 413
    :cond_0
    iget-object v2, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v2, :cond_1

    .line 415
    :try_start_0
    iget-object v2, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v2, p1}, Lmiui/maml/RendererController$Listener;->onTouch(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :cond_1
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 421
    const-string/jumbo v2, "RendererController"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 418
    const-string/jumbo v2, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v1

    .line 202
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    .line 203
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    .line 197
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final pendingRender()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    return v0
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    .line 461
    iget-object v4, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 462
    :try_start_0
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 463
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 465
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, p0, Lmiui/maml/RendererController;->mTouchX:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_6

    .line 466
    :cond_1
    :goto_0
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lmiui/maml/RendererController;->mTouchX:F

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lmiui/maml/RendererController;->mTouchY:F

    .line 470
    :cond_2
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v5, 0x3

    if-le v3, v5, :cond_5

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "dropEvent":Landroid/view/MotionEvent;
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "me$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 473
    .local v1, "me":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 474
    move-object v0, v1

    .line 478
    .end local v0    # "dropEvent":Landroid/view/MotionEvent;
    .end local v1    # "me":Landroid/view/MotionEvent;
    :cond_4
    if-eqz v0, :cond_5

    .line 479
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 480
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "me$iterator":Ljava/util/Iterator;
    :cond_5
    monitor-exit v4

    .line 484
    invoke-virtual {p0}, Lmiui/maml/RendererController;->triggerUpdate()V

    .line 460
    return-void

    .line 465
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v5, p0, Lmiui/maml/RendererController;->mTouchY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 496
    if-nez p1, :cond_0

    .line 497
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "postRunnable null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 500
    :try_start_0
    iget-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    iget-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 504
    invoke-virtual {p0}, Lmiui/maml/RendererController;->requestUpdate()V

    .line 495
    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeFramerateController(Lmiui/maml/elements/FramerateController;)V
    .locals 1
    .param p1, "framerateController"    # Lmiui/maml/elements/FramerateController;

    .prologue
    .line 235
    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public final requestUpdate()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    .line 146
    invoke-virtual {p0}, Lmiui/maml/RendererController;->triggerUpdate()V

    .line 144
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v1

    .line 217
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    .line 218
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 212
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public runRunnables()V
    .locals 5

    .prologue
    .line 508
    iget-object v4, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 509
    :try_start_0
    iget-object v2, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 510
    .local v2, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v3, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    iput-object v3, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 511
    iput-object v2, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 513
    iget-object v3, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 514
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 515
    iget-object v3, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 517
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :cond_0
    iget-object v3, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 507
    return-void
.end method

.method public selfPause()V
    .locals 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_0

    .line 281
    return-void

    .line 283
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v1

    .line 284
    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_1

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    .line 286
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    .line 279
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public selfResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_0

    .line 299
    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v1

    .line 302
    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-eqz v0, :cond_1

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    .line 304
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 312
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v2}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 297
    :cond_2
    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setListener(Lmiui/maml/RendererController$Listener;)V
    .locals 0
    .param p1, "l"    # Lmiui/maml/RendererController$Listener;

    .prologue
    .line 130
    iput-object p1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    .line 129
    return-void
.end method

.method public setRenderThread(Lmiui/maml/RenderThread;)V
    .locals 0
    .param p1, "renderThread"    # Lmiui/maml/RenderThread;

    .prologue
    .line 136
    iput-object p1, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    .line 135
    return-void
.end method

.method public tick(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 396
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    .line 397
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v1, :cond_0

    .line 399
    :try_start_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1, p1, p2}, Lmiui/maml/RendererController$Listener;->tick(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_0
    :goto_0
    iput-wide p1, p0, Lmiui/maml/RendererController;->mLastUpdateSystemTime:J

    .line 395
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 402
    const-string/jumbo v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public triggerUpdate()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->signal()V

    .line 333
    :cond_0
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->triggerUpdate()V

    .line 329
    :cond_1
    return-void
.end method

.method public update(J)J
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    .line 374
    invoke-virtual {p0, p1, p2}, Lmiui/maml/RendererController;->updateFramerate(J)J

    move-result-wide v2

    .line 375
    .local v2, "nextUpdateInterval":J
    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v1

    .line 376
    .local v1, "hasRunnable":Z
    iget-boolean v4, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    if-eqz v4, :cond_0

    if-eqz v1, :cond_3

    .line 377
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/RendererController;->runRunnables()V

    .line 378
    invoke-virtual {p0}, Lmiui/maml/RendererController;->getMessage()Landroid/view/MotionEvent;

    move-result-object v0

    .line 379
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    invoke-virtual {p0, v0}, Lmiui/maml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    .line 386
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/RendererController;->tick(J)V

    .line 387
    invoke-virtual {p0}, Lmiui/maml/RendererController;->doRender()V

    .line 388
    iget-boolean v4, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 389
    :cond_2
    const-wide/16 v2, 0x0

    .line 392
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_3
    return-wide v2

    .line 383
    .restart local v0    # "event":Landroid/view/MotionEvent;
    :cond_4
    invoke-virtual {p0, v0}, Lmiui/maml/RendererController;->onHover(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public final updateFramerate(J)J
    .locals 13
    .param p1, "time"    # J

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 240
    const-wide v8, 0x7fffffffffffffffL

    .line 241
    .local v8, "nextUpdateInterval":J
    iget-object v5, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 242
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 243
    iget-object v5, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/FramerateController;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/FramerateController;->updateFramerate(J)J

    move-result-wide v6

    .line 244
    .local v6, "l":J
    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 245
    move-wide v8, v6

    .line 242
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 248
    .end local v6    # "l":J
    :cond_1
    iget-object v5, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v5}, Lmiui/maml/FramerateTokenList;->getFramerate()F

    move-result v1

    .line 249
    .local v1, "framerate":F
    iget v5, p0, Lmiui/maml/RendererController;->mCurFramerate:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_3

    .line 255
    iget v5, p0, Lmiui/maml/RendererController;->mCurFramerate:F

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_2

    cmpg-float v5, v1, v10

    if-gez v5, :cond_2

    .line 256
    invoke-virtual {p0}, Lmiui/maml/RendererController;->requestUpdate()V

    .line 258
    :cond_2
    iput v1, p0, Lmiui/maml/RendererController;->mCurFramerate:F

    .line 260
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v5, v1

    float-to-long v2, v5

    .line 261
    .local v2, "frameTime":J
    :goto_1
    iput-wide v2, p0, Lmiui/maml/RendererController;->mFrameTime:J

    .line 264
    .end local v2    # "frameTime":J
    :cond_3
    iget-wide v10, p0, Lmiui/maml/RendererController;->mFrameTime:J

    cmp-long v5, v10, v8

    if-gez v5, :cond_4

    iget-wide v8, p0, Lmiui/maml/RendererController;->mFrameTime:J

    .end local v8    # "nextUpdateInterval":J
    :cond_4
    return-wide v8

    .line 260
    .restart local v8    # "nextUpdateInterval":J
    :cond_5
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_1
.end method

.method public updateIfNeeded(J)J
    .locals 11
    .param p1, "currentTime"    # J

    .prologue
    .line 340
    invoke-virtual {p0, p1, p2}, Lmiui/maml/RendererController;->updateFramerate(J)J

    move-result-wide v2

    .line 342
    .local v2, "nextUpdateInterval":J
    iget-wide v6, p0, Lmiui/maml/RendererController;->mFrameTime:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    iget-wide v6, p0, Lmiui/maml/RendererController;->mFrameTime:J

    iget-wide v8, p0, Lmiui/maml/RendererController;->mLastUpdateSystemTime:J

    sub-long v8, p1, v8

    sub-long v4, v6, v8

    .line 344
    .local v4, "timeGap":J
    :goto_0
    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v1

    .line 345
    .local v1, "hasRunnable":Z
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    iget-boolean v6, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasMessage()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_7

    .line 346
    :cond_0
    iget-boolean v6, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    if-eqz v6, :cond_1

    if-eqz v1, :cond_4

    .line 347
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/RendererController;->runRunnables()V

    .line 348
    invoke-virtual {p0}, Lmiui/maml/RendererController;->getMessage()Landroid/view/MotionEvent;

    move-result-object v0

    .line 349
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 351
    invoke-virtual {p0, v0}, Lmiui/maml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    .line 356
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Lmiui/maml/RendererController;->tick(J)V

    .line 357
    invoke-virtual {p0}, Lmiui/maml/RendererController;->doRender()V

    .line 358
    iget-boolean v6, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasMessage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 359
    :cond_3
    const-wide/16 v2, 0x0

    .line 366
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_4
    :goto_2
    return-wide v2

    .line 343
    .end local v1    # "hasRunnable":Z
    .end local v4    # "timeGap":J
    :cond_5
    const-wide v4, 0x7fffffffffffffffL

    .restart local v4    # "timeGap":J
    goto :goto_0

    .line 353
    .restart local v0    # "event":Landroid/view/MotionEvent;
    .restart local v1    # "hasRunnable":Z
    :cond_6
    invoke-virtual {p0, v0}, Lmiui/maml/RendererController;->onHover(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 362
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_7
    cmp-long v6, v4, v2

    if-gez v6, :cond_4

    .line 363
    move-wide v2, v4

    goto :goto_2
.end method
