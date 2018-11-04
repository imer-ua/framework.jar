.class public Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "E2EScenario"
.end annotation


# instance fields
.field private final scenario:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->scenario:Ljava/lang/Object;

    return-object v0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "scenario"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;->scenario:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;)V
    .locals 0
    .param p1, "scenario"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/statistics/appinterfaceexample/E2EScenarioPerfTracerInterface$E2EScenario;-><init>(Ljava/lang/Object;)V

    return-void
.end method
