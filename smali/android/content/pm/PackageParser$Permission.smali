.class public final Landroid/content/pm/PackageParser$Permission;
.super Landroid/content/pm/PackageParser$Component;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Permission"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$Permission$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/PackageParser$Component",
        "<",
        "Landroid/content/pm/PackageParser$IntentInfo;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageParser$Permission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public group:Landroid/content/pm/PackageParser$PermissionGroup;

.field public final info:Landroid/content/pm/PermissionInfo;

.field public tree:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5995
    new-instance v0, Landroid/content/pm/PackageParser$Permission$1;

    invoke-direct {v0}, Landroid/content/pm/PackageParser$Permission$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser$Permission;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5941
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 5947
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 5948
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 5946
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V
    .locals 0
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "_info"    # Landroid/content/pm/PermissionInfo;

    .prologue
    .line 5952
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 5953
    iput-object p2, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 5951
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 5981
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/os/Parcel;)V

    .line 5985
    sget-object v0, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v2, Landroid/content/pm/PermissionInfo;

    invoke-static {p1, v0, v2}, Landroid/content/pm/PackageParser;->-wrap0(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 5987
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 5990
    sget-object v0, Landroid/content/pm/PackageParser$PermissionGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v1, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-static {p1, v0, v1}, Landroid/content/pm/PackageParser;->-wrap0(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$PermissionGroup;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    .line 5980
    return-void

    .line 5987
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PackageParser$Permission;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 5969
    const/4 v0, 0x0

    return v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5957
    invoke-super {p0, p1}, Landroid/content/pm/PackageParser$Component;->setPackageName(Ljava/lang/String;)V

    .line 5958
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput-object p1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 5956
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5963
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 5962
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5964
    const-string/jumbo v1, " "

    .line 5962
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5964
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 5962
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5964
    const-string/jumbo v1, "}"

    .line 5962
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 5974
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5975
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5976
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Permission;->tree:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5977
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5973
    return-void

    .line 5976
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
