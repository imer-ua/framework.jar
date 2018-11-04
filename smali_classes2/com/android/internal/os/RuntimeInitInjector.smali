.class public Lcom/android/internal/os/RuntimeInitInjector;
.super Ljava/lang/Object;
.source "RuntimeInitInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 6

    .prologue
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    .local v2, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "Dalvik/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string/jumbo v4, "java.vm.version"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v4, " (Linux; U; Android "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 29
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .end local v3    # "version":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo v4, "REL"

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 34
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 35
    const-string/jumbo v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .end local v1    # "model":Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 40
    .local v0, "inc_ver":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 41
    const-string/jumbo v4, " MIUI/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_1
    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 29
    .end local v0    # "inc_ver":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "1.0"

    goto :goto_0
.end method

.method public static onJE(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pknName"    # Ljava/lang/String;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/Throwable;
    .param p5, "prefix"    # Ljava/lang/String;
    .param p6, "isSystem"    # Z

    .prologue
    .line 50
    new-instance v0, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v0, p4}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 52
    .local v0, "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    new-instance v1, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    invoke-direct {v1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;-><init>()V

    .line 53
    .local v1, "event":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    invoke-virtual {v1, p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->setPid(I)V

    .line 54
    invoke-virtual {v1, p1}, Lmiui/mqsas/sdk/event/ExceptionEvent;->setProcessName(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, p2}, Lmiui/mqsas/sdk/event/ExceptionEvent;->setPackageName(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lmiui/mqsas/sdk/event/ExceptionEvent;->setTimeStamp(J)V

    .line 57
    invoke-virtual {v1, p3}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setThreadName(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, p5}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setPrefix(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, p6}, Lmiui/mqsas/sdk/event/ExceptionEvent;->setSystem(Z)V

    .line 60
    iget-object v3, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setStackTrace(Ljava/lang/String;)V

    .line 61
    iget-object v3, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setExceptionClassName(Ljava/lang/String;)V

    .line 62
    iget-object v3, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setExceptionMessage(Ljava/lang/String;)V

    .line 64
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lmiui/mqsas/fdmonitor/FdInfoManager;->isInterestedFdLeakEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    invoke-static {v1, p1, p0}, Lmiui/mqsas/fdmonitor/FdInfoManager;->checkEventAndDumpFd(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/String;I)V

    .line 68
    :cond_0
    invoke-static {v1}, Lmiui/mqsas/oom/OOMEventManager;->isInterestedOOMEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-static {v1, p2}, Lmiui/mqsas/oom/OOMEventManager;->checkEventAndDumpheap(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/String;)I

    move-result v2

    .line 70
    .local v2, "result":I
    const-string/jumbo v3, "RuntimeInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkEventAndDumpheap result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 72
    sget v3, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CATEGROY_JE_OOM_NEED_DUMPHEAP:I

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setJeCategroy(I)V

    .line 79
    .end local v2    # "result":I
    :cond_1
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V

    .line 49
    return-void

    .line 73
    .restart local v2    # "result":I
    :cond_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 74
    const-string/jumbo v3, "RuntimeInjector"

    const-string/jumbo v4, "oom too noisy return, no need onJE."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method
