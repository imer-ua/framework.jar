.class final Lmiui/process/RunningProcessInfo$1;
.super Ljava/lang/Object;
.source "RunningProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/process/RunningProcessInfo;
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
        "Lmiui/process/RunningProcessInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lmiui/process/RunningProcessInfo$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/process/RunningProcessInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/process/RunningProcessInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    new-instance v0, Lmiui/process/RunningProcessInfo;

    invoke-direct {v0, p1}, Lmiui/process/RunningProcessInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lmiui/process/RunningProcessInfo$1;->newArray(I)[Lmiui/process/RunningProcessInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/process/RunningProcessInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 60
    new-array v0, p1, [Lmiui/process/RunningProcessInfo;

    return-object v0
.end method
