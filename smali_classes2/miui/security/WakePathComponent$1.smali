.class final Lmiui/security/WakePathComponent$1;
.super Ljava/lang/Object;
.source "WakePathComponent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/WakePathComponent;
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
        "Lmiui/security/WakePathComponent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lmiui/security/WakePathComponent$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/security/WakePathComponent;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/security/WakePathComponent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 49
    new-instance v0, Lmiui/security/WakePathComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/security/WakePathComponent;-><init>(Landroid/os/Parcel;Lmiui/security/WakePathComponent;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lmiui/security/WakePathComponent$1;->newArray(I)[Lmiui/security/WakePathComponent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/security/WakePathComponent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 53
    new-array v0, p1, [Lmiui/security/WakePathComponent;

    return-object v0
.end method
