.class Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/RendererCoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckCacheRunnable"
.end annotation


# instance fields
.field private mKey:Ljava/lang/Object;

.field final synthetic this$0:Lmiui/maml/util/RendererCoreCache;


# direct methods
.method public constructor <init>(Lmiui/maml/util/RendererCoreCache;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/util/RendererCoreCache;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 32
    iput-object p1, p0, Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;->this$0:Lmiui/maml/util/RendererCoreCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;->mKey:Ljava/lang/Object;

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;->this$0:Lmiui/maml/util/RendererCoreCache;

    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;->mKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiui/maml/util/RendererCoreCache;->-wrap0(Lmiui/maml/util/RendererCoreCache;Ljava/lang/Object;)V

    .line 37
    return-void
.end method
