.class public abstract Landroid/os/statistics/MacroscopicEvent;
.super Landroid/os/statistics/PerfEvent;
.source "MacroscopicEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/statistics/PerfEvent$DetailFields;",
        ">",
        "Landroid/os/statistics/PerfEvent",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public occurUptimeMillis:J


# direct methods
.method public constructor <init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V
    .locals 0
    .param p1, "_eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Landroid/os/statistics/MacroscopicEvent;, "Landroid/os/statistics/MacroscopicEvent<TT;>;"
    .local p2, "_fields":Landroid/os/statistics/PerfEvent$DetailFields;, "TT;"
    invoke-direct {p0, p1, p2}, Landroid/os/statistics/PerfEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getBeginUptimeMillis()J
    .locals 2

    .prologue
    .line 23
    .local p0, "this":Landroid/os/statistics/MacroscopicEvent;, "Landroid/os/statistics/MacroscopicEvent<TT;>;"
    iget-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    return-wide v0
.end method

.method public getEndUptimeMillis()J
    .locals 2

    .prologue
    .line 28
    .local p0, "this":Landroid/os/statistics/MacroscopicEvent;, "Landroid/os/statistics/MacroscopicEvent<TT;>;"
    iget-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 39
    .local p0, "this":Landroid/os/statistics/MacroscopicEvent;, "Landroid/os/statistics/MacroscopicEvent<TT;>;"
    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    .line 38
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    .local p0, "this":Landroid/os/statistics/MacroscopicEvent;, "Landroid/os/statistics/MacroscopicEvent<TT;>;"
    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 47
    :try_start_0
    const-string/jumbo v1, "occurTime"

    iget-wide v2, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 33
    .local p0, "this":Landroid/os/statistics/MacroscopicEvent;, "Landroid/os/statistics/MacroscopicEvent<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/os/statistics/PerfEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 34
    iget-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    return-void
.end method
