.class public final Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;
.super Landroid/os/statistics/MicroscopicEvent;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleConditionAwaken"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken$1;
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
            "Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MONITOR_ID:Ljava/lang/String; = "monitorId"

.field private static final FIELD_PEER_THREAD_ID:Ljava/lang/String; = "peerThreadId"

.field private static final FIELD_STACK:Ljava/lang/String; = "stack"


# instance fields
.field public monitorId:J

.field public peerThreadId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 395
    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken$1;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken$1;-><init>()V

    .line 394
    sput-object v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 276
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 285
    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;-><init>()V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    .line 284
    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 361
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    .line 362
    .local v0, "details":Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    .line 363
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 365
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 366
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    .line 367
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    .line 368
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedGroup:I

    .line 369
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runningTimeMs:J

    .line 370
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runnableTimeMs:J

    .line 371
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->sleepingTimeMs:J

    .line 372
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->monitorId:J

    .line 373
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->peerThreadId:I

    .line 375
    iput-object p2, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    .line 360
    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBySameProcess()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public isBlockingSameProcess()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public isPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public isRootEvent()Z
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 338
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->monitorId:J

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->peerThreadId:I

    .line 341
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    .line 342
    .local v0, "details":Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;
    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "stackTrace":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "stackTrace":[Ljava/lang/String;
    :goto_0
    iput-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    .line 344
    iput-object v4, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    .line 337
    return-void

    .line 343
    .restart local v1    # "stackTrace":[Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    goto :goto_0
.end method

.method resolveLazyInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 380
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->isLazyInfoResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    return-void

    .line 384
    :cond_0
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    .line 385
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    .line 387
    .local v0, "details":Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;
    iget-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v1}, Landroid/os/statistics/JavaBackTrace;->resolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 388
    iget-object v2, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v2}, Landroid/os/statistics/JavaBackTrace;->resolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    .line 386
    invoke-static {v1, v2, v3}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    .line 391
    iput-object v3, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    .line 379
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 351
    :try_start_0
    const-string/jumbo v1, "monitorId"

    iget-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->monitorId:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 352
    const-string/jumbo v1, "peerThreadId"

    iget v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->peerThreadId:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 353
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

    .line 348
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 330
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 331
    iget-wide v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->monitorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 332
    iget v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->peerThreadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    iget-object v0, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    .line 329
    return-void
.end method
