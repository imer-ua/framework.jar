.class final Landroid/os/statistics/InputEventSuperviser$SingleInputEvent$1;
.super Ljava/lang/Object;
.source "InputEventSuperviser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;
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
        "Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 209
    new-instance v0, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;

    invoke-direct {v0}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;-><init>()V

    .line 210
    .local v0, "object":Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;
    invoke-virtual {v0, p1}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 211
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 215
    new-array v0, p1, [Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent$1;->newArray(I)[Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;

    move-result-object v0

    return-object v0
.end method
