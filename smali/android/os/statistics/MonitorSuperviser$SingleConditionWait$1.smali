.class final Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;
.super Ljava/lang/Object;
.source "MonitorSuperviser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;
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
        "Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 541
    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;-><init>()V

    .line 542
    .local v0, "object":Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;
    invoke-virtual {v0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->readFromParcel(Landroid/os/Parcel;)V

    .line 543
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 547
    new-array v0, p1, [Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;->newArray(I)[Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    move-result-object v0

    return-object v0
.end method
