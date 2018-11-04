.class public Landroid/os/statistics/PerfSupervisionSettings;
.super Ljava/lang/Object;
.source "PerfSupervisionSettings.java"


# static fields
.field private static final DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

.field private static final DEFAULT_DIVISION_RATIO:I

.field private static final DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

.field private static final DEFAULT_HARD_THRESHOLD_MS:I

.field private static final DEFAULT_LEVEL:I

.field private static final DEFAULT_SOFT_THRESHOLD_MS:I

.field public static final MIN_HARD_THRESHOLD_MS:I = 0x1f4

.field public static final MIN_SOFT_THRESHOLD_MS:I = 0xa

.field public static final PERF_SUPERVISION_OFF:I = 0x0

.field public static final PERF_SUPERVISION_ON_HEAVY:I = 0x2

.field public static final PERF_SUPERVISION_ON_NORMAL:I = 0x1

.field public static final PERF_SUPERVISION_ON_TEST:I = 0x9

.field private static final TAG:Ljava/lang/String;

.field public static final sGlobalPerfEventQueueLength:I

.field public static final sIsAutoAnalysisOn:Z

.field public static final sPerfSupervisionDivisionRatio:I

.field public static final sPerfSupervisionHardThreshold:I

.field private static final sPerfSupervisionLevel:I

.field public static final sPerfSupervisionSoftThreshold:I

.field private static sReadySupervision:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 16
    const-class v7, Landroid/os/statistics/PerfSupervisionSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/os/statistics/PerfSupervisionSettings;->TAG:Ljava/lang/String;

    .line 31
    const/4 v7, 0x0

    sput-boolean v7, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    .line 39
    const/4 v2, 0x0

    .line 41
    .local v2, "hasMiSysInfoFreader":Z
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "/dev/misysinfofreader"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 44
    .end local v2    # "hasMiSysInfoFreader":Z
    :goto_0
    sget-boolean v7, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v7, :cond_1

    if-eqz v2, :cond_1

    .line 45
    const/4 v7, 0x1

    .line 44
    :goto_1
    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    .line 46
    invoke-static {}, Lmiui/os/Environment;->getCpuCount()I

    move-result v0

    .line 47
    .local v0, "cpuCount":I
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long v4, v8, v10

    .line 48
    .local v4, "memorySizeInMB":J
    const/4 v7, 0x2

    if-le v0, v7, :cond_0

    const-wide/16 v8, 0x400

    cmp-long v7, v4, v8

    if-gtz v7, :cond_2

    .line 49
    :cond_0
    const/16 v7, 0x190

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    .line 50
    const/16 v7, 0x7d0

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_HARD_THRESHOLD_MS:I

    .line 51
    const/4 v7, 0x4

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    .line 52
    const/16 v7, 0x7d0

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    .line 53
    const/4 v7, 0x0

    sput-boolean v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    .line 72
    :goto_2
    const-string/jumbo v7, "persist.sys.perf_mistats_opt"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "optionStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 74
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    .line 75
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    .line 76
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_HARD_THRESHOLD_MS:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    .line 77
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    .line 105
    :goto_3
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sGlobalPerfEventQueueLength:I

    .line 106
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    if-nez v7, :cond_f

    const/4 v7, 0x0

    :goto_4
    sput-boolean v7, Landroid/os/statistics/PerfSupervisionSettings;->sIsAutoAnalysisOn:Z

    .line 15
    return-void

    .line 45
    .end local v0    # "cpuCount":I
    .end local v3    # "optionStr":Ljava/lang/String;
    .end local v4    # "memorySizeInMB":J
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 55
    .restart local v0    # "cpuCount":I
    .restart local v4    # "memorySizeInMB":J
    :cond_2
    const/4 v7, 0x4

    if-gt v0, v7, :cond_3

    .line 56
    const/16 v7, 0xc8

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    .line 57
    const/16 v7, 0x7d0

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_HARD_THRESHOLD_MS:I

    .line 58
    const/4 v7, 0x2

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    .line 64
    :goto_5
    const-wide/16 v8, 0x600

    cmp-long v7, v4, v8

    if-gtz v7, :cond_4

    .line 65
    const/16 v7, 0x1388

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    .line 69
    :goto_6
    sget-boolean v7, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_7
    sput-boolean v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    goto :goto_2

    .line 60
    :cond_3
    const/16 v7, 0x64

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    .line 61
    const/16 v7, 0x3e8

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_HARD_THRESHOLD_MS:I

    .line 62
    const/4 v7, 0x2

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    goto :goto_5

    .line 67
    :cond_4
    const/16 v7, 0x2710

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    goto :goto_6

    .line 69
    :cond_5
    const/4 v7, 0x1

    goto :goto_7

    .line 79
    .restart local v3    # "optionStr":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, " "

    const-string/jumbo v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "options":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x1

    if-lt v7, v8, :cond_7

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 83
    :cond_7
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    .line 85
    :goto_8
    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_8

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 89
    :cond_8
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    .line 91
    :goto_9
    array-length v7, v6

    const/4 v8, 0x3

    if-lt v7, v8, :cond_9

    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 95
    :cond_9
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_HARD_THRESHOLD_MS:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    .line 97
    :goto_a
    array-length v7, v6

    const/4 v8, 0x4

    if-lt v7, v8, :cond_a

    const/4 v7, 0x3

    aget-object v7, v6, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 102
    :cond_a
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    goto/16 :goto_3

    .line 81
    :cond_b
    const/4 v7, 0x0

    aget-object v7, v6, v7

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    invoke-static {v7, v8}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v7

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    goto :goto_8

    .line 87
    :cond_c
    const/4 v7, 0x1

    aget-object v7, v6, v7

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    invoke-static {v7, v8}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 86
    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    goto :goto_9

    .line 93
    :cond_d
    const/4 v7, 0x2

    aget-object v7, v6, v7

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_HARD_THRESHOLD_MS:I

    invoke-static {v7, v8}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 92
    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    goto :goto_a

    .line 99
    :cond_e
    const/4 v7, 0x3

    aget-object v7, v6, v7

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    invoke-static {v7, v8}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 100
    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    div-int/lit8 v8, v8, 0xa

    .line 98
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    goto/16 :goto_3

    .line 106
    .end local v6    # "options":[Ljava/lang/String;
    :cond_f
    sget-boolean v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    goto/16 :goto_4

    .line 42
    .end local v0    # "cpuCount":I
    .end local v3    # "optionStr":Ljava/lang/String;
    .end local v4    # "memorySizeInMB":J
    .restart local v2    # "hasMiSysInfoFreader":Z
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupervisionLevel()I
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 118
    sget-object v0, Landroid/os/statistics/PerfSupervisionSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    const-string/jumbo v2, ","

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 120
    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 120
    const-string/jumbo v2, ","

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    const-string/jumbo v2, ","

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sGlobalPerfEventQueueLength:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    const-string/jumbo v2, ","

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    sget-boolean v2, Landroid/os/statistics/PerfSupervisionSettings;->sIsAutoAnalysisOn:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public static isAboveHardThreshold(J)Z
    .locals 2
    .param p0, "timeMillis"    # J

    .prologue
    .line 143
    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInHeavyMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 135
    sget-boolean v1, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isInTestMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 139
    sget-boolean v1, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupervisionOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 131
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->getSupervisionLevel()I

    move-result v1

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static notifySupervisionReady()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    .line 146
    return-void
.end method

.method static parseIntWithDefault(Ljava/lang/String;I)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defVal"    # I

    .prologue
    .line 109
    move v1, p1

    .line 111
    .local v1, "value":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 112
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method
