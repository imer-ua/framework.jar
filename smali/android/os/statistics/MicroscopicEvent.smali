.class public abstract Landroid/os/statistics/MicroscopicEvent;
.super Landroid/os/statistics/PerfEvent;
.source "MicroscopicEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/statistics/MicroscopicEvent$MicroEventFields;",
        ">",
        "Landroid/os/statistics/PerfEvent",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final FLAG_INITIATOR_POSITION_MASK:I = 0x3

.field public static final FLAG_INITIATOR_POSITION_MASTER:I = 0x1

.field public static final FLAG_INITIATOR_POSITION_SLAVE:I = 0x2

.field public static final FLAG_INITIATOR_POSITION_UNKNOWN:I = 0x0

.field public static final SCHED_POLICY_UNKNOWN:I = -0x1


# instance fields
.field public beginUptimeMillis:J

.field public endUptimeMillis:J

.field public eventFlags:I

.field matchedPeerBlockingDuration:J

.field public threadId:I


# direct methods
.method constructor <init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V
    .locals 0
    .param p1, "_eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Landroid/os/statistics/MicroscopicEvent;, "Landroid/os/statistics/MicroscopicEvent<TT;>;"
    .local p2, "_fields":Landroid/os/statistics/MicroscopicEvent$MicroEventFields;, "TT;"
    invoke-direct {p0, p1, p2}, Landroid/os/statistics/PerfEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getBeginUptimeMillis()J
    .locals 2

    .prologue
    .line 34
    .local p0, "this":Landroid/os/statistics/MicroscopicEvent;, "Landroid/os/statistics/MicroscopicEvent<TT;>;"
    iget-wide v0, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    return-wide v0
.end method

.method public getEndUptimeMillis()J
    .locals 2

    .prologue
    .line 39
    .local p0, "this":Landroid/os/statistics/MicroscopicEvent;, "Landroid/os/statistics/MicroscopicEvent<TT;>;"
    iget-wide v0, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    return-wide v0
.end method

.method public abstract hasMultiplePeerBlockingEvents()Z
.end method

.method public hasNativeStack()Z
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Landroid/os/statistics/MicroscopicEvent;, "Landroid/os/statistics/MicroscopicEvent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract hasPeerBlockingEvent()Z
.end method

.method public abstract isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
.end method

.method public abstract isBlockedBySameProcess()Z
.end method

.method public abstract isBlockingMultiplePeer()Z
.end method

.method public abstract isBlockingSameProcess()Z
.end method

.method public isMasterEvent()Z
    .locals 2

    .prologue
    .local p0, "this":Landroid/os/statistics/MicroscopicEvent;, "Landroid/os/statistics/MicroscopicEvent<TT;>;"
    const/4 v0, 0x1

    .line 45
    iget v1, p0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isPeerBlockingEvent()Z
.end method

.method public abstract isRootEvent()Z
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 87
    .local p0, "this":Landroid/os/statistics/MicroscopicEvent;, "Landroid/os/statistics/MicroscopicEvent<TT;>;"
    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 93
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    .line 94
    .local v0, "details":Landroid/os/statistics/MicroscopicEvent$MicroEventFields;, "TT;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "threadName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "threadName":Ljava/lang/String;
    :goto_0
    iput-object v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedGroup:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runningTimeMs:J

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runnableTimeMs:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->sleepingTimeMs:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->endRealTimeMs:J

    .line 104
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->matchedPeerBlockingDuration:J

    .line 86
    return-void

    .line 95
    .restart local v1    # "threadName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 109
    .local p0, "this":Landroid/os/statistics/MicroscopicEvent;, "Landroid/os/statistics/MicroscopicEvent<TT;>;"
    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 111
    :try_start_0
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    .line 112
    .local v0, "details":Landroid/os/statistics/MicroscopicEvent$MicroEventFields;, "TT;"
    const-string/jumbo v2, "threadId"

    iget v3, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string/jumbo v2, "threadName"

    iget-object v3, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string/jumbo v2, "beginTime"

    iget-wide v4, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 115
    const-string/jumbo v2, "endTime"

    iget-wide v4, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 116
    const-string/jumbo v2, "policy"

    iget v3, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    const-string/jumbo v2, "priority"

    iget v3, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string/jumbo v2, "schedGroup"

    iget v3, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedGroup:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    const-string/jumbo v2, "runningTime"

    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runningTimeMs:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v2, "runnableTime"

    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runnableTimeMs:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 121
    const-string/jumbo v2, "sleepingTime"

    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->sleepingTimeMs:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 122
    const-string/jumbo v2, "endRealTime"

    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->endRealTimeMs:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    const-string/jumbo v2, "eventFlags"

    iget v3, p0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "details":Landroid/os/statistics/MicroscopicEvent$MicroEventFields;, "TT;"
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    .local p0, "this":Landroid/os/statistics/MicroscopicEvent;, "Landroid/os/statistics/MicroscopicEvent<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/os/statistics/PerfEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    iget v1, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v1, p0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    .line 75
    .local v0, "details":Landroid/os/statistics/MicroscopicEvent$MicroEventFields;, "TT;"
    iget-object v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedGroup:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runningTimeMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runnableTimeMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->sleepingTimeMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->endRealTimeMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    return-void
.end method
