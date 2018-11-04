.class public Lmiui/mqsas/sdk/BootEventManager;
.super Ljava/lang/Object;
.source "BootEventManager.java"


# static fields
.field private static final DELAY_TIME:I = 0x2710

.field private static final RUNTIME_REBOOT_PROPERTIY:Ljava/lang/String; = "sys.miui.runtime.reboot"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lmiui/mqsas/sdk/BootEventManager;


# instance fields
.field private bootType:I

.field private dexoptSysAppCnt:I

.field private dexoptThirdAppCnt:I

.field private persistAppCount:I

.field private phaseAmsReady:J

.field private phaseBootComplete:J

.field private phaseBootDexopt:J

.field private phaseCoreAppDexopt:J

.field private phasePmsScanEnd:J

.field private phasePmsScanStart:J

.field private phaseSystemRun:J

.field private phaseUIReady:J

.field private phaseZygotePreload:J

.field private prebootAppCount:I

.field private systemAppCount:I

.field private thirdAppCount:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lmiui/mqsas/sdk/BootEventManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lmiui/mqsas/sdk/BootEventManager;->bootType:I

    .line 43
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseSystemRun:J

    .line 45
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseZygotePreload:J

    .line 47
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanStart:J

    .line 48
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanEnd:J

    .line 50
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootDexopt:J

    .line 52
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseCoreAppDexopt:J

    .line 54
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseAmsReady:J

    .line 56
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseUIReady:J

    .line 58
    iput-wide v2, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootComplete:J

    .line 60
    iput v1, p0, Lmiui/mqsas/sdk/BootEventManager;->systemAppCount:I

    .line 61
    iput v1, p0, Lmiui/mqsas/sdk/BootEventManager;->thirdAppCount:I

    .line 62
    iput v1, p0, Lmiui/mqsas/sdk/BootEventManager;->prebootAppCount:I

    .line 63
    iput v1, p0, Lmiui/mqsas/sdk/BootEventManager;->persistAppCount:I

    .line 64
    iput v1, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptSysAppCnt:I

    .line 65
    iput v1, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptThirdAppCnt:I

    .line 74
    return-void
.end method

.method private static createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 4
    .param p0, "obj"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 143
    if-eqz p0, :cond_0

    .line 145
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_1
    return-object p0

    .line 143
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    .end local p0    # "obj":Lorg/json/JSONObject;
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .restart local p0    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "create jason object exception for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getBootEvent()Lmiui/mqsas/sdk/event/BootEvent;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 110
    new-instance v0, Lmiui/mqsas/sdk/event/BootEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/BootEvent;-><init>()V

    .line 111
    .local v0, "event":Lmiui/mqsas/sdk/event/BootEvent;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setType(I)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->setTimeStamp(J)V

    .line 113
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootType()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setBootType(I)V

    .line 114
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getSystemRun()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodSystemRun(J)V

    .line 115
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v2

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanStart()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 116
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v4

    .line 115
    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodPmsScan(J)V

    .line 117
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v2

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodDexopt(J)V

    .line 118
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v2

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 119
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v4

    .line 118
    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodAmsReady(J)V

    .line 120
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getUIReady()J

    move-result-wide v2

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodUIReady(J)V

    .line 121
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getBootComplete()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->setPeriodBootComplete(J)V

    .line 124
    const-string/jumbo v1, "zygotePreload"

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getZygotePreload()J

    move-result-wide v2

    invoke-static {v6, v1, v2, v3}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailSystemRun(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v1, "sysAppCnt"

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getSystemAppCount()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v1, v2, v3}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 128
    const-string/jumbo v2, "thirdAppCnt"

    .line 129
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getThirdAppCount()I

    move-result v3

    int-to-long v4, v3

    .line 126
    invoke-static {v1, v2, v4, v5}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailPmsScan(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v1, "optSysAppCnt"

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getDexoptSystemAppCount()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v1, v2, v3}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 133
    const-string/jumbo v2, "optThirdAppCnt"

    .line 134
    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getDexoptThirdAppCount()I

    move-result v3

    int-to-long v4, v3

    .line 131
    invoke-static {v1, v2, v4, v5}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailDexopt(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v1, "prebootAppCnt"

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPrebootAppCount()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v1, v2, v3}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailAmsReady(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v1, "persistAppCnt"

    invoke-virtual {p0}, Lmiui/mqsas/sdk/BootEventManager;->getPersistAppCount()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v1, v2, v3}, Lmiui/mqsas/sdk/BootEventManager;->createJsonObject(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/BootEvent;->setDetailUIReady(Ljava/lang/String;)V

    .line 139
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lmiui/mqsas/sdk/BootEventManager;
    .locals 2

    .prologue
    const-class v1, Lmiui/mqsas/sdk/BootEventManager;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lmiui/mqsas/sdk/BootEventManager;

    invoke-direct {v0}, Lmiui/mqsas/sdk/BootEventManager;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;

    .line 71
    :cond_0
    sget-object v0, Lmiui/mqsas/sdk/BootEventManager;->sInstance:Lmiui/mqsas/sdk/BootEventManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static reportBootEvent()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 78
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    .line 79
    .local v2, "manager":Lmiui/mqsas/sdk/BootEventManager;
    sget-object v4, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "systemRun:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lmiui/mqsas/sdk/BootEventManager;->getSystemRun()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 80
    const-string/jumbo v6, "zygotePreload:"

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 80
    invoke-virtual {v2}, Lmiui/mqsas/sdk/BootEventManager;->getZygotePreload()J

    move-result-wide v6

    .line 79
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 80
    const-string/jumbo v6, ","

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 81
    const-string/jumbo v6, "pmsScan:"

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 81
    invoke-virtual {v2}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v6

    invoke-virtual {v2}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanStart()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 82
    invoke-virtual {v2}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v8

    .line 81
    sub-long/2addr v6, v8

    .line 79
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 82
    const-string/jumbo v6, ","

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 83
    const-string/jumbo v6, "bootDexopt:"

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 83
    invoke-virtual {v2}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v6

    .line 79
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 83
    const-string/jumbo v6, ","

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 84
    const-string/jumbo v6, "coreAppDexopt:"

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 84
    invoke-virtual {v2}, Lmiui/mqsas/sdk/BootEventManager;->getCoreAppDexopt()J

    move-result-wide v6

    .line 79
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 84
    const-string/jumbo v6, ","

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 85
    const-string/jumbo v6, "amsReady:"

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 85
    invoke-virtual {v2}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v6

    invoke-virtual {v2}, Lmiui/mqsas/sdk/BootEventManager;->getPmsScanEnd()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 86
    invoke-virtual {v2}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v8

    .line 85
    sub-long/2addr v6, v8

    .line 79
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 86
    const-string/jumbo v6, ","

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 87
    const-string/jumbo v6, "UIReady:"

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 87
    invoke-virtual {v2}, Lmiui/mqsas/sdk/BootEventManager;->getUIReady()J

    move-result-wide v6

    invoke-virtual {v2}, Lmiui/mqsas/sdk/BootEventManager;->getAmsReady()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 79
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 87
    const-string/jumbo v6, ","

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 88
    const-string/jumbo v6, "bootComplete:"

    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 88
    invoke-virtual {v2}, Lmiui/mqsas/sdk/BootEventManager;->getBootComplete()J

    move-result-wide v6

    .line 79
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {v2}, Lmiui/mqsas/sdk/BootEventManager;->getBootEvent()Lmiui/mqsas/sdk/event/BootEvent;

    move-result-object v0

    .line 90
    .local v0, "event":Lmiui/mqsas/sdk/event/BootEvent;
    sget-object v4, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/BootEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string/jumbo v4, "sys.miui.runtime.reboot"

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 94
    .local v3, "runtimeRebootCount":I
    if-lt v3, v10, :cond_0

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/BootEvent;->getBootType()I

    move-result v4

    if-ne v4, v10, :cond_0

    .line 95
    sget-object v4, Lmiui/mqsas/sdk/BootEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Abnormal boot event, filter it"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 99
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    .local v1, "handler":Landroid/os/Handler;
    new-instance v4, Lmiui/mqsas/sdk/BootEventManager$1;

    invoke-direct {v4, v0}, Lmiui/mqsas/sdk/BootEventManager$1;-><init>(Lmiui/mqsas/sdk/event/BootEvent;)V

    .line 106
    const-wide/16 v6, 0x2710

    .line 100
    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    return-void
.end method


# virtual methods
.method public getAmsReady()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseAmsReady:J

    return-wide v0
.end method

.method public getBootComplete()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootComplete:J

    return-wide v0
.end method

.method public getBootDexopt()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootDexopt:J

    return-wide v0
.end method

.method public getBootType()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->bootType:I

    return v0
.end method

.method public getCoreAppDexopt()J
    .locals 2

    .prologue
    .line 258
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseCoreAppDexopt:J

    return-wide v0
.end method

.method public getDexoptSystemAppCount()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptSysAppCnt:I

    return v0
.end method

.method public getDexoptThirdAppCount()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptThirdAppCnt:I

    return v0
.end method

.method public getPersistAppCount()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->persistAppCount:I

    return v0
.end method

.method public getPmsScanEnd()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanEnd:J

    return-wide v0
.end method

.method public getPmsScanStart()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanStart:J

    return-wide v0
.end method

.method public getPrebootAppCount()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->prebootAppCount:I

    return v0
.end method

.method public getSystemAppCount()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->systemAppCount:I

    return v0
.end method

.method public getSystemRun()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseSystemRun:J

    return-wide v0
.end method

.method public getThirdAppCount()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lmiui/mqsas/sdk/BootEventManager;->thirdAppCount:I

    return v0
.end method

.method public getUIReady()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseUIReady:J

    return-wide v0
.end method

.method public getZygotePreload()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseZygotePreload:J

    return-wide v0
.end method

.method public setAmsReady(J)V
    .locals 1
    .param p1, "phaseAmsReady"    # J

    .prologue
    .line 206
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseAmsReady:J

    .line 205
    return-void
.end method

.method public setBootComplete(J)V
    .locals 1
    .param p1, "phaseBootComplete"    # J

    .prologue
    .line 222
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootComplete:J

    .line 221
    return-void
.end method

.method public setBootDexopt(J)V
    .locals 1
    .param p1, "phaseBootDexopt"    # J

    .prologue
    .line 198
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseBootDexopt:J

    .line 197
    return-void
.end method

.method public setBootType(I)V
    .locals 0
    .param p1, "bootType"    # I

    .prologue
    .line 158
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->bootType:I

    .line 157
    return-void
.end method

.method public setCoreAppDexopt(J)V
    .locals 1
    .param p1, "phaseCoreAppDexopt"    # J

    .prologue
    .line 262
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseCoreAppDexopt:J

    .line 261
    return-void
.end method

.method public setDexoptSystemAppCount(I)V
    .locals 0
    .param p1, "dexoptSysAppCnt"    # I

    .prologue
    .line 266
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptSysAppCnt:I

    .line 265
    return-void
.end method

.method public setDexoptThirdAppCount(I)V
    .locals 0
    .param p1, "dexoptThirdAppCnt"    # I

    .prologue
    .line 274
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->dexoptThirdAppCnt:I

    .line 273
    return-void
.end method

.method public setPersistAppCount(I)V
    .locals 0
    .param p1, "persistAppCount"    # I

    .prologue
    .line 254
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->persistAppCount:I

    .line 253
    return-void
.end method

.method public setPmsScanEnd(J)V
    .locals 1
    .param p1, "phasePmsScanEnd"    # J

    .prologue
    .line 190
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanEnd:J

    .line 189
    return-void
.end method

.method public setPmsScanStart(J)V
    .locals 1
    .param p1, "phasePmsScanStart"    # J

    .prologue
    .line 182
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phasePmsScanStart:J

    .line 181
    return-void
.end method

.method public setPrebootAppCount(I)V
    .locals 0
    .param p1, "prebootAppCount"    # I

    .prologue
    .line 246
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->prebootAppCount:I

    .line 245
    return-void
.end method

.method public setSystemAppCount(I)V
    .locals 0
    .param p1, "systemAppCount"    # I

    .prologue
    .line 230
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->systemAppCount:I

    .line 229
    return-void
.end method

.method public setSystemRun(J)V
    .locals 1
    .param p1, "phaseSystemRun"    # J

    .prologue
    .line 166
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseSystemRun:J

    .line 165
    return-void
.end method

.method public setThirdAppCount(I)V
    .locals 0
    .param p1, "thirdAppCount"    # I

    .prologue
    .line 238
    iput p1, p0, Lmiui/mqsas/sdk/BootEventManager;->thirdAppCount:I

    .line 237
    return-void
.end method

.method public setUIReady(J)V
    .locals 1
    .param p1, "phaseUIReady"    # J

    .prologue
    .line 214
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseUIReady:J

    .line 213
    return-void
.end method

.method public setZygotePreload(J)V
    .locals 1
    .param p1, "phaseZygotePreload"    # J

    .prologue
    .line 174
    iput-wide p1, p0, Lmiui/mqsas/sdk/BootEventManager;->phaseZygotePreload:J

    .line 173
    return-void
.end method
