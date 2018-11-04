.class Lmiui/maml/RenderVsyncUpdater$1;
.super Ljava/lang/Object;
.source "RenderVsyncUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/RenderVsyncUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/RenderVsyncUpdater;


# direct methods
.method constructor <init>(Lmiui/maml/RenderVsyncUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/RenderVsyncUpdater;

    .prologue
    .line 60
    iput-object p1, p0, Lmiui/maml/RenderVsyncUpdater$1;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater$1;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lmiui/maml/RenderVsyncUpdater;->-wrap0(Lmiui/maml/RenderVsyncUpdater;)V

    .line 64
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater$1;->this$0:Lmiui/maml/RenderVsyncUpdater;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/maml/RenderVsyncUpdater;->-set0(Lmiui/maml/RenderVsyncUpdater;Z)Z

    .line 62
    return-void
.end method
