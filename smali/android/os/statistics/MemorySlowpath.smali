.class public Landroid/os/statistics/MemorySlowpath;
.super Landroid/os/statistics/MacroscopicEvent;
.source "MemorySlowpath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/MemorySlowpath$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MacroscopicEvent",
        "<",
        "Landroid/os/statistics/PerfEvent$DetailFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/MemorySlowpath;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_BEGIN_COUNT:Ljava/lang/String; = "beginCount"

.field private static final FIELD_BEGIN_TOTAL_DURATION_MS:Ljava/lang/String; = "beginTotalDuration"

.field private static final FIELD_END_COUNT:Ljava/lang/String; = "endCount"

.field private static final FIELD_END_TOTAL_DURATION_MS:Ljava/lang/String; = "endTotalDuration"


# instance fields
.field public beginCount:J

.field public beginTotalDurationMillis:J

.field public beginUptimeMillis:J

.field public endCount:J

.field public endTotalDurationMillis:J

.field public endUptimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Landroid/os/statistics/MemorySlowpath$1;

    invoke-direct {v0}, Landroid/os/statistics/MemorySlowpath$1;-><init>()V

    .line 82
    sput-object v0, Landroid/os/statistics/MemorySlowpath;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-direct {v0}, Landroid/os/statistics/PerfEvent$DetailFields;-><init>()V

    const v1, 0x10006

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MacroscopicEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    .line 25
    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 2
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginUptimeMillis:J

    .line 69
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endUptimeMillis:J

    .line 70
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginCount:J

    .line 71
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginTotalDurationMillis:J

    .line 72
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endCount:J

    .line 73
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endTotalDurationMillis:J

    .line 74
    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endUptimeMillis:J

    iput-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    .line 67
    return-void
.end method

.method isConcerned()Z
    .locals 4

    .prologue
    .line 79
    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endUptimeMillis:J

    iget-wide v2, p0, Landroid/os/statistics/MemorySlowpath;->beginUptimeMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginUptimeMillis:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endUptimeMillis:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginCount:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginTotalDurationMillis:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endCount:J

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endTotalDurationMillis:J

    .line 41
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 55
    :try_start_0
    const-string/jumbo v1, "beginTime"

    iget-wide v2, p0, Landroid/os/statistics/MemorySlowpath;->beginUptimeMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v1, "endTime"

    iget-wide v2, p0, Landroid/os/statistics/MemorySlowpath;->endUptimeMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v1, "beginCount"

    iget-wide v2, p0, Landroid/os/statistics/MemorySlowpath;->beginCount:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v1, "beginTotalDuration"

    iget-wide v2, p0, Landroid/os/statistics/MemorySlowpath;->beginTotalDurationMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v1, "endCount"

    iget-wide v2, p0, Landroid/os/statistics/MemorySlowpath;->endCount:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    const-string/jumbo v1, "endTotalDuration"

    iget-wide v2, p0, Landroid/os/statistics/MemorySlowpath;->endTotalDurationMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MacroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 33
    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginTotalDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endTotalDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    return-void
.end method
