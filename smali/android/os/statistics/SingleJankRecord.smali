.class public Landroid/os/statistics/SingleJankRecord;
.super Landroid/os/statistics/MacroscopicEvent;
.source "SingleJankRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/SingleJankRecord$1;,
        Landroid/os/statistics/SingleJankRecord$JankRecordFields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MacroscopicEvent",
        "<",
        "Landroid/os/statistics/SingleJankRecord$JankRecordFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/SingleJankRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_APP_CAUSE:Ljava/lang/String; = "appCause"

.field private static final FIELD_BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field private static final FIELD_BATTERY_TEMP:Ljava/lang/String; = "batteryTemperature"

.field private static final FIELD_CHARGING:Ljava/lang/String; = "isCharging"

.field private static final FIELD_CONCLUSION:Ljava/lang/String; = "conclusion"

.field private static final FIELD_MAX_FRAME_DURATION:Ljava/lang/String; = "maxFrameDuration"

.field private static final FIELD_NUM_FRAMES:Ljava/lang/String; = "numFrames"

.field private static final FIELD_RECEIVED_CURRENT_TIME:Ljava/lang/String; = "receivedCurrentTime"

.field private static final FIELD_RECEIVED_UPTIME:Ljava/lang/String; = "receivedUptime"

.field private static final FIELD_RENDER_THREAD_ID:Ljava/lang/String; = "renderThreadTid"

.field private static final FIELD_SYS_CAUSE:Ljava/lang/String; = "sysCause"

.field private static final FIELD_TOTAL_DURATION:Ljava/lang/String; = "totalDuration"

.field private static final FIELD_WINDOW_NAME:Ljava/lang/String; = "windowName"


# instance fields
.field public maxFrameDuration:J

.field public numFrames:J

.field public renderThreadTid:I

.field public totalDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Landroid/os/statistics/SingleJankRecord$1;

    invoke-direct {v0}, Landroid/os/statistics/SingleJankRecord$1;-><init>()V

    .line 131
    sput-object v0, Landroid/os/statistics/SingleJankRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;

    invoke-direct {v0}, Landroid/os/statistics/SingleJankRecord$JankRecordFields;-><init>()V

    const v1, 0x10002

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MacroscopicEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    .line 34
    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 0
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 104
    return-void
.end method

.method public getBeginUptimeMillis()J
    .locals 4

    .prologue
    .line 123
    iget-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    iget-wide v2, p0, Landroid/os/statistics/SingleJankRecord;->totalDuration:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getEndUptimeMillis()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    return-wide v0
.end method

.method isConcerned()Z
    .locals 4

    .prologue
    .line 114
    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord;->maxFrameDuration:J

    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 115
    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord;->totalDuration:J

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord;->maxFrameDuration:J

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord;->totalDuration:J

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 116
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isUserPerceptible()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method occursInCurrentProcess()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 60
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;

    .line 61
    .local v0, "details":Landroid/os/statistics/SingleJankRecord$JankRecordFields;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/SingleJankRecord;->renderThreadTid:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord;->totalDuration:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord;->maxFrameDuration:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedUptimeMillis:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedCurrentTimeMillis:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->isCharging:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryLevel:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryTemperature:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord;->numFrames:J

    .line 58
    return-void

    .line 70
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 80
    :try_start_0
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;

    .line 81
    .local v0, "details":Landroid/os/statistics/SingleJankRecord$JankRecordFields;
    const-string/jumbo v2, "renderThreadTid"

    iget v3, p0, Landroid/os/statistics/SingleJankRecord;->renderThreadTid:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v2, "windowName"

    iget-object v3, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v2, "appCause"

    iget-object v3, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v2, "sysCause"

    iget-object v3, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v2, "conclusion"

    iget-object v3, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v2, "totalDuration"

    iget-wide v4, p0, Landroid/os/statistics/SingleJankRecord;->totalDuration:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v2, "maxFrameDuration"

    iget-wide v4, p0, Landroid/os/statistics/SingleJankRecord;->maxFrameDuration:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v2, "receivedUptime"

    iget-wide v4, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedUptimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v2, "receivedCurrentTime"

    iget-wide v4, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedCurrentTimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    const-string/jumbo v2, "isCharging"

    iget-boolean v3, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->isCharging:Z

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v2, "batteryLevel"

    iget v3, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryLevel:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    const-string/jumbo v2, "batteryTemperature"

    iget v3, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryTemperature:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v2, "numFrames"

    iget-wide v4, p0, Landroid/os/statistics/SingleJankRecord;->numFrames:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "details":Landroid/os/statistics/SingleJankRecord$JankRecordFields;
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MacroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 41
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;

    .line 42
    .local v0, "details":Landroid/os/statistics/SingleJankRecord$JankRecordFields;
    iget v1, p0, Landroid/os/statistics/SingleJankRecord;->renderThreadTid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-wide v2, p0, Landroid/os/statistics/SingleJankRecord;->totalDuration:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 48
    iget-wide v2, p0, Landroid/os/statistics/SingleJankRecord;->maxFrameDuration:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-wide v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedUptimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget-wide v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedCurrentTimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget-boolean v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->isCharging:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryLevel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryTemperature:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-wide v2, p0, Landroid/os/statistics/SingleJankRecord;->numFrames:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    return-void

    .line 51
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
