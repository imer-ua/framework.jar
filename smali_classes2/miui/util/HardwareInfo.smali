.class public Lmiui/util/HardwareInfo;
.super Ljava/lang/Object;
.source "HardwareInfo.java"


# static fields
.field private static DEBUG_MEMORY_PERFORMANCE:Z = false

.field private static DEBUG_MEMORY_PERFORMANCE_MASK:I = 0x0

.field private static final GB:J = 0x40000000L

.field private static final MB:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "HardwareInfo"

.field private static sDevice2Memory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sDevice2MemoryAdjust:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sTotalMemory:J

.field private static sTotalPhysicalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide v8, 0x80000000L

    const-wide/32 v6, -0x20000000

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/32 v4, 0x40000000

    .line 21
    const-wide/16 v2, 0x0

    sput-wide v2, Lmiui/util/HardwareInfo;->sTotalMemory:J

    .line 26
    sput v0, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE_MASK:I

    .line 27
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    const-string/jumbo v2, "persist.sys.mem_perf_debug"

    invoke-static {v2, v1}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget v3, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE_MASK:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 27
    :cond_0
    :goto_0
    sput-boolean v0, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE:Z

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    .line 31
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "hwu9200"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "hwu9500"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "maguro"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "ville"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "LT26i"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "ventana"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "stuttgart"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "t03g"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "pisces"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "HM2014501"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "leo"

    const-wide v2, 0x100000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "HM2014011"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "HM2013022"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "HM2013023"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    .line 51
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    const-string/jumbo v1, "lcsh92_wet_xm_td"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    const-string/jumbo v1, "lcsh92_wet_xm_kk"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void

    :cond_1
    move v0, v1

    .line 28
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAndroidCacheMemory()J
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 102
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->getAndroidCachedEmptyProcessMemory()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 103
    .local v0, "cacheMemory":J
    sget-boolean v4, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE:Z

    if-eqz v4, :cond_0

    .line 104
    const-string/jumbo v4, "HardwareInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get CacheMemory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "KB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .end local v0    # "cacheMemory":J
    :goto_0
    return-wide v0

    .restart local v0    # "cacheMemory":J
    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public static getFreeMemory()J
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getFreeMemory()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLowMemoryLimitation()J
    .locals 6

    .prologue
    .line 89
    :try_start_0
    const-string/jumbo v3, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-static {v3}, Lmiui/os/FileUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 91
    .local v2, "value":I
    mul-int/lit8 v3, v2, 0x4

    mul-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    return-wide v4

    .line 92
    .end local v2    # "value":I
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public static getTotalMemory()J
    .locals 4

    .prologue
    .line 57
    sget-wide v0, Lmiui/util/HardwareInfo;->sTotalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    sput-wide v0, Lmiui/util/HardwareInfo;->sTotalMemory:J

    .line 60
    :cond_0
    sget-wide v0, Lmiui/util/HardwareInfo;->sTotalMemory:J

    return-wide v0
.end method

.method public static getTotalPhysicalMemory()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 65
    sget-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    .line 78
    :cond_0
    :goto_0
    sget-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    return-wide v0

    .line 71
    :cond_1
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalMemory()J

    move-result-wide v0

    div-long/2addr v0, v4

    const-wide/32 v2, 0x19000

    add-long/2addr v0, v2

    const-wide/32 v2, 0x80000

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x200

    mul-long/2addr v0, v2

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    sput-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    .line 73
    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-wide v2, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    sput-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    goto :goto_0
.end method
