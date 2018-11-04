.class public final Landroid/os/statistics/E2EScenarioPerfTracer;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracer.java"


# static fields
.field private static final VERSION:I = 0x1

.field private static final executor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 19
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v4, 0x0

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 18
    sput-object v1, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortScenario(Landroid/os/Bundle;)V
    .locals 7
    .param p0, "scenarioBundle"    # Landroid/os/Bundle;

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    .line 127
    .local v1, "perfShielder":Lcom/android/internal/app/IPerfShielder;
    if-nez v1, :cond_1

    .line 128
    return-void

    .line 130
    :cond_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    .line 131
    .local v3, "tid":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 132
    .local v4, "uptimeMs":J
    sget-object v6, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Landroid/os/statistics/E2EScenarioPerfTracer$3;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/statistics/E2EScenarioPerfTracer$3;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/Bundle;IJ)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public static abortScenario(Landroid/os/statistics/E2EScenario;)V
    .locals 1
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;

    .prologue
    .line 98
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->abortScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static abortScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;)V
    .locals 8
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 102
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenario;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    .line 106
    .local v2, "perfShielder":Lcom/android/internal/app/IPerfShielder;
    if-nez v2, :cond_1

    .line 107
    return-void

    .line 103
    .end local v2    # "perfShielder":Lcom/android/internal/app/IPerfShielder;
    :cond_0
    return-void

    .line 109
    .restart local v2    # "perfShielder":Lcom/android/internal/app/IPerfShielder;
    :cond_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    .line 110
    .local v5, "tid":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 111
    .local v6, "uptimeMs":J
    sget-object v0, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Landroid/os/statistics/E2EScenarioPerfTracer$2;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/os/statistics/E2EScenarioPerfTracer$2;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/statistics/E2EScenario;Ljava/lang/String;IJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;)V
    .locals 2
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;

    .prologue
    .line 59
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/os/statistics/E2EScenarioPerfTracer;->asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    .line 58
    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Landroid/os/statistics/E2EScenarioPayload;)V
    .locals 1
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p2, "payload"    # Landroid/os/statistics/E2EScenarioPayload;

    .prologue
    .line 69
    const-string/jumbo v0, ""

    invoke-static {p0, p1, v0, p2}, Landroid/os/statistics/E2EScenarioPerfTracer;->asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    .line 68
    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;)V
    .locals 1
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    .line 63
    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V
    .locals 10
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "payload"    # Landroid/os/statistics/E2EScenarioPayload;

    .prologue
    .line 74
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenario;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/statistics/E2EScenarioSettings;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    .line 81
    .local v2, "perfShielder":Lcom/android/internal/app/IPerfShielder;
    if-nez v2, :cond_2

    .line 82
    return-void

    .line 75
    .end local v2    # "perfShielder":Lcom/android/internal/app/IPerfShielder;
    :cond_0
    return-void

    .line 78
    :cond_1
    return-void

    .line 84
    .restart local v2    # "perfShielder":Lcom/android/internal/app/IPerfShielder;
    :cond_2
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    .line 85
    .local v7, "tid":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 86
    .local v8, "uptimeMs":J
    sget-object v0, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Landroid/os/statistics/E2EScenarioPerfTracer$1;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v9}, Landroid/os/statistics/E2EScenarioPerfTracer$1;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public static beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;)Landroid/os/Bundle;
    .locals 2
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;

    .prologue
    .line 29
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/os/statistics/E2EScenarioPerfTracer;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;
    .locals 1
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p2, "payload"    # Landroid/os/statistics/E2EScenarioPayload;

    .prologue
    .line 37
    const-string/jumbo v0, ""

    invoke-static {p0, p1, v0, p2}, Landroid/os/statistics/E2EScenarioPerfTracer;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;
    .locals 11
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "payload"    # Landroid/os/statistics/E2EScenarioPayload;

    .prologue
    const/4 v10, 0x0

    .line 41
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenario;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/statistics/E2EScenarioSettings;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v0

    .line 48
    .local v0, "perfShielder":Lcom/android/internal/app/IPerfShielder;
    if-nez v0, :cond_2

    .line 49
    return-object v10

    .line 42
    .end local v0    # "perfShielder":Lcom/android/internal/app/IPerfShielder;
    :cond_0
    return-object v10

    .line 45
    :cond_1
    return-object v10

    .line 52
    .restart local v0    # "perfShielder":Lcom/android/internal/app/IPerfShielder;
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/app/IPerfShielder;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJZ)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 53
    :catch_0
    move-exception v9

    .line 54
    .local v9, "ex":Landroid/os/RemoteException;
    return-object v10
.end method

.method public static finishScenario(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "scenarioBundle"    # Landroid/os/Bundle;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;)V

    .line 176
    return-void
.end method

.method public static finishScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;)V
    .locals 8
    .param p0, "scenarioBundle"    # Landroid/os/Bundle;
    .param p1, "payload"    # Landroid/os/statistics/E2EScenarioPayload;

    .prologue
    .line 181
    if-nez p0, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    .line 185
    .local v2, "perfShielder":Lcom/android/internal/app/IPerfShielder;
    if-nez v2, :cond_1

    .line 186
    return-void

    .line 188
    :cond_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    .line 189
    .local v5, "tid":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 190
    .local v6, "uptimeMs":J
    sget-object v0, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Landroid/os/statistics/E2EScenarioPerfTracer$5;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/os/statistics/E2EScenarioPerfTracer$5;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/E2EScenario;)V
    .locals 2
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;

    .prologue
    .line 144
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    .line 143
    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioPayload;)V
    .locals 1
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "payload"    # Landroid/os/statistics/E2EScenarioPayload;

    .prologue
    .line 148
    const-string/jumbo v0, ""

    invoke-static {p0, v0, p1}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    .line 147
    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;)V
    .locals 1
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    .line 151
    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V
    .locals 9
    .param p0, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "payload"    # Landroid/os/statistics/E2EScenarioPayload;

    .prologue
    .line 156
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenario;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    .line 160
    .local v1, "perfShielder":Lcom/android/internal/app/IPerfShielder;
    if-nez v1, :cond_1

    .line 161
    return-void

    .line 157
    .end local v1    # "perfShielder":Lcom/android/internal/app/IPerfShielder;
    :cond_0
    return-void

    .line 163
    .restart local v1    # "perfShielder":Lcom/android/internal/app/IPerfShielder;
    :cond_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    .line 164
    .local v5, "tid":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 165
    .local v6, "uptimeMs":J
    sget-object v8, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Landroid/os/statistics/E2EScenarioPerfTracer$4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/os/statistics/E2EScenarioPerfTracer$4;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public static getVersion()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method
