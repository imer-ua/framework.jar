.class final Landroid/os/statistics/PerfTracer$SingleTracePoint$1;
.super Ljava/lang/Object;
.source "PerfTracer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfTracer$SingleTracePoint;
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
        "Landroid/os/statistics/PerfTracer$SingleTracePoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/PerfTracer$SingleTracePoint;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 156
    new-instance v0, Landroid/os/statistics/PerfTracer$SingleTracePoint;

    invoke-direct {v0}, Landroid/os/statistics/PerfTracer$SingleTracePoint;-><init>()V

    .line 157
    .local v0, "object":Landroid/os/statistics/PerfTracer$SingleTracePoint;
    invoke-virtual {v0, p1}, Landroid/os/statistics/PerfTracer$SingleTracePoint;->readFromParcel(Landroid/os/Parcel;)V

    .line 158
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Landroid/os/statistics/PerfTracer$SingleTracePoint$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/PerfTracer$SingleTracePoint;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/statistics/PerfTracer$SingleTracePoint;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 162
    new-array v0, p1, [Landroid/os/statistics/PerfTracer$SingleTracePoint;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Landroid/os/statistics/PerfTracer$SingleTracePoint$1;->newArray(I)[Landroid/os/statistics/PerfTracer$SingleTracePoint;

    move-result-object v0

    return-object v0
.end method
