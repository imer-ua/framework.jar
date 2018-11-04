.class public Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "E2EScenarioPayload"
.end annotation


# instance fields
.field private final payload:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "payload"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;)V
    .locals 0
    .param p1, "payload"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public putAll(Ljava/util/Map;)V
    .locals 5
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 83
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->-get0()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->-get0()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs putValues([Ljava/lang/Object;)V
    .locals 5
    .param p1, "keyandvalues"    # [Ljava/lang/Object;

    .prologue
    .line 71
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->-get1()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    :try_start_0
    invoke-static {}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;->-get1()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenarioPayload;->payload:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
