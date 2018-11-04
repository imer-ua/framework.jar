.class final Lmiui/contentcatcher/sdk/data/FeatureInfo$1;
.super Ljava/lang/Object;
.source "FeatureInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/data/FeatureInfo;
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
        "Lmiui/contentcatcher/sdk/data/FeatureInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lmiui/contentcatcher/sdk/data/FeatureInfo$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/contentcatcher/sdk/data/FeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/contentcatcher/sdk/data/FeatureInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 123
    new-instance v0, Lmiui/contentcatcher/sdk/data/FeatureInfo;

    invoke-direct {v0, p1}, Lmiui/contentcatcher/sdk/data/FeatureInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lmiui/contentcatcher/sdk/data/FeatureInfo$1;->newArray(I)[Lmiui/contentcatcher/sdk/data/FeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/contentcatcher/sdk/data/FeatureInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 128
    new-array v0, p1, [Lmiui/contentcatcher/sdk/data/FeatureInfo;

    return-object v0
.end method
