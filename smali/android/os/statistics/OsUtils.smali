.class public Landroid/os/statistics/OsUtils;
.super Ljava/lang/Object;
.source "OsUtils.java"


# static fields
.field public static final SCHED_GROUP_UNKNOWN:I = 0x7fffffff

.field private static sDoneFindIsRenderThreadMethod:Z

.field private static sIsRenderThreadMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/statistics/OsUtils;->sDoneFindIsRenderThreadMethod:Z

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeThreadSchedulePolicy(I)I
    .locals 1
    .param p0, "scheduler"    # I

    .prologue
    .line 18
    if-gez p0, :cond_0

    .end local p0    # "scheduler":I
    :goto_0
    return p0

    .restart local p0    # "scheduler":I
    :cond_0
    const v0, -0x40000001    # -1.9999999f

    and-int/2addr p0, v0

    goto :goto_0
.end method

.method public static native getCoarseUptimeMillisFast()J
.end method

.method public static native getDeltaToUptimeMillis()J
.end method

.method public static native getRunningTimeMs()J
.end method

.method public static getSchedGroup(I)I
    .locals 2
    .param p0, "pid"    # I

    .prologue
    .line 62
    :try_start_0
    invoke-static {p0}, Landroid/os/Process;->getProcessGroup(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/Exception;
    const v1, 0x7fffffff

    return v1
.end method

.method public static native getThreadSchedStat([J)V
.end method

.method public static getThreadSchedulePolicy(I)I
    .locals 2
    .param p0, "tid"    # I

    .prologue
    .line 23
    :try_start_0
    invoke-static {p0}, Landroid/os/statistics/OsUtils;->getThreadScheduler(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private static final native getThreadScheduler(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static isHighPriority(II)Z
    .locals 3
    .param p0, "policy"    # I
    .param p1, "priority"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    .line 36
    return v1

    .line 38
    :cond_0
    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-ne p0, v0, :cond_2

    .line 39
    :cond_1
    return v0

    .line 40
    :cond_2
    if-nez p0, :cond_4

    .line 41
    const/4 v2, -0x2

    if-gt p1, v2, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 43
    :cond_4
    return v1
.end method

.method public static isHighSchedGroup(I)Z
    .locals 2
    .param p0, "group"    # I

    .prologue
    const/4 v0, 0x1

    .line 69
    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 70
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    if-eq p0, v0, :cond_0

    .line 72
    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    .line 73
    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native isIsolatedProcess()Z
.end method

.method public static isLowPriority(II)Z
    .locals 3
    .param p0, "policy"    # I
    .param p1, "priority"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    .line 49
    return v1

    .line 51
    :cond_0
    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-ne p0, v0, :cond_2

    .line 52
    :cond_1
    return v1

    .line 53
    :cond_2
    if-nez p0, :cond_4

    .line 54
    const/16 v2, 0xa

    if-lt p1, v2, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 56
    :cond_4
    return v0
.end method

.method public static isRenderThread(I)Z
    .locals 8
    .param p0, "threadId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    sget-boolean v2, Landroid/os/statistics/OsUtils;->sDoneFindIsRenderThreadMethod:Z

    if-nez v2, :cond_0

    .line 80
    const-class v2, Landroid/view/ThreadedRenderer;

    const-string/jumbo v3, "isRenderThread"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->tryFindMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/os/statistics/OsUtils;->sIsRenderThreadMethod:Ljava/lang/reflect/Method;

    .line 81
    sput-boolean v7, Landroid/os/statistics/OsUtils;->sDoneFindIsRenderThreadMethod:Z

    .line 83
    :cond_0
    sget-object v2, Landroid/os/statistics/OsUtils;->sIsRenderThreadMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 85
    :try_start_0
    sget-object v2, Landroid/os/statistics/OsUtils;->sIsRenderThreadMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    return v6

    .line 86
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 87
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    return v6

    .line 94
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    return v6
.end method

.method public static native setThreadPriorityUnconditonally(II)V
.end method
