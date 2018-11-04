.class public final Landroid/content/pm/PackageParser$PermissionGroup;
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
    name = "PermissionGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$PermissionGroup$1;
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
            "Landroid/content/pm/PackageParser$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final info:Landroid/content/pm/PermissionGroupInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6050
    new-instance v0, Landroid/content/pm/PackageParser$PermissionGroup$1;

    invoke-direct {v0}, Landroid/content/pm/PackageParser$PermissionGroup$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser$PermissionGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6006
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 6010
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 6011
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionGroupInfo;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 6009
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionGroupInfo;)V
    .locals 0
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "_info"    # Landroid/content/pm/PermissionGroupInfo;

    .prologue
    .line 6015
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 6016
    iput-object p2, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 6014
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 6042
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/os/Parcel;)V

    .line 6045
    sget-object v0, Landroid/content/pm/PermissionGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v1, Landroid/content/pm/PermissionGroupInfo;

    invoke-static {p1, v0, v1}, Landroid/content/pm/PackageParser;->-wrap0(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionGroupInfo;

    iput-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 6041
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PackageParser$PermissionGroup;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 6032
    const/4 v0, 0x0

    return v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6020
    invoke-super {p0, p1}, Landroid/content/pm/PackageParser$Component;->setPackageName(Ljava/lang/String;)V

    .line 6021
    iget-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iput-object p1, v0, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 6019
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PermissionGroup{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6026
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 6025
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6027
    const-string/jumbo v1, " "

    .line 6025
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6027
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    .line 6025
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6027
    const-string/jumbo v1, "}"

    .line 6025
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
    .line 6037
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6038
    iget-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6036
    return-void
.end method
