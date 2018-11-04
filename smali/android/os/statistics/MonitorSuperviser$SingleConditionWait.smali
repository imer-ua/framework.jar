.class public final Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;
.super Landroid/os/statistics/MicroscopicEvent;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleConditionWait"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;
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
.field public static final COMDITION_AWAKEN_INTERRUPTED:I = 0x2

.field public static final COMDITION_AWAKEN_TIMEDOUT:I = 0x1

.field public static final CONDITION_AWAKEN_NOTIFIED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_AWAKEN_REASON:Ljava/lang/String; = "awakenReason"

.field private static final FIELD_MONITOR_ID:Ljava/lang/String; = "monitorId"

.field private static final FIELD_STACK:Ljava/lang/String; = "stack"


# instance fields
.field public awakenReason:I

.field public monitorId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 538
    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;-><init>()V

    .line 537
    sput-object v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 409
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 422
    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;-><init>()V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    .line 421
    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 507
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    .line 508
    .local v0, "details":Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    .line 509
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    .line 510
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 511
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 512
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    .line 513
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    .line 515
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->monitorId:J

    .line 516
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->awakenReason:I

    .line 518
    iput-object p2, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    .line 506
    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 432
    iget v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->awakenReason:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 447
    instance-of v3, p1, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;

    if-nez v3, :cond_0

    .line 448
    return v2

    :cond_0
    move-object v0, p1

    .line 450
    nop

    nop

    .line 451
    .local v0, "singleConditionAwaken":Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;
    iget v3, v0, Landroid/os/statistics/PerfEvent;->pid:I

    iget v4, p0, Landroid/os/statistics/PerfEvent;->pid:I

    if-ne v3, v4, :cond_3

    .line 452
    iget-wide v4, v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->monitorId:J

    iget-wide v6, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->monitorId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 453
    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    iget-wide v6, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3

    .line 454
    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v6, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 455
    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v6, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3

    .line 456
    iget v3, v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->peerThreadId:I

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->peerThreadId:I

    iget v4, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    if-ne v3, v4, :cond_2

    .line 451
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 456
    goto :goto_0

    :cond_3
    move v1, v2

    .line 451
    goto :goto_0
.end method

.method public isBlockedBySameProcess()Z
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public isPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 484
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->monitorId:J

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->awakenReason:I

    .line 487
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    .line 488
    .local v0, "details":Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;
    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "stackTrace":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "stackTrace":[Ljava/lang/String;
    :goto_0
    iput-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    .line 490
    iput-object v4, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    .line 483
    return-void

    .line 489
    .restart local v1    # "stackTrace":[Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    goto :goto_0
.end method

.method resolveLazyInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 523
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->isLazyInfoResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    return-void

    .line 527
    :cond_0
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    .line 528
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    .line 530
    .local v0, "details":Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;
    iget-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v1}, Landroid/os/statistics/JavaBackTrace;->resolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 531
    iget-object v2, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v2}, Landroid/os/statistics/JavaBackTrace;->resolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    .line 529
    invoke-static {v1, v2, v3}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    .line 534
    iput-object v3, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    .line 522
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 495
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 497
    :try_start_0
    const-string/jumbo v1, "monitorId"

    iget-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->monitorId:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 498
    const-string/jumbo v1, "awakenReason"

    iget v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->awakenReason:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 499
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

    .line 494
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 476
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 477
    iget-wide v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->monitorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 478
    iget v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->awakenReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    iget-object v0, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    .line 475
    return-void
.end method
