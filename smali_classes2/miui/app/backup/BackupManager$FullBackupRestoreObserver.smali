.class Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
.super Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullBackupRestoreObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/backup/BackupManager;


# direct methods
.method private constructor <init>(Lmiui/app/backup/BackupManager;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/backup/BackupManager;

    .prologue
    .line 389
    iput-object p1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-direct {p0}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/backup/BackupManager;

    .prologue
    invoke-direct {p0, p1}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;)V

    return-void
.end method


# virtual methods
.method public onBackupEnd(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 420
    :try_start_0
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get2(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 425
    :goto_0
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get3(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 426
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get3(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    monitor-enter v4

    .line 427
    :goto_1
    :try_start_1
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get3(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 429
    :try_start_2
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get3(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 430
    :catch_0
    move-exception v2

    .line 431
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 426
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 421
    :catch_1
    move-exception v0

    .line 422
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    monitor-exit v4

    .line 437
    :cond_1
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 438
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onBackupEnd(Ljava/lang/String;I)V

    .line 442
    :cond_2
    :try_start_4
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get0(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 443
    :try_start_5
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get0(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v4

    .line 418
    :goto_2
    return-void

    .line 442
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 445
    :catch_2
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Backup:BackupManager"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onBackupStart(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {v0, v1}, Lmiui/app/backup/BackupManager;->-set0(Lmiui/app/backup/BackupManager;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 394
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onBackupStart(Ljava/lang/String;I)V

    .line 396
    new-instance v0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;

    invoke-direct {v0, p0, p1, p2}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;-><init>(Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 392
    :cond_0
    return-void
.end method

.method public onCustomProgressChange(Ljava/lang/String;IIJJ)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "progType"    # I
    .param p4, "prog"    # J
    .param p6, "total"    # J

    .prologue
    .line 485
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onCustomProgressChange(Ljava/lang/String;IIJJ)V

    .line 484
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onError(Ljava/lang/String;II)V

    .line 451
    :cond_0
    return-void
.end method

.method public onRestoreEnd(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 466
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onRestoreEnd(Ljava/lang/String;I)V

    .line 471
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-get0(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :try_start_1
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-get0(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    .line 465
    :goto_0
    return-void

    .line 471
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onRestoreError(Ljava/lang/String;II)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 480
    return-void
.end method

.method public onRestoreStart(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onRestoreStart(Ljava/lang/String;I)V

    .line 458
    :cond_0
    return-void
.end method
