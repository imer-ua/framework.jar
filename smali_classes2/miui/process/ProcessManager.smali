.class public Lmiui/process/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# static fields
.field public static final AI_MAX_ADJ:I

.field public static final AI_MAX_PROCESS_STATE:I = 0x9

.field public static final DEBUG:Z = true

.field public static final DEFAULT_MAX_ADJ:I

.field public static final DEFAULT_PROCESS_STATE:I = 0x10

.field public static final FLAG_START_PROCESS_AI:I = 0x1

.field public static final LOCKED_MAX_ADJ:I

.field public static final LOCKED_MAX_PROCESS_STATE:I = 0x9

.field public static final MAX_ADJ_BOOST_TIMEOUT:J = 0x493e0L

.field public static final MIUI_AI_MODE_STACK_ID:I = 0x7

.field public static final PROTECT_MAX_ADJ:I

.field public static final PROTECT_MAX_PROCESS_STATE:I = 0x9

.field public static final SERVICE_NAME:Ljava/lang/String; = "ProcessManager"

.field private static final SINGLE_COUNT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ProcessManager"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v1, 0x190

    const/4 v2, 0x4

    const/16 v3, 0x17

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput v0, Lmiui/process/ProcessManager;->AI_MAX_ADJ:I

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_2

    :goto_2
    sput v1, Lmiui/process/ProcessManager;->PROTECT_MAX_ADJ:I

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_3

    const/16 v0, 0x3e9

    :goto_3
    sput v0, Lmiui/process/ProcessManager;->DEFAULT_MAX_ADJ:I

    .line 20
    return-void

    :cond_0
    move v0, v2

    .line 34
    goto :goto_0

    :cond_1
    move v0, v2

    .line 40
    goto :goto_1

    :cond_2
    move v1, v2

    .line 47
    goto :goto_2

    .line 53
    :cond_3
    const/16 v0, 0x10

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;)V
    .locals 3
    .param p0, "applicationThread"    # Lmiui/process/IMiuiApplicationThread;

    .prologue
    .line 243
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    .line 244
    .local v1, "pm":Lmiui/process/IProcessManager;
    if-eqz v1, :cond_0

    .line 245
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v1, p0, v2}, Lmiui/process/IProcessManager;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v1    # "pm":Lmiui/process/IProcessManager;
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static adjBoost(Ljava/lang/String;IJI)V
    .locals 8
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "targetAdj"    # I
    .param p2, "timeout"    # J
    .param p4, "userId"    # I

    .prologue
    .line 197
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lmiui/process/IProcessManager;->adjBoost(Ljava/lang/String;IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static boostCameraIfNeed()V
    .locals 2

    .prologue
    .line 330
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1}, Lmiui/process/IProcessManager;->boostCameraIfNeeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 331
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 332
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;
    .locals 3

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 255
    .local v0, "applicationThread":Lmiui/process/IMiuiApplicationThread;
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v2

    .line 256
    .local v2, "pm":Lmiui/process/IProcessManager;
    if-eqz v2, :cond_0

    .line 257
    invoke-interface {v2}, Lmiui/process/IProcessManager;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 262
    .end local v0    # "applicationThread":Lmiui/process/IMiuiApplicationThread;
    .end local v2    # "pm":Lmiui/process/IProcessManager;
    :cond_0
    :goto_0
    return-object v0

    .line 259
    .restart local v0    # "applicationThread":Lmiui/process/IMiuiApplicationThread;
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getForegroundInfo()Lmiui/process/ForegroundInfo;
    .locals 3

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, "foregroundInfo":Lmiui/process/ForegroundInfo;
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v2

    invoke-interface {v2}, Lmiui/process/IProcessManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 238
    .end local v1    # "foregroundInfo":Lmiui/process/ForegroundInfo;
    :goto_0
    return-object v1

    .line 235
    .restart local v1    # "foregroundInfo":Lmiui/process/ForegroundInfo;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLockedApplication(I)Ljava/util/List;
    .locals 2
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->getLockedApplication(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lmiui/process/IProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningProcessInfoByPackageName(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 299
    const/4 v0, 0x0

    invoke-static {v1, v1, p0, v0, v1}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningProcessInfoByPid(I)Lmiui/process/RunningProcessInfo;
    .locals 3
    .param p0, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 285
    invoke-static {p0, v1, v2, v2, v1}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 286
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/RunningProcessInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    :cond_0
    return-object v2

    .line 287
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/process/RunningProcessInfo;

    return-object v1
.end method

.method public static getRunningProcessInfoByProcessName(Ljava/lang/String;)Lmiui/process/RunningProcessInfo;
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 304
    invoke-static {v1, v1, v2, p0, v1}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 305
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/RunningProcessInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    :cond_0
    return-object v2

    .line 306
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/process/RunningProcessInfo;

    return-object v1
.end method

.method public static getRunningProcessInfoByUid(I)Ljava/util/List;
    .locals 2
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 294
    invoke-static {v0, p0, v1, v1, v0}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isLockedApplication(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 95
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lmiui/process/IProcessManager;->isLockedApplication(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    const/4 v1, 0x0

    return v1
.end method

.method public static kill(Lmiui/process/ProcessConfig;)Z
    .locals 3
    .param p0, "config"    # Lmiui/process/ProcessConfig;

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "success":Z
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lmiui/process/IProcessManager;->kill(Lmiui/process/ProcessConfig;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    .end local v1    # "success":Z
    :goto_0
    return v1

    .line 68
    .restart local v1    # "success":Z
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static protectCurrentProcess(Z)Z
    .locals 4
    .param p0, "isProtected"    # Z

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, "success":Z
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Lmiui/process/IProcessManager;->protectCurrentProcess(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 182
    .end local v1    # "success":Z
    :goto_0
    return v1

    .line 179
    .restart local v1    # "success":Z
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static protectCurrentProcess(ZI)Z
    .locals 3
    .param p0, "isProtected"    # Z
    .param p1, "timeout"    # I

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, "success":Z
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lmiui/process/IProcessManager;->protectCurrentProcess(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 192
    .end local v1    # "success":Z
    :goto_0
    return v1

    .line 189
    .restart local v1    # "success":Z
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    .locals 2
    .param p2, "listener"    # Lmiui/process/IActivityChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/process/IActivityChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "targetActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lmiui/process/IProcessManager;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .locals 2
    .param p0, "listener"    # Lmiui/process/IForegroundInfoListener;

    .prologue
    .line 217
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static startPreloadProcesses(Ljava/util/List;IZII)I
    .locals 8
    .param p1, "startProcessCount"    # I
    .param p2, "ignoreMemory"    # Z
    .param p3, "userId"    # I
    .param p4, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/process/PreloadProcessData;",
            ">;IZII)I"
        }
    .end annotation

    .prologue
    .local p0, "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    const/4 v2, 0x0

    .line 157
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    const-string/jumbo v0, "ProcessManager"

    const-string/jumbo v1, "dataList cannot be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v2

    .line 161
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_2

    if-gtz p1, :cond_3

    .line 162
    :cond_2
    const-string/jumbo v0, "ProcessManager"

    const-string/jumbo v1, "illegal start number!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v2

    .line 165
    :cond_3
    const/4 v7, 0x0

    .line 167
    .local v7, "result":I
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lmiui/process/IProcessManager;->startProcesses(Ljava/util/List;IZII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 172
    :goto_0
    return v7

    .line 169
    :catch_0
    move-exception v6

    .line 170
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static startProcess(Ljava/lang/String;ZII)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "ignoreMemory"    # Z
    .param p2, "userId"    # I
    .param p3, "flag"    # I

    .prologue
    .line 116
    new-instance v0, Lmiui/process/PreloadProcessData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lmiui/process/PreloadProcessData;-><init>(Ljava/lang/String;ZLandroid/content/Intent;)V

    .line 117
    .local v0, "data":Lmiui/process/PreloadProcessData;
    invoke-static {v0, p1, p2, p3}, Lmiui/process/ProcessManager;->startProcess(Lmiui/process/PreloadProcessData;ZII)Z

    move-result v1

    return v1
.end method

.method public static startProcess(Lmiui/process/PreloadProcessData;II)Z
    .locals 1
    .param p0, "data"    # Lmiui/process/PreloadProcessData;
    .param p1, "userId"    # I
    .param p2, "flag"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lmiui/process/ProcessManager;->startProcess(Lmiui/process/PreloadProcessData;ZII)Z

    move-result v0

    return v0
.end method

.method public static startProcess(Lmiui/process/PreloadProcessData;ZII)Z
    .locals 5
    .param p0, "data"    # Lmiui/process/PreloadProcessData;
    .param p1, "ignoreMemory"    # Z
    .param p2, "userId"    # I
    .param p3, "flag"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 122
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    :cond_0
    const-string/jumbo v2, "ProcessManager"

    const-string/jumbo v4, "preload data and packageName cannot be null!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return v3

    .line 126
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static {v0, v2, p1, p2, p3}, Lmiui/process/ProcessManager;->startPreloadProcesses(Ljava/util/List;IZII)I

    move-result v1

    .line 129
    .local v1, "startCount":I
    if-ne v1, v2, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public static startProcesses(Ljava/util/List;IZII)I
    .locals 7
    .param p1, "startProcessCount"    # I
    .param p2, "ignoreMemory"    # Z
    .param p3, "userId"    # I
    .param p4, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZII)I"
        }
    .end annotation

    .prologue
    .local p0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 134
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "packageName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    new-instance v0, Lmiui/process/PreloadProcessData;

    invoke-direct {v0, v2, v5, v6}, Lmiui/process/PreloadProcessData;-><init>(Ljava/lang/String;ZLandroid/content/Intent;)V

    .line 139
    .local v0, "data":Lmiui/process/PreloadProcessData;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v0    # "data":Lmiui/process/PreloadProcessData;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-static {v1, p1, p2, p3, p4}, Lmiui/process/ProcessManager;->startPreloadProcesses(Ljava/util/List;IZII)I

    move-result v4

    return v4

    .line 144
    .end local v1    # "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    .end local v3    # "packageName$iterator":Ljava/util/Iterator;
    :cond_2
    return v5
.end method

.method public static unregisterActivityChanageListener(Lmiui/process/IActivityChangeListener;)V
    .locals 2
    .param p0, "listener"    # Lmiui/process/IActivityChangeListener;

    .prologue
    .line 277
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .locals 2
    .param p0, "listener"    # Lmiui/process/IForegroundInfoListener;

    .prologue
    .line 225
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateApplicationLockedState(Ljava/lang/String;IZ)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "isLocked"    # Z

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lmiui/process/IProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateCloudData(Lmiui/process/ProcessCloudData;)V
    .locals 3
    .param p0, "cloudData"    # Lmiui/process/ProcessCloudData;

    .prologue
    .line 205
    if-eqz p0, :cond_0

    .line 206
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->updateCloudData(Lmiui/process/ProcessCloudData;)V

    .line 203
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string/jumbo v1, "ProcessManager"

    const-string/jumbo v2, "cloudData is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateConfig(Lmiui/process/ProcessConfig;)V
    .locals 2
    .param p0, "config"    # Lmiui/process/ProcessConfig;

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->updateConfig(Lmiui/process/ProcessConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
