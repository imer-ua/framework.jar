.class Landroid/content/BroadcastReceiver$PendingResult$2;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/BroadcastReceiver$PendingResult;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$mgr:Landroid/app/IActivityManager;

.field final synthetic val$sendFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;Ljava/lang/Runnable;Landroid/app/IActivityManager;)V
    .locals 0
    .param p1, "this$1"    # Landroid/content/BroadcastReceiver$PendingResult;
    .param p2, "val$sendFinishRunnable"    # Ljava/lang/Runnable;
    .param p3, "val$mgr"    # Landroid/app/IActivityManager;

    .prologue
    .line 239
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$1:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->val$sendFinishRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->val$mgr:Landroid/app/IActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 241
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ActivityThread"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finishing broadcast after work to component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$1:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v2, v2, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$1:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mH:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$1:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mH:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->val$sendFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    :cond_1
    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$1:Landroid/content/BroadcastReceiver$PendingResult;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$1:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mHaveSendFinish:Z

    if-nez v0, :cond_2

    .line 250
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$1:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/content/BroadcastReceiver$PendingResult;->mHaveSendFinish:Z

    .line 251
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$1:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v2, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->val$mgr:Landroid/app/IActivityManager;

    invoke-virtual {v0, v2}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 240
    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
