.class public final Landroid/os/statistics/LooperOnce;
.super Landroid/os/statistics/MicroscopicEvent;
.source "LooperOnce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/LooperOnce$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/MicroscopicEvent$MicroEventFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/LooperOnce;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Landroid/os/statistics/LooperOnce$1;

    invoke-direct {v0}, Landroid/os/statistics/LooperOnce$1;-><init>()V

    .line 81
    sput-object v0, Landroid/os/statistics/LooperOnce;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    invoke-direct {v0}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>()V

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    .line 12
    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    .line 60
    .local v0, "details":Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    .line 61
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 62
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 63
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    .line 64
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    .line 58
    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBySameProcess()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method isConcerned()Z
    .locals 8

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    .line 71
    .local v0, "details":Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
    iget v1, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    sget v4, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    if-eq v1, v4, :cond_0

    .line 72
    iget v1, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->isRenderThread(I)Z

    move-result v1

    .line 71
    if-nez v1, :cond_0

    .line 73
    invoke-static {}, Landroid/app/ActivityThreadInjector;->isSystemThread()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    iget v4, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    invoke-static {v1, v4}, Landroid/os/statistics/OsUtils;->isHighPriority(II)Z

    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 74
    :cond_0
    sget v1, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    int-to-long v2, v1

    .line 78
    .local v2, "thresholdMillis":J
    :goto_0
    iget-wide v4, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v6, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 76
    .end local v2    # "thresholdMillis":J
    :cond_1
    sget v1, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    const/16 v4, 0x12c

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v2, v1

    .restart local v2    # "thresholdMillis":J
    goto :goto_0

    .line 78
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
