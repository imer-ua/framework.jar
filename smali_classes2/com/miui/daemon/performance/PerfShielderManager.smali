.class public Lcom/miui/daemon/performance/PerfShielderManager;
.super Ljava/lang/Object;
.source "PerfShielderManager.java"


# static fields
.field public static final PerfShieldService:Ljava/lang/String; = "perfshielder"

.field private static volatile sPerfManager:Lcom/android/internal/app/IPerfShielder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkService()Z
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFreeMemory()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->checkService()Z

    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .local v2, "totoalMemory":J
    sget-object v1, Lcom/miui/daemon/performance/PerfShielderManager;->sPerfManager:Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_0

    .line 39
    :try_start_0
    sget-object v1, Lcom/miui/daemon/performance/PerfShielderManager;->sPerfManager:Lcom/android/internal/app/IPerfShielder;

    invoke-interface {v1}, Lcom/android/internal/app/IPerfShielder;->getFreeMemory()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 45
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v2

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getService()Lcom/android/internal/app/IPerfShielder;
    .locals 4

    .prologue
    .line 17
    sget-object v1, Lcom/miui/daemon/performance/PerfShielderManager;->sPerfManager:Lcom/android/internal/app/IPerfShielder;

    if-nez v1, :cond_1

    .line 18
    const-class v2, Lcom/miui/daemon/performance/PerfShielderManager;

    monitor-enter v2

    .line 19
    :try_start_0
    sget-object v1, Lcom/miui/daemon/performance/PerfShielderManager;->sPerfManager:Lcom/android/internal/app/IPerfShielder;

    if-nez v1, :cond_0

    .line 20
    const-string/jumbo v1, "perfshielder"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IPerfShielder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPerfShielder;

    move-result-object v0

    .line 21
    .local v0, "perfShielder":Lcom/android/internal/app/IPerfShielder;
    const-class v1, Lcom/miui/daemon/performance/PerfShielderManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    sput-object v0, Lcom/miui/daemon/performance/PerfShielderManager;->sPerfManager:Lcom/android/internal/app/IPerfShielder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit v2

    .line 27
    :cond_1
    sget-object v1, Lcom/miui/daemon/performance/PerfShielderManager;->sPerfManager:Lcom/android/internal/app/IPerfShielder;

    return-object v1

    .line 21
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v1

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method
