.class public Landroid/os/statistics/LooperMessageSuperviser;
.super Ljava/lang/Object;
.source "LooperMessageSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;,
        Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;
    }
.end annotation


# static fields
.field private static final APPLICATION_OPERATION_MESSAGE_THRESHOLD_MS:J = 0x258L

.field private static final DEBUGGING:Z = false

.field private static final LOW_PRIORITY_ACTIVITY_MESSAGE_THRESHOLD_MS:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "LooperMessageSuperviser"

.field private static final WINDOW_OPERATION_MESSAGE_THRESHOLD_MS:J = 0x12cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginLooperMessage(Landroid/os/ILooperMonitorable;Landroid/os/Message;)V
    .locals 3
    .param p0, "looper"    # Landroid/os/ILooperMonitorable;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 287
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    return-void

    .line 291
    :cond_0
    invoke-interface {p0}, Landroid/os/ILooperMonitorable;->isMonitorLooper()Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    return-void

    .line 295
    :cond_1
    const-wide/16 v0, 0x0

    .line 300
    .local v0, "measureBeginTime":J
    invoke-static {}, Landroid/os/statistics/LooperMessageSuperviser;->nativeBeginLooperMessage()V

    .line 286
    return-void
.end method

.method public static endLooperMessage(Landroid/os/ILooperMonitorable;Landroid/os/Message;J)V
    .locals 8
    .param p0, "looper"    # Landroid/os/ILooperMonitorable;
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "msgPlanTimeMillis"    # J

    .prologue
    const/4 v5, 0x0

    .line 309
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 310
    return-void

    .line 313
    :cond_0
    invoke-interface {p0}, Landroid/os/ILooperMonitorable;->isMonitorLooper()Z

    move-result v4

    if-nez v4, :cond_1

    .line 314
    return-void

    .line 317
    :cond_1
    const-wide/16 v0, 0x0

    .line 322
    .local v0, "measureBeginTime":J
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    .line 323
    .local v3, "messageTarget":Landroid/os/Handler;
    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    .line 324
    .local v2, "messageCallback":Ljava/lang/Runnable;
    if-nez v3, :cond_2

    move-object v4, v5

    :goto_0
    iget v6, p1, Landroid/os/Message;->what:I

    .line 325
    if-nez v2, :cond_3

    .line 324
    :goto_1
    invoke-static {v4, v6, v5, p2, p3}, Landroid/os/statistics/LooperMessageSuperviser;->nativeEndLooperMessage(Ljava/lang/Class;ILjava/lang/Class;J)V

    .line 308
    return-void

    .line 324
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_0

    .line 325
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_1
.end method

.method private static native nativeBeginLooperMessage()V
.end method

.method private static native nativeEndLooperMessage(Ljava/lang/Class;ILjava/lang/Class;J)V
.end method
