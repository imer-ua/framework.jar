.class Lmiui/log/LogSwitchesConfigMonitor$2;
.super Ljava/lang/Object;
.source "LogSwitchesConfigMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/log/LogSwitchesConfigMonitor;->startMonitoring(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/log/LogSwitchesConfigMonitor;


# direct methods
.method constructor <init>(Lmiui/log/LogSwitchesConfigMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/log/LogSwitchesConfigMonitor;

    .prologue
    .line 77
    iput-object p1, p0, Lmiui/log/LogSwitchesConfigMonitor$2;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 80
    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor$2;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor$2;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    iget-object v2, p0, Lmiui/log/LogSwitchesConfigMonitor$2;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-static {v2}, Lmiui/log/LogSwitchesConfigMonitor;->-get0(Lmiui/log/LogSwitchesConfigMonitor;)Lmiui/log/LogSwitchesConfigApplier;

    move-result-object v2

    iget-object v3, p0, Lmiui/log/LogSwitchesConfigMonitor$2;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-static {v3}, Lmiui/log/LogSwitchesConfigMonitor;->-get2(Lmiui/log/LogSwitchesConfigMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/log/LogSwitchesConfigApplier;->apply(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/log/LogSwitchesConfigMonitor;->-set0(Lmiui/log/LogSwitchesConfigMonitor;Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
