.class final Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent$1;
.super Ljava/lang/Object;
.source "SystemTraceSuperviser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 131
    new-instance v0, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;

    invoke-direct {v0}, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;-><init>()V

    .line 132
    .local v0, "object":Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;
    invoke-virtual {v0, p1}, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 133
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 137
    new-array v0, p1, [Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent$1;->newArray(I)[Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;

    move-result-object v0

    return-object v0
.end method
