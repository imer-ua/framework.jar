.class public final Landroid/os/statistics/MonitorSuperviser$SingleLockWait;
.super Landroid/os/statistics/MicroscopicEvent;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleLockWait"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/MonitorSuperviser$SingleLockWait$1;
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
            "Landroid/os/statistics/MonitorSuperviser$SingleLockWait;",
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
    .line 262
    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleLockWait$1;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleLockWait$1;-><init>()V

    .line 261
    sput-object v0, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    .line 149
    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    .line 233
    .local v0, "details":Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    .line 234
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 236
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 237
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    .line 238
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    .line 240
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;->monitorId:J

    .line 242
    iput-object p2, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    const/4 v1, 0x0

    .line 175
    instance-of v2, p1, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    if-nez v2, :cond_0

    .line 176
    return v1

    :cond_0
    move-object v0, p1

    .line 178
    nop

    nop

    .line 179
    .local v0, "singleLockHold":Landroid/os/statistics/MonitorSuperviser$SingleLockHold;
    iget v2, v0, Landroid/os/statistics/PerfEvent;->pid:I

    iget v3, p0, Landroid/os/statistics/PerfEvent;->pid:I

    if-ne v2, v3, :cond_1

    .line 180
    iget-wide v2, v0, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;->monitorId:J

    iget-wide v4, p0, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;->monitorId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 181
    iget-wide v2, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v4, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 182
    iget-wide v2, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v4, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    const/4 v1, 0x1

    .line 179
    :cond_1
    return v1
.end method

.method public isBlockedBySameProcess()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public isPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;->monitorId:J

    .line 212
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    .line 213
    .local v0, "details":Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;
    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "stackTrace":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "stackTrace":[Ljava/lang/String;
    :goto_0
    iput-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    .line 215
    iput-object v4, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    .line 208
    return-void

    .line 214
    .restart local v1    # "stackTrace":[Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    goto :goto_0
.end method

.method resolveLazyInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->isLazyInfoResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    return-void

    .line 251
    :cond_0
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    .line 252
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    .line 254
    .local v0, "details":Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;
    iget-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v1}, Landroid/os/statistics/JavaBackTrace;->resolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 255
    iget-object v2, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v2}, Landroid/os/statistics/JavaBackTrace;->resolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    .line 253
    invoke-static {v1, v2, v3}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    .line 258
    iput-object v3, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    .line 246
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 221
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    .line 223
    .local v0, "details":Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;
    :try_start_0
    const-string/jumbo v2, "monitorId"

    iget-wide v4, p0, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;->monitorId:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 224
    const-string/jumbo v2, "stack"

    iget-object v3, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    invoke-static {v3}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 203
    iget-wide v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;->monitorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 204
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    iget-object v0, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    .line 201
    return-void
.end method
