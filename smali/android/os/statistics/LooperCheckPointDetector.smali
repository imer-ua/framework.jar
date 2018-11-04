.class public abstract Landroid/os/statistics/LooperCheckPointDetector;
.super Ljava/lang/Object;
.source "LooperCheckPointDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;
    }
.end annotation


# static fields
.field private static final FIRST_TIME_DETECT_DELAY_TIME_MS:I = 0x1388

.field private static final LATER_DETECT_DELAY_TIME_MS:I = 0x7d0

.field private static final MESSAGE_DETECTING_CHECKPOINT:I

.field private static mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

.field private static mDetectingThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;
    .locals 1

    sget-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginLoopOnce(IJ)V
    .locals 1
    .param p0, "threadId"    # I
    .param p1, "beginUptimeMs"    # J

    .prologue
    .line 111
    sget-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    if-nez v0, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    sget-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->beginLoopOnce(IJ)V

    .line 110
    return-void
.end method

.method public static endLooperOnce()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    sget-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    invoke-virtual {v0}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->endLooperOnce()V

    .line 117
    return-void
.end method

.method static start()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Binder:looper-check-point-detect"

    const/16 v2, -0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingThread:Landroid/os/HandlerThread;

    .line 106
    sget-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 107
    new-instance v0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    sget-object v1, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/os/statistics/LooperCheckPointDetector;->mDetectingHandler:Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    .line 104
    return-void
.end method
