.class public Landroid/app/ActivityThreadInjector;
.super Ljava/lang/Object;
.source "ActivityThreadInjector.java"


# static fields
.field private static final AM_LIFECYCLE_SAMPLE_THRESHOLD:I

.field private static final LOG_AM_LIFECYCLE_SAMPLE:I = 0x7594

.field private static final mEnableLifecycleSample:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 36
    const-string/jumbo v1, "persist.sys.handler.threshold"

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/app/ActivityThreadInjector;->AM_LIFECYCLE_SAMPLE_THRESHOLD:I

    .line 37
    sget v1, Landroid/app/ActivityThreadInjector;->AM_LIFECYCLE_SAMPLE_THRESHOLD:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/app/ActivityThreadInjector;->mEnableLifecycleSample:Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bindApplicationInjector(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 150
    return-void
.end method

.method static checkHandleMessageTime(JI)V
    .locals 6
    .param p0, "startTime"    # J
    .param p2, "MsgWhat"    # I

    .prologue
    .line 142
    sget-boolean v2, Landroid/app/ActivityThreadInjector;->mEnableLifecycleSample:Z

    if-nez v2, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, v2, p0

    .line 145
    .local v0, "durationMs":J
    sget v2, Landroid/app/ActivityThreadInjector;->AM_LIFECYCLE_SAMPLE_THRESHOLD:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 146
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/16 v3, 0x7594

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 141
    :cond_1
    return-void
.end method

.method static checkHandleMessageTime(JLandroid/os/Message;)V
    .locals 2
    .param p0, "startTime"    # J
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 138
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/os/Message;->what:I

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/app/ActivityThreadInjector;->checkHandleMessageTime(JI)V

    .line 137
    return-void

    .line 138
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static clearCachedDrawables()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method static enableAppLogSwitch()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->enableLogSwitch(Z)V

    .line 60
    return-void
.end method

.method public static enableStrictMode()V
    .locals 5

    .prologue
    .line 40
    sget-boolean v3, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v3, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    const-string/jumbo v3, "persist.sys.strictmode.visual"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 44
    .local v0, "isPenaltyDeath":Z
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 47
    .local v1, "threadPolicy":Landroid/os/StrictMode$ThreadPolicy$Builder;
    new-instance v3, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 52
    .local v2, "vmPolicy":Landroid/os/StrictMode$VmPolicy$Builder;
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 54
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 56
    :cond_1
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 57
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 39
    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 168
    .local v0, "currentActivityThread":Landroid/app/ActivityThread;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    goto :goto_0
.end method

.method public static isPersistent(Landroid/app/ActivityThread$AppBindData;)Z
    .locals 2
    .param p0, "data"    # Landroid/app/ActivityThread$AppBindData;

    .prologue
    const/4 v0, 0x0

    .line 155
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSystemThread()Z
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 163
    .local v0, "currentActivityThread":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static preloadSubActivity(Landroid/app/ActivityThread;ILandroid/app/LoadedApk;)V
    .locals 0
    .param p0, "thiz"    # Landroid/app/ActivityThread;
    .param p1, "theme"    # I
    .param p2, "info"    # Landroid/app/LoadedApk;

    .prologue
    .line 74
    return-void
.end method

.method static raiseThreadPriority()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method static updatePackageInfoForLogSwitch(Landroid/app/ActivityThread$AppBindData;)V
    .locals 1
    .param p0, "data"    # Landroid/app/ActivityThread$AppBindData;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->updatePackageName(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->updateProgramName(Ljava/lang/String;)V

    .line 64
    return-void
.end method
