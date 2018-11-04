.class public Lmiui/mqsas/fdmonitor/FdInfoManager;
.super Ljava/lang/Object;
.source "FdInfoManager.java"


# static fields
.field private static INTERESTED_CLASS:[Ljava/lang/String;

.field private static INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    const-string/jumbo v0, "FdInfoManager"

    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    .line 19
    new-array v0, v3, [Ljava/lang/String;

    .line 20
    const-string/jumbo v1, "java.lang.OutOfMemoryError"

    aput-object v1, v0, v2

    .line 19
    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_CLASS:[Ljava/lang/String;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 23
    const-string/jumbo v1, "Could not allocate JNI Env"

    aput-object v1, v0, v2

    .line 24
    const-string/jumbo v1, "Could not allocate dup blob fd"

    aput-object v1, v0, v3

    .line 25
    const-string/jumbo v1, "Could not read input channel file descriptors from parcel"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 26
    const-string/jumbo v1, "pthread_create"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 27
    const-string/jumbo v1, "InputChannel is not initialized"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 28
    const-string/jumbo v1, "Could not open input channel pair"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 22
    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEventAndDumpFd(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/String;I)V
    .locals 4
    .param p0, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 65
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->checkIfNeedDumpFd(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v0

    .line 66
    .local v0, "shouldDumpFd":I
    sget-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUI_FD in checkEventAndDumpFd shouldDumpFd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    invoke-static {p1, p2}, Lmiui/mqsas/fdmonitor/FdInfoManager;->dumpFdInfo(Ljava/lang/String;I)V

    .line 64
    :cond_0
    return-void
.end method

.method public static dumpFdInfo(Ljava/lang/String;I)V
    .locals 5
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "pid"    # I

    .prologue
    .line 74
    :try_start_0
    sget-object v2, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MIUI_FD ------ fd info Begin : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p1}, Lmiui/mqsas/fdmonitor/FdInfoManager;->getOpenFds(I)V

    .line 76
    sget-object v2, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MIUI_FD ------ fd info End : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getOpenFds(I)V
    .locals 10
    .param p0, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 85
    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "/proc/self/fd"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 86
    .local v3, "fds":[Ljava/io/File;
    sget-object v7, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MIUI_FD pid : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " fds.size: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_1

    array-length v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz v3, :cond_0

    array-length v5, v3

    if-nez v5, :cond_2

    .line 88
    :cond_0
    sget-object v5, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "failed to read fds!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 86
    :cond_1
    const-string/jumbo v5, "null"

    goto :goto_0

    .line 91
    :cond_2
    array-length v7, v3

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v1, v3, v5

    .line 93
    .local v1, "fd":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "fd_path":Ljava/lang/String;
    invoke-static {v2}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "linkPath":Ljava/lang/String;
    sget-object v6, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MIUI_FD "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " -----> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v2    # "fd_path":Ljava/lang/String;
    .end local v4    # "linkPath":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/system/ErrnoException;
    iget v6, v0, Landroid/system/ErrnoException;->errno:I

    sget v8, Landroid/system/OsConstants;->ENOENT:I

    if-eq v6, v8, :cond_3

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 84
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v1    # "fd":Ljava/io/File;
    :cond_4
    return-void
.end method

.method public static isInterestedFdLeakEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/Throwable;)Z
    .locals 11
    .param p0, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionClassName()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "eventExceptionClass":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "eventExceptionMsg":Ljava/lang/String;
    :goto_0
    sget-object v7, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_CLASS:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_3

    aget-object v3, v7, v5

    .line 47
    .local v3, "exceptionClass":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 48
    sget-object v5, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIUI_FD Interested Fd leak events, exceptionClass : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v10

    .line 37
    .end local v1    # "eventExceptionClass":Ljava/lang/String;
    .end local v2    # "eventExceptionMsg":Ljava/lang/String;
    .end local v3    # "exceptionClass":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 38
    new-instance v0, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .local v0, "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    iget-object v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 40
    .restart local v1    # "eventExceptionClass":Ljava/lang/String;
    iget-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .restart local v2    # "eventExceptionMsg":Ljava/lang/String;
    goto :goto_0

    .line 42
    .end local v0    # "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v1    # "eventExceptionClass":Ljava/lang/String;
    .end local v2    # "eventExceptionMsg":Ljava/lang/String;
    :cond_1
    sget-object v5, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "MIUI_FD Interested Fd leak events, wrong params"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return v6

    .line 46
    .restart local v1    # "eventExceptionClass":Ljava/lang/String;
    .restart local v2    # "eventExceptionMsg":Ljava/lang/String;
    .restart local v3    # "exceptionClass":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 53
    .end local v3    # "exceptionClass":Ljava/lang/String;
    :cond_3
    sget-object v7, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_2
    if-ge v5, v8, :cond_5

    aget-object v4, v7, v5

    .line 54
    .local v4, "exceptionMsg":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 55
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 56
    sget-object v5, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIUI_FD Interested Fd leak events, exceptionMsg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return v10

    .line 53
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 61
    .end local v4    # "exceptionMsg":Ljava/lang/String;
    :cond_5
    return v6
.end method
