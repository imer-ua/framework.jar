.class public Landroid/os/statistics/PerfEventReporter;
.super Ljava/lang/Object;
.source "PerfEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;
    }
.end annotation


# static fields
.field private static final APP_PERF_EVENT_ARRAY_CAPACITY:I = 0x40

.field private static final DEBUGGING:Z = false

.field private static final INITIAL_PERF_EVENT_ARRAY_CAPACITY:I = 0x20

.field private static final MAX_RETRY_WRITE_COUNT:I = 0x6

.field private static final SYSTEM_PERF_EVENT_ARRAY_CAPACITY:I = 0x100


# direct methods
.method static synthetic -wrap0()[Landroid/os/statistics/PerfEvent;
    .locals 1

    invoke-static {}, Landroid/os/statistics/PerfEventReporter;->createPerfEventFetchingBuffer()[Landroid/os/statistics/PerfEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1([Landroid/os/statistics/PerfEvent;)I
    .locals 1
    .param p0, "fetchingBuffer"    # [Landroid/os/statistics/PerfEvent;

    .prologue
    invoke-static {p0}, Landroid/os/statistics/PerfEventReporter;->fetchPerfEvents([Landroid/os/statistics/PerfEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2()J
    .locals 2

    invoke-static {}, Landroid/os/statistics/PerfEventReporter;->getEarliestBeginUptimeMillisOfExecutingRootEvents()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(I)V
    .locals 0
    .param p0, "timeoutMillis"    # I

    .prologue
    invoke-static {p0}, Landroid/os/statistics/PerfEventReporter;->waitForPerfEventArrived(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native createPerfEventFetchingBuffer()[Landroid/os/statistics/PerfEvent;
.end method

.method private static native fetchPerfEvents([Landroid/os/statistics/PerfEvent;)I
.end method

.method private static native getEarliestBeginUptimeMillisOfExecutingRootEvents()J
.end method

.method private static native nativeReport(ILandroid/os/statistics/PerfEvent;)V
.end method

.method public static report(Landroid/os/statistics/PerfEvent;)V
    .locals 1
    .param p0, "event"    # Landroid/os/statistics/PerfEvent;

    .prologue
    .line 32
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    iget v0, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-static {v0, p0}, Landroid/os/statistics/PerfEventReporter;->nativeReport(ILandroid/os/statistics/PerfEvent;)V

    .line 31
    return-void
.end method

.method static start()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->getInstance()Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 27
    return-void
.end method

.method private static native waitForPerfEventArrived(I)V
.end method
