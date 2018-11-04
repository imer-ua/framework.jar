.class public Landroid/os/statistics/PerfSuperviser;
.super Ljava/lang/Object;
.source "PerfSuperviser.java"


# static fields
.field public static final DEBUGGING:Z = false

.field public static MY_PID:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MiuiPerfSuperviser"

.field private static volatile sInitialized:Z

.field private static volatile sStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z

    .line 14
    sput-boolean v0, Landroid/os/statistics/PerfSuperviser;->sStarted:Z

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized init(ZZ)V
    .locals 3
    .param p0, "isPrimaryZygote"    # Z
    .param p1, "hasSecondaryZygote"    # Z

    .prologue
    const/4 v2, 0x1

    const-class v1, Landroid/os/statistics/PerfSuperviser;

    monitor-enter v1

    .line 17
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPpid()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, v2, :cond_0

    monitor-exit v1

    .line 19
    return-void

    .line 21
    :cond_0
    :try_start_1
    sget-boolean v0, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z

    if-nez v0, :cond_1

    .line 22
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->init()V

    .line 23
    invoke-static {p0, p1}, Landroid/os/statistics/PerfSuperviser;->nativeInit(ZZ)V

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    .line 16
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native nativeInit(ZZ)V
.end method

.method private static native nativeStart(ZIIIII)V
.end method

.method public static native setThreadPerfSupervisionOn(Z)V
.end method

.method public static declared-synchronized start(Z)V
    .locals 7
    .param p0, "isSystemServer"    # Z

    .prologue
    const/4 v1, 0x1

    const-class v6, Landroid/os/statistics/PerfSuperviser;

    monitor-enter v6

    .line 29
    :try_start_0
    sget-boolean v0, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v6

    .line 30
    return-void

    .line 32
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPpid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, v1, :cond_1

    monitor-exit v6

    .line 34
    return-void

    .line 36
    :cond_1
    :try_start_2
    sget-boolean v0, Landroid/os/statistics/PerfSuperviser;->sStarted:Z

    if-nez v0, :cond_3

    .line 37
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    .line 38
    invoke-static {}, Landroid/os/statistics/OsUtils;->isIsolatedProcess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->notifySupervisionReady()V

    .line 40
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->getSupervisionLevel()I

    move-result v1

    .line 43
    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    .line 44
    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    .line 46
    sget v5, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    .line 45
    const/16 v4, 0xa

    move v0, p0

    .line 41
    invoke-static/range {v0 .. v5}, Landroid/os/statistics/PerfSuperviser;->nativeStart(ZIIIII)V

    .line 47
    invoke-static {}, Landroid/os/statistics/PerfEventReporter;->start()V

    .line 48
    if-nez p0, :cond_2

    .line 49
    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->start()V

    .line 53
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/statistics/PerfSuperviser;->sStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit v6

    .line 28
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method
