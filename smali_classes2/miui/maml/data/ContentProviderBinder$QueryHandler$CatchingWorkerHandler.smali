.class public Lmiui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;
.super Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CatchingWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/data/ContentProviderBinder$QueryHandler;


# direct methods
.method public constructor <init>(Lmiui/maml/data/ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/maml/data/ContentProviderBinder$QueryHandler;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 447
    iput-object p1, p0, Lmiui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;->this$1:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    .line 448
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;-><init>(Lmiui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 447
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 455
    :try_start_0
    invoke-super {p0, p1}, Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string/jumbo v3, "ContentProviderBinder"

    const-string/jumbo v4, "Exception on background worker thread"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 458
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_1
    move-exception v2

    .line 459
    .local v2, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string/jumbo v3, "ContentProviderBinder"

    const-string/jumbo v4, "Exception on background worker thread"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 456
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v1

    .line 457
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string/jumbo v3, "ContentProviderBinder"

    const-string/jumbo v4, "Exception on background worker thread"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
