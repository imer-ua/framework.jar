.class final Landroid/os/statistics/SingleJniMethod$1;
.super Ljava/lang/Object;
.source "SingleJniMethod.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SingleJniMethod;
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
        "Landroid/os/statistics/SingleJniMethod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/SingleJniMethod;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 136
    new-instance v0, Landroid/os/statistics/SingleJniMethod;

    invoke-direct {v0}, Landroid/os/statistics/SingleJniMethod;-><init>()V

    .line 137
    .local v0, "object":Landroid/os/statistics/SingleJniMethod;
    invoke-virtual {v0, p1}, Landroid/os/statistics/SingleJniMethod;->readFromParcel(Landroid/os/Parcel;)V

    .line 138
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Landroid/os/statistics/SingleJniMethod$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/SingleJniMethod;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/statistics/SingleJniMethod;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 142
    new-array v0, p1, [Landroid/os/statistics/SingleJniMethod;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Landroid/os/statistics/SingleJniMethod$1;->newArray(I)[Landroid/os/statistics/SingleJniMethod;

    move-result-object v0

    return-object v0
.end method
