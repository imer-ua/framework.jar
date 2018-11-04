.class Lmiui/maml/RenderUpdater$1;
.super Ljava/lang/Object;
.source "RenderUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/RenderUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/RenderUpdater;


# direct methods
.method constructor <init>(Lmiui/maml/RenderUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/RenderUpdater;

    .prologue
    .line 41
    iput-object p1, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 44
    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmiui/maml/RenderUpdater;->-set0(Lmiui/maml/RenderUpdater;Z)Z

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 46
    .local v0, "currentTime":J
    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    iget-object v3, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    invoke-static {v3}, Lmiui/maml/RenderUpdater;->-get2(Lmiui/maml/RenderUpdater;)Lmiui/maml/ScreenElementRoot;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lmiui/maml/ScreenElementRoot;->updateIfNeeded(J)J

    move-result-wide v4

    iput-wide v4, v2, Lmiui/maml/RenderUpdater;->mNextUpdateInterval:J

    .line 47
    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    iput-wide v0, v2, Lmiui/maml/RenderUpdater;->mLastUpdateTime:J

    .line 48
    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    iget-boolean v2, v2, Lmiui/maml/RenderUpdater;->mPendingRender:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    invoke-static {v2}, Lmiui/maml/RenderUpdater;->-get1(Lmiui/maml/RenderUpdater;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    invoke-static {v2}, Lmiui/maml/RenderUpdater;->-get3(Lmiui/maml/RenderUpdater;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    iget-wide v2, v2, Lmiui/maml/RenderUpdater;->mNextUpdateInterval:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 49
    iget-object v2, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    invoke-static {v2}, Lmiui/maml/RenderUpdater;->-get0(Lmiui/maml/RenderUpdater;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    invoke-static {v3}, Lmiui/maml/RenderUpdater;->-get4(Lmiui/maml/RenderUpdater;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/RenderUpdater$1;->this$0:Lmiui/maml/RenderUpdater;

    iget-wide v4, v4, Lmiui/maml/RenderUpdater;->mNextUpdateInterval:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
