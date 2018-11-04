.class final Lcom/xiaomi/joyose/Step$1;
.super Ljava/lang/Object;
.source "Step.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/joyose/Step;
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
        "Lcom/xiaomi/joyose/Step;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/joyose/Step;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 55
    new-instance v0, Lcom/xiaomi/joyose/Step;

    invoke-direct {v0, p1}, Lcom/xiaomi/joyose/Step;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/xiaomi/joyose/Step$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/joyose/Step;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/xiaomi/joyose/Step;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 50
    new-array v0, p1, [Lcom/xiaomi/joyose/Step;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/xiaomi/joyose/Step$1;->newArray(I)[Lcom/xiaomi/joyose/Step;

    move-result-object v0

    return-object v0
.end method
