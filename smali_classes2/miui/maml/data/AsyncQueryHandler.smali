.class public abstract Lmiui/maml/data/AsyncQueryHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;,
        Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;
    }
.end annotation


# static fields
.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AsyncQuery"

.field private static final localLOGV:Z

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field final mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lmiui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 129
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiui/maml/data/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 130
    const-class v2, Landroid/content/AsyncQueryHandler;

    monitor-enter v2

    .line 131
    :try_start_0
    sget-object v1, Lmiui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "AsyncQueryWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 135
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lmiui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v2

    .line 139
    sget-object v1, Lmiui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v1}, Lmiui/maml/data/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 127
    return-void

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 144
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiui/maml/data/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 145
    const-class v2, Landroid/content/AsyncQueryHandler;

    monitor-enter v2

    .line 146
    :try_start_0
    sget-object v1, Lmiui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 147
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "AsyncQueryWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lmiui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v2

    .line 153
    sget-object v1, Lmiui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v1}, Lmiui/maml/data/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 142
    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public final cancelOperation(I)V
    .locals 1
    .param p1, "token"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 157
    new-instance v0, Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;-><init>(Lmiui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 349
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 356
    .local v0, "args":Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;
    iget v2, p1, Landroid/os/Message;->what:I

    .line 357
    .local v2, "token":I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 360
    .local v1, "event":I
    packed-switch v1, :pswitch_data_0

    .line 348
    :goto_0
    return-void

    .line 362
    :pswitch_0
    iget-object v4, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {p0, v2, v4, v3}, Lmiui/maml/data/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0

    .line 366
    :pswitch_1
    iget-object v4, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0, v2, v4, v3}, Lmiui/maml/data/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 370
    :pswitch_2
    iget-object v4, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lmiui/maml/data/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 374
    :pswitch_3
    iget-object v4, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lmiui/maml/data/AsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 343
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 317
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 304
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 330
    return-void
.end method

.method public final startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 282
    iget-object v2, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 283
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 285
    new-instance v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 286
    .local v0, "args":Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 287
    iput-object p3, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 288
    iput-object p2, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 289
    iput-object p4, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 290
    iput-object p5, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 291
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 293
    iget-object v2, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    return-void
.end method

.method public final startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 228
    iget-object v2, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 229
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 231
    new-instance v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 232
    .local v0, "args":Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 233
    iput-object p3, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 234
    iput-object p2, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 235
    iput-object p4, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 236
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 238
    iget-object v2, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v2, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 187
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 189
    new-instance v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 190
    .local v0, "args":Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 191
    iput-object p3, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 192
    iput-object p4, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 193
    iput-object p5, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 194
    iput-object p6, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 195
    iput-object p7, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 196
    iput-object p2, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 197
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    iget-object v2, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    return-void
.end method

.method public final startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 254
    iget-object v2, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 255
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 257
    new-instance v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 258
    .local v0, "args":Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 259
    iput-object p3, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 260
    iput-object p2, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 261
    iput-object p4, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 262
    iput-object p5, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 263
    iput-object p6, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 264
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 266
    iget-object v2, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    return-void
.end method
