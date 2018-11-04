.class final Landroid/os/statistics/LooperOnce$1;
.super Ljava/lang/Object;
.source "LooperOnce.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/LooperOnce;
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
        "Landroid/os/statistics/LooperOnce;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/LooperOnce;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 85
    new-instance v0, Landroid/os/statistics/LooperOnce;

    invoke-direct {v0}, Landroid/os/statistics/LooperOnce;-><init>()V

    .line 86
    .local v0, "object":Landroid/os/statistics/LooperOnce;
    invoke-virtual {v0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 87
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/os/statistics/LooperOnce$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/LooperOnce;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/statistics/LooperOnce;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 91
    new-array v0, p1, [Landroid/os/statistics/LooperOnce;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Landroid/os/statistics/LooperOnce$1;->newArray(I)[Landroid/os/statistics/LooperOnce;

    move-result-object v0

    return-object v0
.end method
