.class final Lcom/miui/enterprise/sdk/APNConfig$1;
.super Ljava/lang/Object;
.source "APNConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/sdk/APNConfig;
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
        "Lcom/miui/enterprise/sdk/APNConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/enterprise/sdk/APNConfig;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 130
    new-instance v0, Lcom/miui/enterprise/sdk/APNConfig;

    invoke-direct {v0, p1}, Lcom/miui/enterprise/sdk/APNConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/miui/enterprise/sdk/APNConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/enterprise/sdk/APNConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/enterprise/sdk/APNConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 135
    new-array v0, p1, [Lcom/miui/enterprise/sdk/APNConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/miui/enterprise/sdk/APNConfig$1;->newArray(I)[Lcom/miui/enterprise/sdk/APNConfig;

    move-result-object v0

    return-object v0
.end method