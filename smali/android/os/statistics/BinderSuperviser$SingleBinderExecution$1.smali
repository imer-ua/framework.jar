.class final Landroid/os/statistics/BinderSuperviser$SingleBinderExecution$1;
.super Ljava/lang/Object;
.source "BinderSuperviser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;
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
        "Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 425
    new-instance v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;

    invoke-direct {v0}, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;-><init>()V

    .line 426
    .local v0, "object":Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;
    invoke-virtual {v0, p1}, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->readFromParcel(Landroid/os/Parcel;)V

    .line 427
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 424
    invoke-virtual {p0, p1}, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 431
    new-array v0, p1, [Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution$1;->newArray(I)[Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;

    move-result-object v0

    return-object v0
.end method
