.class final Lmiui/process/ProcessConfig$1;
.super Ljava/lang/Object;
.source "ProcessConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/process/ProcessConfig;
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
        "Lmiui/process/ProcessConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lmiui/process/ProcessConfig$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/process/ProcessConfig;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/process/ProcessConfig;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 340
    new-instance v0, Lmiui/process/ProcessConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/process/ProcessConfig;-><init>(Landroid/os/Parcel;Lmiui/process/ProcessConfig;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lmiui/process/ProcessConfig$1;->newArray(I)[Lmiui/process/ProcessConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/process/ProcessConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 344
    new-array v0, p1, [Lmiui/process/ProcessConfig;

    return-object v0
.end method
