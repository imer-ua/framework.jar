.class public Landroid/os/statistics/BinderSuperviser$BinderStarvation;
.super Landroid/os/statistics/MacroscopicEvent;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderStarvation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/BinderSuperviser$BinderStarvation$1;
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
            "Landroid/os/statistics/BinderSuperviser$BinderStarvation;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_THREADS:Ljava/lang/String; = "maxThreads"

.field private static final FIELD_STARVATION_TIME_MS:Ljava/lang/String; = "starvationTimeMs"


# instance fields
.field public maxThreads:I

.field public starvationTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Landroid/os/statistics/BinderSuperviser$BinderStarvation$1;

    invoke-direct {v0}, Landroid/os/statistics/BinderSuperviser$BinderStarvation$1;-><init>()V

    .line 80
    sput-object v0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-direct {v0}, Landroid/os/statistics/PerfEvent$DetailFields;-><init>()V

    const v1, 0x10004

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MacroscopicEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    .line 44
    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 2
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    .line 76
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->maxThreads:I

    .line 77
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->starvationTimeMs:J

    .line 74
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->maxThreads:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->starvationTimeMs:J

    .line 56
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 66
    :try_start_0
    const-string/jumbo v1, "maxThreads"

    iget v2, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->maxThreads:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    const-string/jumbo v1, "starvationTimeMs"

    iget-wide v2, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->starvationTimeMs:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MacroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 51
    iget v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->maxThreads:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-wide v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvation;->starvationTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    return-void
.end method
