.class final Lmiui/contentcatcher/sdk/Content$1;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/Content;
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
        "Lmiui/contentcatcher/sdk/Content;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lmiui/contentcatcher/sdk/Content$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/contentcatcher/sdk/Content;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/contentcatcher/sdk/Content;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 82
    new-instance v0, Lmiui/contentcatcher/sdk/Content;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/contentcatcher/sdk/Content;-><init>(Landroid/os/Parcel;Lmiui/contentcatcher/sdk/Content;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lmiui/contentcatcher/sdk/Content$1;->newArray(I)[Lmiui/contentcatcher/sdk/Content;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/contentcatcher/sdk/Content;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 86
    new-array v0, p1, [Lmiui/contentcatcher/sdk/Content;

    return-object v0
.end method
