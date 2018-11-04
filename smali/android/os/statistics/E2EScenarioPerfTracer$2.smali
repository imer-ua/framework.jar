.class final Landroid/os/statistics/E2EScenarioPerfTracer$2;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/statistics/E2EScenarioPerfTracer;->abortScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$perfShielder:Lcom/android/internal/app/IPerfShielder;

.field final synthetic val$scenario:Landroid/os/statistics/E2EScenario;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$tid:I

.field final synthetic val$uptimeMs:J


# direct methods
.method constructor <init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/statistics/E2EScenario;Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "val$perfShielder"    # Lcom/android/internal/app/IPerfShielder;
    .param p2, "val$scenario"    # Landroid/os/statistics/E2EScenario;
    .param p3, "val$tag"    # Ljava/lang/String;
    .param p4, "val$tid"    # I
    .param p5, "val$uptimeMs"    # J

    .prologue
    .line 111
    iput-object p1, p0, Landroid/os/statistics/E2EScenarioPerfTracer$2;->val$perfShielder:Lcom/android/internal/app/IPerfShielder;

    iput-object p2, p0, Landroid/os/statistics/E2EScenarioPerfTracer$2;->val$scenario:Landroid/os/statistics/E2EScenario;

    iput-object p3, p0, Landroid/os/statistics/E2EScenarioPerfTracer$2;->val$tag:Ljava/lang/String;

    iput p4, p0, Landroid/os/statistics/E2EScenarioPerfTracer$2;->val$tid:I

    iput-wide p5, p0, Landroid/os/statistics/E2EScenarioPerfTracer$2;->val$uptimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Landroid/os/statistics/E2EScenarioPerfTracer$2;->val$perfShielder:Lcom/android/internal/app/IPerfShielder;

    iget-object v1, p0, Landroid/os/statistics/E2EScenarioPerfTracer$2;->val$scenario:Landroid/os/statistics/E2EScenario;

    iget-object v2, p0, Landroid/os/statistics/E2EScenarioPerfTracer$2;->val$tag:Ljava/lang/String;

    iget v3, p0, Landroid/os/statistics/E2EScenarioPerfTracer$2;->val$tid:I

    iget-wide v4, p0, Landroid/os/statistics/E2EScenarioPerfTracer$2;->val$uptimeMs:J

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IPerfShielder;->abortMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
