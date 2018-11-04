.class public Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;
.super Landroid/os/statistics/MicroscopicEvent;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleBinderExecution"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/BinderSuperviser$SingleBinderExecution$1;
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
            "Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_CALLING_PID:Ljava/lang/String; = "callingPid"

.field private static final FIELD_CALLING_UID:Ljava/lang/String; = "callingUid"

.field private static final FIELD_CODE:Ljava/lang/String; = "code"

.field private static final FIELD_INTERFACE_DESCRIPTOR:Ljava/lang/String; = "interface"


# instance fields
.field public callingPid:I

.field public callingUid:I

.field public code:I

.field public interfaceDescriptor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 422
    new-instance v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution$1;

    invoke-direct {v0}, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution$1;-><init>()V

    .line 421
    sput-object v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 302
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 314
    new-instance v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    invoke-direct {v0}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>()V

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    .line 315
    const/4 v0, 0x2

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    .line 313
    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    .line 395
    .local v1, "details":Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    .line 396
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 398
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 399
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v2

    iput v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    .line 400
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    .line 401
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedGroup:I

    .line 402
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runningTimeMs:J

    .line 403
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runnableTimeMs:J

    .line 404
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->sleepingTimeMs:J

    .line 405
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->endRealTimeMs:J

    .line 407
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 408
    .local v0, "binder":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    .line 409
    if-eqz v0, :cond_0

    .line 410
    invoke-static {v0}, Landroid/os/statistics/BinderSuperviser;->-wrap0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    .line 412
    :cond_0
    iget-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 413
    const-string/jumbo v2, ""

    iput-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    .line 416
    :cond_1
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->code:I

    .line 417
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingPid:I

    .line 418
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingUid:I

    .line 393
    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBySameProcess()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public isPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public isRootEvent()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    .line 371
    iget-object v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 372
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    .line 374
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->code:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingPid:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingUid:I

    .line 368
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 383
    :try_start_0
    const-string/jumbo v1, "interface"

    iget-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string/jumbo v1, "code"

    iget v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->code:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 385
    const-string/jumbo v1, "callingPid"

    iget v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingPid:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 386
    const-string/jumbo v1, "callingUid"

    iget v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingUid:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 360
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 361
    iget-object v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    return-void
.end method
