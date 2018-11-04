.class final Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem$1;
.super Ljava/lang/Object;
.source "EventLogSuperviser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
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
        "Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 238
    new-instance v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    invoke-direct {v0}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;-><init>()V

    .line 239
    .local v0, "object":Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
    invoke-virtual {v0, p1}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 240
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 244
    new-array v0, p1, [Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem$1;->newArray(I)[Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    move-result-object v0

    return-object v0
.end method
