.class final Lcom/miui/enterprise/signature/EnterpriseCer$1;
.super Ljava/lang/Object;
.source "EnterpriseCer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/signature/EnterpriseCer;
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
        "Lcom/miui/enterprise/signature/EnterpriseCer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/enterprise/signature/EnterpriseCer;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 160
    new-instance v0, Lcom/miui/enterprise/signature/EnterpriseCer;

    invoke-direct {v0, p1}, Lcom/miui/enterprise/signature/EnterpriseCer;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/miui/enterprise/signature/EnterpriseCer$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/enterprise/signature/EnterpriseCer;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/enterprise/signature/EnterpriseCer;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 165
    new-array v0, p1, [Lcom/miui/enterprise/signature/EnterpriseCer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/miui/enterprise/signature/EnterpriseCer$1;->newArray(I)[Lcom/miui/enterprise/signature/EnterpriseCer;

    move-result-object v0

    return-object v0
.end method
