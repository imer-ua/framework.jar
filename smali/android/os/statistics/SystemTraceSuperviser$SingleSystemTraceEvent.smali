.class public Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;
.super Landroid/os/statistics/MicroscopicEvent;
.source "SystemTraceSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SystemTraceSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSystemTraceEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_TRACE_NAME:Ljava/lang/String; = "traceName"

.field private static final FIELD_TRACE_TAG:Ljava/lang/String; = "traceTag"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent$1;

    invoke-direct {v0}, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent$1;-><init>()V

    .line 127
    sput-object v0, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;

    invoke-direct {v0}, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;-><init>()V

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    .line 21
    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;

    .line 99
    .local v0, "details":Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    .line 100
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 102
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 103
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    .line 104
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    .line 106
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceTag:J

    .line 107
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceName:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceValue:Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBySameProcess()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public isPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 76
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;

    .line 77
    .local v0, "details":Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceTag:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "traceName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "traceName":Ljava/lang/String;
    :goto_0
    iput-object v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceName:Ljava/lang/String;

    .line 81
    iput-object v4, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceValue:Ljava/lang/Object;

    .line 74
    return-void

    .line 79
    .restart local v1    # "traceName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method resolveLazyInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->isLazyInfoResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;

    .line 119
    .local v0, "details":Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    .line 120
    iget-object v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/os/statistics/PerfEvent$DetailFields;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceValue:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceName:Ljava/lang/String;

    .line 124
    :cond_1
    iput-object v3, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceValue:Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 87
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;

    .line 89
    .local v0, "details":Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;
    :try_start_0
    const-string/jumbo v2, "traceTag"

    iget-wide v4, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceTag:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    const-string/jumbo v2, "traceName"

    iget-object v3, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;

    .line 69
    .local v0, "details":Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;
    iget-wide v2, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceTag:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-object v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method
