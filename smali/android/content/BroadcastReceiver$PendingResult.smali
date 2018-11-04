.class public Landroid/content/BroadcastReceiver$PendingResult;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingResult"
.end annotation


# static fields
.field private static final QUEUEDWORK_FINISH_TIMEOUT:I = 0x1388

.field public static final TYPE_COMPONENT:I = 0x0

.field public static final TYPE_REGISTERED:I = 0x1

.field public static final TYPE_UNREGISTERED:I = 0x2


# instance fields
.field mAbortBroadcast:Z

.field mFinished:Z

.field final mFlags:I

.field mH:Landroid/os/Handler;

.field mHaveSendFinish:Z

.field final mInitialStickyHint:Z

.field final mOrderedHint:Z

.field mResultCode:I

.field mResultData:Ljava/lang/String;

.field mResultExtras:Landroid/os/Bundle;

.field final mSendingUser:I

.field final mToken:Landroid/os/IBinder;

.field final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Ljava/lang/String;
    .param p3, "resultExtras"    # Landroid/os/Bundle;
    .param p4, "type"    # I
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "userId"    # I
    .param p9, "flags"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 90
    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 92
    iput p4, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    .line 93
    iput-boolean p5, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    .line 94
    iput-boolean p6, p0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    .line 95
    iput-object p7, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    .line 96
    iput p8, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    .line 97
    iput p9, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    .line 88
    return-void
.end method


# virtual methods
.method public final abortBroadcast()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 186
    return-void
.end method

.method checkSynchronousHint()V
    .locals 3

    .prologue
    .line 311
    iget-boolean v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    if-eqz v1, :cond_1

    .line 312
    :cond_0
    return-void

    .line 314
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 315
    const-string/jumbo v1, "BroadcastReceiver trying to return result during a non-ordered broadcast"

    .line 314
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 317
    const-string/jumbo v1, "BroadcastReceiver"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    return-void
.end method

.method public final clearAbortBroadcast()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 196
    return-void
.end method

.method public final finish()V
    .locals 6

    .prologue
    .line 205
    iget v3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    if-nez v3, :cond_4

    .line 206
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 207
    .local v0, "mgr":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/app/QueuedWork;->hasPendingWork()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    invoke-static {}, Landroid/app/QueuedWork;->getPendingWorkCount()I

    move-result v1

    .line 220
    .local v1, "originWorkCount":I
    new-instance v2, Landroid/content/BroadcastReceiver$PendingResult$1;

    invoke-direct {v2, p0, v1, v0}, Landroid/content/BroadcastReceiver$PendingResult$1;-><init>(Landroid/content/BroadcastReceiver$PendingResult;ILandroid/app/IActivityManager;)V

    .line 235
    .local v2, "sendFinishRunnable":Ljava/lang/Runnable;
    iget-object v3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mH:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mH:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    :cond_0
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Landroid/content/BroadcastReceiver$PendingResult$2;

    invoke-direct {v4, p0, v2, v0}, Landroid/content/BroadcastReceiver$PendingResult$2;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Ljava/lang/Runnable;Landroid/app/IActivityManager;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 204
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    .end local v1    # "originWorkCount":I
    .end local v2    # "sendFinishRunnable":Ljava/lang/Runnable;
    :cond_1
    :goto_0
    return-void

    .line 258
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    :cond_2
    sget-boolean v3, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "ActivityThread"

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Finishing broadcast to component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    goto :goto_0

    .line 262
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    :cond_4
    iget-boolean v3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 263
    sget-boolean v3, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "ActivityThread"

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Finishing broadcast to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 266
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    goto :goto_0
.end method

.method public final getAbortBroadcast()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    return v0
.end method

.method public final getResultCode()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    return v0
.end method

.method public final getResultData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultExtras(Z)Landroid/os/Bundle;
    .locals 1
    .param p1, "makeMap"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 155
    .local v0, "e":Landroid/os/Bundle;
    if-nez p1, :cond_0

    return-object v0

    .line 156
    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "e":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "e":Landroid/os/Bundle;
    iput-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 157
    :cond_1
    return-object v0
.end method

.method public getSendingUserId()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    return v0
.end method

.method public sendFinished(Landroid/app/IActivityManager;)V
    .locals 8
    .param p1, "am"    # Landroid/app/IActivityManager;

    .prologue
    .line 279
    monitor-enter p0

    .line 280
    :try_start_0
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFinished:Z

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Broadcast already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 283
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :try_start_2
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 289
    :cond_1
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-eqz v0, :cond_2

    .line 290
    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    iget-object v3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 291
    iget-boolean v5, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    iget v6, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    move-object v0, p1

    .line 290
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    .line 278
    return-void

    .line 295
    :cond_2
    :try_start_3
    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    iget v6, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v7

    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 272
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 271
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 325
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mH:Landroid/os/Handler;

    .line 324
    return-void
.end method

.method public final setResult(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 167
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 168
    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 169
    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 165
    return-void
.end method

.method public final setResultCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 107
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 105
    return-void
.end method

.method public final setResultData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 126
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public final setResultExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 145
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 143
    return-void
.end method
