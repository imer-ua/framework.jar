.class final Lmiui/contentcatcher/sdk/data/PageConfig$1;
.super Ljava/lang/Object;
.source "PageConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/data/PageConfig;
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
        "Lmiui/contentcatcher/sdk/data/PageConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lmiui/contentcatcher/sdk/data/PageConfig$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/contentcatcher/sdk/data/PageConfig;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/contentcatcher/sdk/data/PageConfig;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 58
    new-instance v0, Lmiui/contentcatcher/sdk/data/PageConfig;

    invoke-direct {v0, p1}, Lmiui/contentcatcher/sdk/data/PageConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lmiui/contentcatcher/sdk/data/PageConfig$1;->newArray(I)[Lmiui/contentcatcher/sdk/data/PageConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/contentcatcher/sdk/data/PageConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 63
    new-array v0, p1, [Lmiui/contentcatcher/sdk/data/PageConfig;

    return-object v0
.end method
