.class public Landroid/os/LooperMonitor;
.super Ljava/lang/Object;
.source "LooperMonitor.java"

# interfaces
.implements Landroid/os/ILooperMonitorable;


# instance fields
.field private mEnableMonitor:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableMonitor(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Landroid/os/LooperMonitor;->mEnableMonitor:Z

    .line 19
    if-eqz p1, :cond_0

    .line 21
    :try_start_0
    const-string/jumbo v2, "getQueue"

    const-class v3, Landroid/os/MessageQueue;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3, v4}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/MessageQueue;

    .line 22
    .local v1, "queue":Landroid/os/MessageQueue;
    if-eqz v1, :cond_0

    .line 23
    const-string/jumbo v2, "enableMonitor"

    const-class v3, Ljava/lang/Void;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .end local v1    # "queue":Landroid/os/MessageQueue;
    :cond_0
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isMonitorLooper()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Landroid/os/LooperMonitor;->mEnableMonitor:Z

    return v0
.end method
