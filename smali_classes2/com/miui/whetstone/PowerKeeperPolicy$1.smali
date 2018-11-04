.class Lcom/miui/whetstone/PowerKeeperPolicy$1;
.super Landroid/location/ILocationPolicyListener$Stub;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/whetstone/PowerKeeperPolicy;

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Landroid/location/ILocationPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .locals 0
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1097
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1078
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v4}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get1(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1080
    if-eqz p2, :cond_0

    .line 1081
    if-ne p2, v2, :cond_1

    .line 1082
    :cond_0
    const/4 v1, 0x1

    .line 1086
    .local v1, "uidAllow":Z
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get6(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1087
    .local v0, "oldUidAllow":Z
    if-ne v0, v1, :cond_2

    monitor-exit v4

    return-void

    .line 1084
    .end local v0    # "oldUidAllow":Z
    .end local v1    # "uidAllow":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "uidAllow":Z
    goto :goto_0

    .line 1088
    .restart local v0    # "oldUidAllow":Z
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get6(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1090
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get3(Lcom/miui/whetstone/PowerKeeperPolicy;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_3

    monitor-exit v4

    .line 1091
    return-void

    .line 1093
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get4(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v1, :cond_4

    :goto_1
    const/16 v3, 0x3e8

    invoke-virtual {v5, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 1077
    return-void

    :cond_4
    move v2, v3

    .line 1093
    goto :goto_1

    .line 1078
    .end local v0    # "oldUidAllow":Z
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method
