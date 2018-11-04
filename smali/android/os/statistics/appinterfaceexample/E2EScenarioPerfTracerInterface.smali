.class Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;,
        Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;,
        Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;
    }
.end annotation


# static fields
.field public static final STATISTICS_MODE_ALL:I = 0x3

.field public static final STATISTICS_MODE_AVERAGE:I = 0x1

.field public static final STATISTICS_MODE_HISTORY:I = 0x2

.field public static final STATISTICS_MODE_NONE:I

.field private static volatile sAbortMatchingScenarioWithTag:Ljava/lang/reflect/Method;

.field private static volatile sAbortSpecificScenario:Ljava/lang/reflect/Method;

.field private static volatile sAsyncBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

.field private static volatile sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioPayloadClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioPayloadConstuctor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioPayloadMethodPutAll:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioPayloadMethodPutValues:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioPerfTracerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioSettingsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioSettingsConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile sE2EScenarioSettingsMethodEnableAutoAnalysis:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioSettingsMethodSetHistoryLimitPerDay:Ljava/lang/reflect/Method;

.field private static volatile sE2EScenarioSettingsMethodSetStatisticsMode:Ljava/lang/reflect/Method;

.field private static volatile sFinishMatchingScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

.field private static volatile sFinishSpecificScenarioWithPayload:Ljava/lang/reflect/Method;

.field private static final sInitLockObject:Ljava/lang/Object;

.field private static volatile sInitialized:Z


# direct methods
.method static synthetic -get0()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutAll:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutValues:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodEnableAutoAnalysis:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetHistoryLimitPerDay:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get4()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetStatisticsMode:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitLockObject:Ljava/lang/Object;

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortScenario(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "scenarioBundle"    # Landroid/os/Bundle;

    .prologue
    .line 338
    if-nez p0, :cond_0

    .line 339
    return-void

    .line 342
    :cond_0
    sget-boolean v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v1, :cond_1

    .line 343
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    .line 346
    :cond_1
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortSpecificScenario:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 348
    :try_start_0
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortSpecificScenario:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_2
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static abortScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)V
    .locals 1
    .param p0, "scenario"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;

    .prologue
    .line 314
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->abortScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public static abortScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;)V
    .locals 5
    .param p0, "scenario"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 319
    if-nez p0, :cond_0

    .line 320
    return-void

    .line 323
    :cond_0
    sget-boolean v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v1, :cond_1

    .line 324
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    .line 327
    :cond_1
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortMatchingScenarioWithTag:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 329
    :try_start_0
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortMatchingScenarioWithTag:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_2
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)V
    .locals 2
    .param p0, "scenario"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .param p1, "scenarioSettings"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;

    .prologue
    .line 274
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    .line 273
    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .locals 1
    .param p0, "scenario"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .param p1, "scenarioSettings"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;
    .param p2, "payload"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;

    .prologue
    .line 283
    const-string/jumbo v0, ""

    invoke-static {p0, p1, v0, p2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    .line 282
    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;)V
    .locals 1
    .param p0, "scenario"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .param p1, "scenarioSettings"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    .line 277
    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .locals 6
    .param p0, "scenario"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .param p1, "scenarioSettings"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "payload"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;

    .prologue
    const/4 v1, 0x0

    .line 288
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 289
    :cond_0
    return-void

    .line 292
    :cond_1
    sget-boolean v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v2, :cond_2

    .line 293
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    .line 296
    :cond_2
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAsyncBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_5

    .line 298
    :try_start_0
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAsyncBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 299
    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p2, v3, v4

    if-nez p3, :cond_4

    :goto_0
    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v1, 0x0

    .line 298
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_3
    :goto_1
    return-void

    .line 299
    :cond_4
    invoke-static {p3}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 303
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_5
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_3

    .line 305
    :try_start_1
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 306
    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p2, v3, v4

    if-nez p3, :cond_6

    :goto_2
    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v1, 0x0

    .line 305
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 307
    :catch_1
    move-exception v0

    .line 308
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 306
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_6
    :try_start_2
    invoke-static {p3}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_2
.end method

.method public static beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)Landroid/os/Bundle;
    .locals 2
    .param p0, "scenario"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .param p1, "scenarioSettings"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;

    .prologue
    .line 240
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;
    .locals 1
    .param p0, "scenario"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .param p1, "scenarioSettings"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;
    .param p2, "payload"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;

    .prologue
    .line 249
    const-string/jumbo v0, ""

    invoke-static {p0, p1, v0, p2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "scenario"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .param p1, "scenarioSettings"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Landroid/os/Bundle;
    .locals 6
    .param p0, "scenario"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .param p1, "scenarioSettings"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "payload"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;

    .prologue
    const/4 v2, 0x0

    .line 254
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 255
    :cond_0
    return-object v2

    .line 258
    :cond_1
    sget-boolean v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v1, :cond_2

    .line 259
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    .line 262
    :cond_2
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_4

    .line 264
    :try_start_0
    sget-object v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/Object;

    .line 265
    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object p2, v4, v1

    if-nez p3, :cond_3

    move-object v1, v2

    :goto_0
    const/4 v5, 0x3

    aput-object v1, v4, v5

    const/4 v1, 0x0

    .line 264
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    return-object v1

    .line 265
    :cond_3
    invoke-static {p3}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_4
    return-object v2
.end method

.method public static createE2EScenario(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .locals 6
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 192
    sget-boolean v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v3, :cond_0

    .line 193
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    .line 196
    :cond_0
    const/4 v1, 0x0

    .line 197
    .local v1, "result":Ljava/lang/Object;
    sget-object v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_1

    .line 199
    :try_start_0
    sget-object v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 204
    .end local v1    # "result":Ljava/lang/Object;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return-object v2

    .line 200
    .restart local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "result":Ljava/lang/Object;
    :cond_2
    new-instance v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;

    invoke-direct {v3, v1, v2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;-><init>(Ljava/lang/Object;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)V

    move-object v2, v3

    goto :goto_1
.end method

.method public static createE2EScenarioPayload()Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 224
    sget-boolean v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v3, :cond_0

    .line 225
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    .line 228
    :cond_0
    const/4 v1, 0x0

    .line 229
    .local v1, "result":Ljava/lang/Object;
    sget-object v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadConstuctor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_1

    .line 231
    :try_start_0
    sget-object v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadConstuctor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 236
    .local v0, "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return-object v2

    .line 232
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 233
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 236
    :cond_2
    new-instance v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;

    invoke-direct {v3, v1, v2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;-><init>(Ljava/lang/Object;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    move-object v2, v3

    goto :goto_1
.end method

.method public static createE2EScenarioSettings()Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 208
    sget-boolean v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v3, :cond_0

    .line 209
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    .line 212
    :cond_0
    const/4 v1, 0x0

    .line 213
    .local v1, "result":Ljava/lang/Object;
    sget-object v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_1

    .line 215
    :try_start_0
    sget-object v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 220
    .local v0, "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return-object v2

    .line 216
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 217
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 220
    :cond_2
    new-instance v3, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;

    invoke-direct {v3, v1, v2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;-><init>(Ljava/lang/Object;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioSettings;)V

    move-object v2, v3

    goto :goto_1
.end method

.method public static finishScenario(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "scenarioBundle"    # Landroid/os/Bundle;

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->finishScenario(Landroid/os/Bundle;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    .line 390
    return-void
.end method

.method public static finishScenario(Landroid/os/Bundle;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .locals 5
    .param p0, "scenarioBundle"    # Landroid/os/Bundle;
    .param p1, "payload"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;

    .prologue
    const/4 v1, 0x0

    .line 396
    if-nez p0, :cond_0

    .line 397
    return-void

    .line 400
    :cond_0
    sget-boolean v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v2, :cond_1

    .line 401
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    .line 404
    :cond_1
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishSpecificScenarioWithPayload:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 406
    :try_start_0
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishSpecificScenarioWithPayload:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 407
    const/4 v4, 0x0

    aput-object p0, v3, v4

    if-nez p1, :cond_3

    :goto_0
    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x0

    .line 406
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_2
    :goto_1
    return-void

    .line 407
    :cond_3
    invoke-static {p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)V
    .locals 2
    .param p0, "scenario"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;

    .prologue
    .line 357
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    .line 356
    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .locals 1
    .param p0, "scenario"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .param p1, "payload"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;

    .prologue
    .line 362
    const-string/jumbo v0, ""

    invoke-static {p0, v0, p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    .line 361
    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;)V
    .locals 1
    .param p0, "scenario"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 367
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V

    .line 366
    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;Ljava/lang/String;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .locals 6
    .param p0, "scenario"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "payload"    # Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;

    .prologue
    const/4 v1, 0x0

    .line 372
    if-nez p0, :cond_0

    .line 373
    return-void

    .line 376
    :cond_0
    sget-boolean v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v2, :cond_1

    .line 377
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    .line 380
    :cond_1
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishMatchingScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 382
    :try_start_0
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishMatchingScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 383
    invoke-static {p0}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    if-nez p2, :cond_3

    :goto_0
    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x0

    .line 382
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_2
    :goto_1
    return-void

    .line 383
    :cond_3
    invoke-static {p2}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->-get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static init()V
    .locals 7

    .prologue
    .line 122
    sget-boolean v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v1, :cond_1

    .line 123
    sget-object v2, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    :try_start_0
    sget-boolean v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 127
    :try_start_1
    const-string/jumbo v1, "android.os.statistics.E2EScenario"

    .line 126
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    .line 128
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    .line 129
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioConstructor:Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    const-string/jumbo v1, "android.os.statistics.E2EScenarioSettings"

    .line 134
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    .line 136
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsConstructor:Ljava/lang/reflect/Constructor;

    .line 137
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    .line 138
    const-string/jumbo v3, "setStatisticsMode"

    .line 137
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 138
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 137
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetStatisticsMode:Ljava/lang/reflect/Method;

    .line 139
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    .line 140
    const-string/jumbo v3, "setHistoryLimitPerDay"

    .line 139
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 140
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 139
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodSetHistoryLimitPerDay:Ljava/lang/reflect/Method;

    .line 141
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    .line 142
    const-string/jumbo v3, "enableAutoAnalysis"

    .line 141
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    .line 142
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 141
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsMethodEnableAutoAnalysis:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :goto_1
    :try_start_3
    const-string/jumbo v1, "android.os.statistics.E2EScenarioPayload"

    .line 147
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    .line 149
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadConstuctor:Ljava/lang/reflect/Constructor;

    .line 150
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    .line 151
    const-string/jumbo v3, "putValues"

    .line 150
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 151
    const-class v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 150
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutValues:Ljava/lang/reflect/Method;

    .line 152
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    .line 153
    const-string/jumbo v3, "putAll"

    .line 152
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 153
    const-class v5, Ljava/util/Map;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 152
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadMethodPutAll:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    :goto_2
    :try_start_4
    const-string/jumbo v1, "android.os.statistics.E2EScenarioPerfTracer"

    .line 158
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    .line 160
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    .line 161
    const-string/jumbo v3, "beginScenario"

    .line 160
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    .line 161
    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 160
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    :try_start_5
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    .line 164
    const-string/jumbo v3, "asyncBeginScenario"

    .line 163
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    .line 164
    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioSettingsClass:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 163
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAsyncBeginScenarioWithTagAndPayload:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    :goto_3
    :try_start_6
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    .line 168
    const-string/jumbo v3, "abortScenario"

    .line 167
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    .line 168
    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 167
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortMatchingScenarioWithTag:Ljava/lang/reflect/Method;

    .line 169
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    .line 170
    const-string/jumbo v3, "abortScenario"

    .line 169
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 170
    const-class v5, Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 169
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sAbortSpecificScenario:Ljava/lang/reflect/Method;

    .line 171
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    .line 172
    const-string/jumbo v3, "finishScenario"

    .line 171
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    .line 172
    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 171
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishMatchingScenarioWithTagAndPayload:Ljava/lang/reflect/Method;

    .line 173
    sget-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPerfTracerClass:Ljava/lang/Class;

    .line 174
    const-string/jumbo v3, "finishScenario"

    .line 173
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    .line 174
    const-class v5, Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioPayloadClass:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 173
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sFinishSpecificScenarioWithPayload:Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 177
    :goto_4
    const/4 v1, 0x1

    :try_start_7
    sput-boolean v1, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_0
    monitor-exit v2

    .line 121
    :cond_1
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 175
    :catch_0
    move-exception v0

    goto :goto_4

    .line 165
    :catch_1
    move-exception v0

    goto :goto_3

    .line 154
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 143
    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 130
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method public static isUsable()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sInitialized:Z

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->init()V

    .line 187
    :cond_0
    sget-object v0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->sE2EScenarioClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
