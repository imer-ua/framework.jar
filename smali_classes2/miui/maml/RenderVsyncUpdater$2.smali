.class Lmiui/maml/RenderVsyncUpdater$2;
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
    .line 80
    iput-object p1, p0, Lmiui/maml/RenderVsyncUpdater$2;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater$2;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lmiui/maml/RenderVsyncUpdater;->-wrap1(Lmiui/maml/RenderVsyncUpdater;)V

    .line 82
    return-void
.end method
