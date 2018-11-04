.class public final Landroid/os/statistics/MonitorSuperviser$SingleLockHold;
.super Landroid/os/statistics/MicroscopicEvent;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleLockHold"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/MonitorSuperviser$SingleLockHold$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/MonitorSuperviser$SingleLockHold;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MONITOR_ID:Ljava/lang/String; = "monitorId"

.field private static final FIELD_STACK:Ljava/lang/String; = "stack"


# instance fields
.field public monitorId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleLockHold$1;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleLockHold$1;-><init>()V

    .line 128
    sput-object v0, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    .line 20
    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    .line 95
    .local v0, "details":Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    .line 96
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "threadName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "threadName":Ljava/lang/String;
    :goto_0
    iput-object v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 99
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 100
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v2

    iput v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    .line 101
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    .line 102
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedGroup:I

    .line 103
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runningTimeMs:J

    .line 104
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runnableTimeMs:J

    .line 105
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->sleepingTimeMs:J

    .line 106
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;->monitorId:J

    .line 108
    iput-object p2, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    .line 93
    return-void

    .line 97
    .restart local v1    # "threadName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBySameProcess()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public isBlockingSameProcess()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public isPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public isRootEvent()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;->monitorId:J

    .line 75
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    .line 76
    .local v0, "details":Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;
    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "stackTrace":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "stackTrace":[Ljava/lang/String;
    :goto_0
    iput-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    .line 78
    iput-object v4, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    .line 72
    return-void

    .line 77
    .restart local v1    # "stackTrace":[Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    goto :goto_0
.end method

.method resolveLazyInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->isLazyInfoResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    return-void

    .line 117
    :cond_0
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    .line 119
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    .line 121
    .local v0, "details":Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;
    iget-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v1}, Landroid/os/statistics/JavaBackTrace;->resolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 122
    iget-object v2, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v2}, Landroid/os/statistics/JavaBackTrace;->resolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    .line 120
    invoke-static {v1, v2, v3}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    .line 125
    iput-object v3, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 85
    :try_start_0
    const-string/jumbo v1, "monitorId"

    iget-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;->monitorId:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v2, "stack"

    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    iget-object v1, v1, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    iget-wide v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;->monitorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    iget-object v0, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    .line 65
    return-void
.end method
