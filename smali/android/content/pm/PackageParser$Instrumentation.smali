.class public final Landroid/content/pm/PackageParser$Instrumentation;
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
    name = "Instrumentation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$Instrumentation$1;
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
            "Landroid/content/pm/PackageParser$Instrumentation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final info:Landroid/content/pm/InstrumentationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6507
    new-instance v0, Landroid/content/pm/PackageParser$Instrumentation$1;

    invoke-direct {v0}, Landroid/content/pm/PackageParser$Instrumentation$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser$Instrumentation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6463
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V
    .locals 0
    .param p1, "args"    # Landroid/content/pm/PackageParser$ParsePackageItemArgs;
    .param p2, "_info"    # Landroid/content/pm/InstrumentationInfo;

    .prologue
    .line 6468
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/PackageItemInfo;)V

    .line 6469
    iput-object p2, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 6467
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 6499
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/os/Parcel;)V

    .line 6502
    sget-object v0, Landroid/content/pm/InstrumentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v1, Landroid/content/pm/InstrumentationInfo;

    invoke-static {p1, v0, v1}, Landroid/content/pm/PackageParser;->-wrap0(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/InstrumentationInfo;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 6498
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PackageParser$Instrumentation;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 6489
    const/4 v0, 0x0

    return v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6473
    invoke-super {p0, p1}, Landroid/content/pm/PackageParser$Component;->setPackageName(Ljava/lang/String;)V

    .line 6474
    iget-object v0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iput-object p1, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 6472
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6478
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6479
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Instrumentation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6480
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6481
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6482
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageParser$Component;->appendComponentShortName(Ljava/lang/StringBuilder;)V

    .line 6483
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 6494
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6495
    iget-object v0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6493
    return-void
.end method
