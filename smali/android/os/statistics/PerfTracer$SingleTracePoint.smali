.class public Landroid/os/statistics/PerfTracer$SingleTracePoint;
.super Landroid/os/statistics/MicroscopicEvent;
.source "PerfTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleTracePoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/PerfTracer$SingleTracePoint$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/PerfTracer$SingleTraceFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/PerfTracer$SingleTracePoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_LEVEL:Ljava/lang/String; = "level"

.field private static final FIELD_NUMBER_VALUE:Ljava/lang/String; = "numberValue"

.field private static final FIELD_REASON:Ljava/lang/String; = "reason"

.field private static final FIELD_TAG:Ljava/lang/String; = "tag"

.field private static final FIELD_TEXT_VALUE:Ljava/lang/String; = "textValue"


# instance fields
.field public level:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Landroid/os/statistics/PerfTracer$SingleTracePoint$1;

    invoke-direct {v0}, Landroid/os/statistics/PerfTracer$SingleTracePoint$1;-><init>()V

    .line 152
    sput-object v0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;

    invoke-direct {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;-><init>()V

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    .line 26
    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;

    .line 112
    .local v0, "details":Landroid/os/statistics/PerfTracer$SingleTraceFields;
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    .line 113
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 115
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 116
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v2

    iput v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    .line 117
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    .line 118
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedGroup:I

    .line 119
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runningTimeMs:J

    .line 120
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runnableTimeMs:J

    .line 121
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->sleepingTimeMs:J

    .line 122
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->endRealTimeMs:J

    .line 124
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->level:I

    .line 125
    iget v2, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->level:I

    if-nez v2, :cond_0

    .line 126
    const/4 v1, 0x1

    .line 125
    :cond_0
    iput v1, p0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    .line 128
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set0(Landroid/os/statistics/PerfTracer$SingleTraceFields;J)J

    .line 129
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set2(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set1(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBySameProcess()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public isPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 32
    iget v1, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->level:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUserPerceptible()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->level:I

    .line 84
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;

    .line 85
    .local v0, "details":Landroid/os/statistics/PerfTracer$SingleTraceFields;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "tag":Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "tag":Ljava/lang/String;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set2(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set0(Landroid/os/statistics/PerfTracer$SingleTraceFields;J)J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "textValue":Ljava/lang/String;
    if-eqz v2, :cond_1

    .end local v2    # "textValue":Ljava/lang/String;
    :goto_1
    invoke-static {v0, v2}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set3(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    invoke-static {v0, v6}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set1(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void

    .line 86
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    .line 89
    .end local v1    # "tag":Ljava/lang/String;
    .restart local v2    # "textValue":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1
.end method

.method resolveLazyInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->isLazyInfoResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    return-void

    .line 140
    :cond_0
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    .line 141
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;

    .line 142
    .local v0, "details":Landroid/os/statistics/PerfTracer$SingleTraceFields;
    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get1(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get1(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set3(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    invoke-static {v0, v2}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set1(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void

    .line 142
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;

    .line 99
    .local v0, "details":Landroid/os/statistics/PerfTracer$SingleTraceFields;
    const-string/jumbo v2, "level"

    iget v3, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->level:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v2, "reason"

    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get2(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v2, "tag"

    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get2(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v2, "numberValue"

    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get0(Landroid/os/statistics/PerfTracer$SingleTraceFields;)J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v2, "textValue"

    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get3(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "details":Landroid/os/statistics/PerfTracer$SingleTraceFields;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    iget v1, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->level:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;

    .line 75
    .local v0, "details":Landroid/os/statistics/PerfTracer$SingleTraceFields;
    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get2(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get0(Landroid/os/statistics/PerfTracer$SingleTraceFields;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get3(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return-void
.end method
