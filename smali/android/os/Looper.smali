.class public final Landroid/os/Looper;
.super Landroid/os/BaseLooper;
.source "Looper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Looper"

.field private static sMainLooper:Landroid/os/Looper;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLogging:Landroid/util/Printer;

.field final mQueue:Landroid/os/MessageQueue;

.field final mThread:Ljava/lang/Thread;

.field private mTraceTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 56
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "quitAllowed"    # Z

    .prologue
    .line 209
    invoke-direct {p0}, Landroid/os/BaseLooper;-><init>()V

    .line 210
    new-instance v0, Landroid/os/MessageQueue;

    invoke-direct {v0, p1}, Landroid/os/MessageQueue;-><init>(Z)V

    iput-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    .line 209
    return-void
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 120
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static loop()V
    .locals 16

    .prologue
    const-wide/16 v14, 0x0

    .line 130
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 131
    .local v3, "me":Landroid/os/Looper;
    if-nez v3, :cond_0

    .line 132
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "No Looper; Looper.prepare() wasn\'t called on this thread."

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 134
    :cond_0
    iget-object v5, v3, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 138
    .local v5, "queue":Landroid/os/MessageQueue;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 142
    .local v0, "ident":J
    :goto_0
    invoke-virtual {v5}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object v4

    .line 143
    .local v4, "msg":Landroid/os/Message;
    if-nez v4, :cond_1

    .line 145
    return-void

    .line 149
    :cond_1
    iget-object v2, v3, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 150
    .local v2, "logging":Landroid/util/Printer;
    if-eqz v2, :cond_2

    .line 151
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ">>>>> Dispatching to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 152
    iget-object v11, v4, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 151
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 152
    const-string/jumbo v11, ": "

    .line 151
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 152
    iget v11, v4, Landroid/os/Message;->what:I

    .line 151
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 156
    :cond_2
    iget-object v10, v4, Landroid/os/Message;->monitorInfo:Landroid/os/BaseLooper$MessageMonitorInfo;

    const/4 v11, 0x1

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Looper;->updateMessageByState(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;I)V

    .line 158
    iget-wide v8, v3, Landroid/os/Looper;->mTraceTag:J

    .line 159
    .local v8, "traceTag":J
    cmp-long v10, v8, v14

    if-eqz v10, :cond_3

    invoke-static {v8, v9}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 160
    iget-object v10, v4, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v10, v4}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 163
    :cond_3
    :try_start_0
    iget-object v10, v4, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v10, v4}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    cmp-long v10, v8, v14

    if-eqz v10, :cond_4

    .line 166
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 171
    :cond_4
    iget-object v10, v4, Landroid/os/Message;->monitorInfo:Landroid/os/BaseLooper$MessageMonitorInfo;

    const/4 v11, 0x2

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Looper;->updateMessageByState(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;I)V

    .line 173
    if-eqz v2, :cond_5

    .line 174
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "<<<<< Finished to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 179
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 180
    .local v6, "newIdent":J
    cmp-long v10, v0, v6

    if-eqz v10, :cond_6

    .line 181
    const-string/jumbo v10, "Looper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Thread identity changed from 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 182
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    .line 181
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 182
    const-string/jumbo v12, " to 0x"

    .line 181
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 183
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    .line 181
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 183
    const-string/jumbo v12, " while dispatching to "

    .line 181
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 184
    iget-object v12, v4, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 181
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 184
    const-string/jumbo v12, " "

    .line 181
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 185
    iget-object v12, v4, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 181
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 185
    const-string/jumbo v12, " what="

    .line 181
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 185
    iget v12, v4, Landroid/os/Message;->what:I

    .line 181
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_6
    invoke-virtual {v4}, Landroid/os/Message;->recycleUnchecked()V

    goto/16 :goto_0

    .line 164
    .end local v6    # "newIdent":J
    :catchall_0
    move-exception v10

    .line 165
    cmp-long v11, v8, v14

    if-eqz v11, :cond_7

    .line 166
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 164
    :cond_7
    throw v10
.end method

.method public static myLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method public static myQueue()Landroid/os/MessageQueue;
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public static prepare()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 86
    return-void
.end method

.method private static prepare(Z)V
    .locals 2
    .param p0, "quitAllowed"    # Z

    .prologue
    .line 91
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Only one Looper may be created per thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Landroid/os/Looper;

    invoke-direct {v1, p0}, Landroid/os/Looper;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public static prepareMainLooper()V
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 105
    const-class v1, Landroid/os/Looper;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "The main Looper has already been prepared."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 109
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    .line 112
    sget-object v0, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Looper;->enableMonitor(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 103
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Looper;->dumpAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public getQueue()Landroid/os/MessageQueue;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public isCurrentThread()Z
    .locals 2

    .prologue
    .line 218
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 255
    return-void
.end method

.method public quitSafely()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 271
    return-void
.end method

.method public setMessageLogging(Landroid/util/Printer;)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;

    .prologue
    .line 231
    iput-object p1, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 230
    return-void
.end method

.method public setTraceTag(J)V
    .locals 1
    .param p1, "traceTag"    # J

    .prologue
    .line 236
    iput-wide p1, p0, Landroid/os/Looper;->mTraceTag:J

    .line 235
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Looper ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    const-string/jumbo v1, ") {"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    const-string/jumbo v1, "}"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
