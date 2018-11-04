.class final Landroid/os/statistics/MemorySlowpath$1;
.super Ljava/lang/Object;
.source "MemorySlowpath.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MemorySlowpath;
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
        "Landroid/os/statistics/MemorySlowpath;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/MemorySlowpath;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 86
    new-instance v0, Landroid/os/statistics/MemorySlowpath;

    invoke-direct {v0}, Landroid/os/statistics/MemorySlowpath;-><init>()V

    .line 87
    .local v0, "object":Landroid/os/statistics/MemorySlowpath;
    invoke-virtual {v0, p1}, Landroid/os/statistics/MemorySlowpath;->readFromParcel(Landroid/os/Parcel;)V

    .line 88
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/os/statistics/MemorySlowpath$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/MemorySlowpath;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/statistics/MemorySlowpath;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 92
    new-array v0, p1, [Landroid/os/statistics/MemorySlowpath;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Landroid/os/statistics/MemorySlowpath$1;->newArray(I)[Landroid/os/statistics/MemorySlowpath;

    move-result-object v0

    return-object v0
.end method
