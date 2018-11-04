.class Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

.field final mUid:I

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/whetstone/PowerKeeperPolicy;
    .param p2, "bleScanWrapper"    # Landroid/bluetooth/BleScanWrapper;
    .param p3, "uid"    # I

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1226
    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    .line 1227
    iput p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mUid:I

    .line 1225
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    .line 1232
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Binder is dead - unregistering client ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get1(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1234
    const/4 v2, 0x0

    .line 1235
    .local v2, "leScanAllowedBefore":Z
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get2(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .line 1236
    .local v0, "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    if-eqz v0, :cond_1

    .line 1237
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v2

    .line 1238
    .local v2, "leScanAllowedBefore":Z
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->unlinkToDeath()V

    .line 1239
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->clearResource()V

    .line 1240
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get2(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    .end local v2    # "leScanAllowedBefore":Z
    :cond_1
    const/4 v1, 0x0

    .line 1243
    .local v1, "leScanAllowedAfter":Z
    if-eqz v2, :cond_2

    if-eqz v1, :cond_4

    .line 1246
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-wrap0(Lcom/miui/whetstone/PowerKeeperPolicy;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get5(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    :goto_1
    monitor-exit v4

    .line 1231
    return-void

    .line 1243
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get5(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1244
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    iget v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->mUid:I

    invoke-static {v3, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->-wrap4(Lcom/miui/whetstone/PowerKeeperPolicy;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1233
    .end local v0    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    .end local v1    # "leScanAllowedAfter":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1247
    .restart local v0    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    .restart local v1    # "leScanAllowedAfter":Z
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get5(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
