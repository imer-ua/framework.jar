.class public Lmiui/mqsas/oom/OOMEventManager;
.super Ljava/lang/Object;
.source "OOMEventManager.java"


# static fields
.field public static final FILE_DIR_DATA_APP:Ljava/lang/String; = "/data/data/"

.field public static final FILE_DIR_DATA_MQSAS_HPROF:Ljava/lang/String; = "/data/mqsas/hprof/"

.field public static final FILE_HPROF_SUFFIX:Ljava/lang/String; = ".hprof"

.field public static final JAVA_EXCEPTION_OOM_CLASS:Ljava/lang/String; = "java.lang.OutOfMemoryError"

.field public static final OOM_EVENT_OTHER_APP_OOM_DEBUG:I = 0x3

.field public static final OOM_EVENT_SYSTEM_PROC_DEBUG:I = 0x2

.field public static final OOM_EVENT_SYSTEM_PROC_MARTCHED:I = 0x1

.field public static final OOM_EVENT_TOO_NOISY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OOMEventManagerFK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEventAndDumpheap(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/String;)I
    .locals 5
    .param p0, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->checkIfNeedDumpheap(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v1

    .line 35
    .local v1, "shouldDumpHeap":I
    const-string/jumbo v2, "OOMEventManagerFK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkEventAndDumpheap shouldDumpHeap : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string/jumbo v0, ""

    .line 37
    .local v0, "outPutFileName":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".hprof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lmiui/mqsas/oom/OOMEventManager;->doDumpheap(Ljava/lang/String;)V

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/data/mqsas/hprof/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".hprof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lmiui/mqsas/oom/OOMEventManager;->doDumpheap(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/data/mqsas/hprof/debug/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".hprof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lmiui/mqsas/oom/OOMEventManager;->doDumpheap(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static doDumpheap(Ljava/lang/String;)V
    .locals 4
    .param p0, "outPutFileName"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 52
    :cond_0
    const-string/jumbo v1, "OOMEventManagerFK"

    const-string/jumbo v2, "dumpheap failed, outPutFileName is invalid!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 56
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v1, "OOMEventManagerFK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dumpheap success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isInterestedOOMEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z
    .locals 2
    .param p0, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .prologue
    .line 27
    const-string/jumbo v0, "java.lang.OutOfMemoryError"

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x1

    return v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
