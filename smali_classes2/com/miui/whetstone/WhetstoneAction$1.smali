.class final Lcom/miui/whetstone/WhetstoneAction$1;
.super Ljava/lang/Object;
.source "WhetstoneAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/WhetstoneAction;
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
        "Lcom/miui/whetstone/WhetstoneAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/whetstone/WhetstoneAction;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 44
    new-instance v0, Lcom/miui/whetstone/WhetstoneAction;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/whetstone/WhetstoneAction;-><init>(Landroid/os/Parcel;Lcom/miui/whetstone/WhetstoneAction;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/WhetstoneAction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/whetstone/WhetstoneAction;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/whetstone/WhetstoneAction;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 49
    new-array v0, p1, [Lcom/miui/whetstone/WhetstoneAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/WhetstoneAction$1;->newArray(I)[Lcom/miui/whetstone/WhetstoneAction;

    move-result-object v0

    return-object v0
.end method
