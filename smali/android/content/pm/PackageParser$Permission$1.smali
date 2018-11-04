.class final Landroid/content/pm/PackageParser$Permission$1;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser$Permission;
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
        "Landroid/content/pm/PackageParser$Permission;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageParser$Permission;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 5997
    new-instance v0, Landroid/content/pm/PackageParser$Permission;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/os/Parcel;Landroid/content/pm/PackageParser$Permission;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 5996
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Permission$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/PackageParser$Permission;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 6001
    new-array v0, p1, [Landroid/content/pm/PackageParser$Permission;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 6000
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Permission$1;->newArray(I)[Landroid/content/pm/PackageParser$Permission;

    move-result-object v0

    return-object v0
.end method
