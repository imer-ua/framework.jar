.class final Lmiui/mqsas/sdk/event/WatchdogEvent$1;
.super Ljava/lang/Object;
.source "WatchdogEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/sdk/event/WatchdogEvent;
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
        "Lmiui/mqsas/sdk/event/WatchdogEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lmiui/mqsas/sdk/event/WatchdogEvent$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/mqsas/sdk/event/WatchdogEvent;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/mqsas/sdk/event/WatchdogEvent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    new-instance v0, Lmiui/mqsas/sdk/event/WatchdogEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/mqsas/sdk/event/WatchdogEvent;-><init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/WatchdogEvent;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lmiui/mqsas/sdk/event/WatchdogEvent$1;->newArray(I)[Lmiui/mqsas/sdk/event/WatchdogEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/mqsas/sdk/event/WatchdogEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 59
    new-array v0, p1, [Lmiui/mqsas/sdk/event/WatchdogEvent;

    return-object v0
.end method
