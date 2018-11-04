.class final Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage$1;
.super Ljava/lang/Object;
.source "LooperMessageSuperviser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;
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
        "Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 192
    new-instance v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;

    invoke-direct {v0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;-><init>()V

    .line 193
    .local v0, "object":Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;
    invoke-virtual {v0, p1}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 194
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 198
    new-array v0, p1, [Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage$1;->newArray(I)[Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;

    move-result-object v0

    return-object v0
.end method
