.class final Lmiui/contentcatcher/sdk/DecorateContentParam$1;
.super Ljava/lang/Object;
.source "DecorateContentParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/DecorateContentParam;
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
        "Lmiui/contentcatcher/sdk/DecorateContentParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lmiui/contentcatcher/sdk/DecorateContentParam$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/contentcatcher/sdk/DecorateContentParam;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/contentcatcher/sdk/DecorateContentParam;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 22
    new-instance v0, Lmiui/contentcatcher/sdk/DecorateContentParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/contentcatcher/sdk/DecorateContentParam;-><init>(Landroid/os/Parcel;Lmiui/contentcatcher/sdk/DecorateContentParam;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lmiui/contentcatcher/sdk/DecorateContentParam$1;->newArray(I)[Lmiui/contentcatcher/sdk/DecorateContentParam;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/contentcatcher/sdk/DecorateContentParam;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 26
    new-array v0, p1, [Lmiui/contentcatcher/sdk/DecorateContentParam;

    return-object v0
.end method
