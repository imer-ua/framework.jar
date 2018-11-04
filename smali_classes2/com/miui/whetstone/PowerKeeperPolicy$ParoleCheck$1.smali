.class Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->-get0(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1279
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-static {v0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->-wrap0(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1278
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
