.class Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;
.super Ljava/lang/Thread;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->onBackupStart(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

.field final synthetic val$feature:I

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$1"    # Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
    .param p2, "val$pkg"    # Ljava/lang/String;
    .param p3, "val$feature"    # I

    .prologue
    .line 396
    iput-object p1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iput-object p2, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->val$feature:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 400
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v1, v1, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-get3(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 401
    :try_start_1
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v1, v1, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v1

    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->val$feature:I

    iget-object v5, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v5, v5, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v5}, Lmiui/app/backup/BackupManager;->-get2(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-interface {v1, v3, v4, v5}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onBackupDataTransaction(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;)V

    .line 402
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v1, v1, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-get3(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 403
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v1, v1, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-get3(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 407
    :try_start_3
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v1, v1, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-get2(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 398
    :goto_0
    return-void

    .line 400
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 405
    :catchall_1
    move-exception v1

    .line 407
    :try_start_5
    iget-object v2, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->this$1:Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    iget-object v2, v2, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v2}, Lmiui/app/backup/BackupManager;->-get2(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 405
    :goto_1
    throw v1

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 409
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
