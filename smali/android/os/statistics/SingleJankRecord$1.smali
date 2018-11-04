.class final Landroid/os/statistics/SingleJankRecord$1;
.super Ljava/lang/Object;
.source "SingleJankRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SingleJankRecord;
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
        "Landroid/os/statistics/SingleJankRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/SingleJankRecord;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 135
    new-instance v0, Landroid/os/statistics/SingleJankRecord;

    invoke-direct {v0}, Landroid/os/statistics/SingleJankRecord;-><init>()V

    .line 136
    .local v0, "object":Landroid/os/statistics/SingleJankRecord;
    invoke-virtual {v0, p1}, Landroid/os/statistics/SingleJankRecord;->readFromParcel(Landroid/os/Parcel;)V

    .line 137
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Landroid/os/statistics/SingleJankRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/SingleJankRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/statistics/SingleJankRecord;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 141
    new-array v0, p1, [Landroid/os/statistics/SingleJankRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Landroid/os/statistics/SingleJankRecord$1;->newArray(I)[Landroid/os/statistics/SingleJankRecord;

    move-result-object v0

    return-object v0
.end method
