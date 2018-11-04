.class Landroid/content/BroadcastReceiver$PendingResult$1;
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

.field final synthetic val$originWorkCount:I


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;ILandroid/app/IActivityManager;)V
    .locals 0
    .param p1, "this$1"    # Landroid/content/BroadcastReceiver$PendingResult;
    .param p2, "val$originWorkCount"    # I
    .param p3, "val$mgr"    # Landroid/app/IActivityManager;

    .prologue
    .line 220
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$1:Landroid/content/BroadcastReceiver$PendingResult;

    iput p2, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->val$originWorkCount:I

    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->val$mgr:Landroid/app/IActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 223
    const-string/jumbo v0, "ActivityThread"

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "broadcast wait to finish, remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    invoke-static {}, Landroid/app/QueuedWork;->getPendingWorkCount()I

    move-result v2

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    const-string/jumbo v2, "/"

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    iget v2, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->val$originWorkCount:I

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 226
    const-string/jumbo v2, ", took too long "

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 226
    const/16 v2, 0x1388

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 226
    const-string/jumbo v2, "ms"

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$1:Landroid/content/BroadcastReceiver$PendingResult;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$1:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mHaveSendFinish:Z

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$1:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/content/BroadcastReceiver$PendingResult;->mHaveSendFinish:Z

    .line 230
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$1:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v2, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->val$mgr:Landroid/app/IActivityManager;

    invoke-virtual {v0, v2}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 222
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
