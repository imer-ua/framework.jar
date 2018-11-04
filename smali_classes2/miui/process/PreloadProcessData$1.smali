.class final Lmiui/process/PreloadProcessData$1;
.super Ljava/lang/Object;
.source "PreloadProcessData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/process/PreloadProcessData;
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
        "Lmiui/process/PreloadProcessData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lmiui/process/PreloadProcessData$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/process/PreloadProcessData;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/process/PreloadProcessData;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    new-instance v0, Lmiui/process/PreloadProcessData;

    invoke-direct {v0, p1}, Lmiui/process/PreloadProcessData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lmiui/process/PreloadProcessData$1;->newArray(I)[Lmiui/process/PreloadProcessData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/process/PreloadProcessData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 48
    new-array v0, p1, [Lmiui/process/PreloadProcessData;

    return-object v0
.end method
