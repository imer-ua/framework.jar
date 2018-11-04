.class Landroid/media/AudioStatusHandler$1;
.super Landroid/os/Handler;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method constructor <init>(Landroid/media/AudioStatusHandler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioStatusHandler;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 45
    iput-object p1, p0, Landroid/media/AudioStatusHandler$1;->this$0:Landroid/media/AudioStatusHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    iget-object v3, p0, Landroid/media/AudioStatusHandler$1;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v3}, Landroid/media/AudioStatusHandler;->-get2(Landroid/media/AudioStatusHandler;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "type$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioStatusHandler$Type;

    .line 49
    .local v1, "type":Landroid/media/AudioStatusHandler$Type;
    iget-object v3, p0, Landroid/media/AudioStatusHandler$1;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v3}, Landroid/media/AudioStatusHandler;->-get3(Landroid/media/AudioStatusHandler;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioStatusHandler$AudioState;

    .line 50
    .local v0, "audioState":Landroid/media/AudioStatusHandler$AudioState;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Landroid/media/AudioStatusHandler$AudioState;->onMessageReceived(Landroid/os/Message;)Z

    goto :goto_0

    .line 47
    .end local v0    # "audioState":Landroid/media/AudioStatusHandler$AudioState;
    .end local v1    # "type":Landroid/media/AudioStatusHandler$Type;
    :cond_1
    return-void
.end method
