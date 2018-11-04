.class public final Landroid/content/pm/PackageParser$Package;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Package"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$Package$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public baseCodePath:Ljava/lang/String;

.field public baseHardwareAccelerated:Z

.field public baseRevisionCode:I

.field public childPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field public codePath:Ljava/lang/String;

.field public configPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public coreApp:Z

.field public cpuAbiOverride:Ljava/lang/String;

.field public featureGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public installLocation:I

.field public final instrumentation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Instrumentation;",
            ">;"
        }
    .end annotation
.end field

.field public libraryNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAdoptPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAppMetaData:Landroid/os/Bundle;

.field public mCertificates:[[Ljava/security/cert/Certificate;

.field public mExtras:Ljava/lang/Object;

.field public mKeySetMapping:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field

.field public mLastPackageUsageTimeInMills:[J

.field public mOriginalPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOverlayPriority:I

.field public mOverlayTarget:Ljava/lang/String;

.field public mPreferredOrder:I

.field public mRealPackage:Ljava/lang/String;

.field public mRequiredAccountType:Ljava/lang/String;

.field public mRequiredForAllUsers:Z

.field public mRestrictedAccountType:Ljava/lang/String;

.field public mSharedUserId:Ljava/lang/String;

.field public mSharedUserLabel:I

.field public mSignatures:[Landroid/content/pm/Signature;

.field public mSigningKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field public mTrustedOverlay:Z

.field public mUpgradeKeySets:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVersionCode:I

.field public mVersionName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public parentPackage:Landroid/content/pm/PackageParser$Package;

.field public final permissionGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final permissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Permission;",
            ">;"
        }
    .end annotation
.end field

.field public preferredActivityFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public protectedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final providers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field public final receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field public reqFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final requestedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public restrictUpdateHash:[B

.field public final services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Service;",
            ">;"
        }
    .end annotation
.end field

.field public splitCodePaths:[Ljava/lang/String;

.field public splitFlags:[I

.field public splitNames:[Ljava/lang/String;

.field public splitPrivateFlags:[I

.field public splitRevisionCodes:[I

.field public use32bitAbi:Z

.field public usesLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesLibraryFiles:[Ljava/lang/String;

.field public usesOptionalLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5763
    new-instance v0, Landroid/content/pm/PackageParser$Package$1;

    invoke-direct {v0}, Landroid/content/pm/PackageParser$Package$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser$Package;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4999
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 5457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5040
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5042
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 5043
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    .line 5044
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 5045
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    .line 5046
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    .line 5047
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    .line 5048
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 5050
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 5057
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 5058
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 5059
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 5060
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 5062
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 5064
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 5065
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 5066
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 5069
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 5089
    iput v5, p0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    .line 5093
    const/16 v3, 0x8

    new-array v3, v3, [J

    .line 5092
    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    .line 5105
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 5108
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 5111
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 5459
    const-class v3, Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 5461
    .local v1, "boot":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5462
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 5463
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    .line 5464
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 5465
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 5466
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 5467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 5468
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    .line 5469
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 5470
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    .line 5471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 5474
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v6, Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, v3, v6}, Landroid/content/pm/PackageParser;->-wrap0(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5481
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    sget-object v6, Landroid/content/pm/PackageParser$Permission;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v7, Landroid/content/pm/PackageParser$Permission;

    invoke-static {p1, v3, v6, v7}, Landroid/content/pm/PackageParser;->-wrap3(Landroid/os/Parcel;Ljava/util/List;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)V

    .line 5482
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 5485
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    sget-object v6, Landroid/content/pm/PackageParser$PermissionGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v7, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-static {p1, v3, v6, v7}, Landroid/content/pm/PackageParser;->-wrap3(Landroid/os/Parcel;Ljava/util/List;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)V

    .line 5486
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 5489
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    sget-object v6, Landroid/content/pm/PackageParser$Activity;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v7, Landroid/content/pm/PackageParser$Activity;

    invoke-static {p1, v3, v6, v7}, Landroid/content/pm/PackageParser;->-wrap3(Landroid/os/Parcel;Ljava/util/List;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)V

    .line 5490
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 5493
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    sget-object v6, Landroid/content/pm/PackageParser$Activity;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v7, Landroid/content/pm/PackageParser$Activity;

    invoke-static {p1, v3, v6, v7}, Landroid/content/pm/PackageParser;->-wrap3(Landroid/os/Parcel;Ljava/util/List;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)V

    .line 5494
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 5497
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    sget-object v6, Landroid/content/pm/PackageParser$Provider;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v7, Landroid/content/pm/PackageParser$Provider;

    invoke-static {p1, v3, v6, v7}, Landroid/content/pm/PackageParser;->-wrap3(Landroid/os/Parcel;Ljava/util/List;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)V

    .line 5498
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 5501
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    sget-object v6, Landroid/content/pm/PackageParser$Service;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v7, Landroid/content/pm/PackageParser$Service;

    invoke-static {p1, v3, v6, v7}, Landroid/content/pm/PackageParser;->-wrap3(Landroid/os/Parcel;Ljava/util/List;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)V

    .line 5502
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 5505
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    sget-object v6, Landroid/content/pm/PackageParser$Instrumentation;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v7, Landroid/content/pm/PackageParser$Instrumentation;

    invoke-static {p1, v3, v6, v7}, Landroid/content/pm/PackageParser;->-wrap3(Landroid/os/Parcel;Ljava/util/List;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)V

    .line 5506
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 5508
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 5509
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 5512
    sget-object v3, Landroid/content/pm/PackageParser$Package;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v6, Landroid/content/pm/PackageParser$Package;

    invoke-static {p1, v3, v6}, Landroid/content/pm/PackageParser;->-wrap0(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 5514
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 5517
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    sget-object v6, Landroid/content/pm/PackageParser$Package;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v7, Landroid/content/pm/PackageParser$Package;

    invoke-static {p1, v3, v6, v7}, Landroid/content/pm/PackageParser;->-wrap3(Landroid/os/Parcel;Ljava/util/List;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)V

    .line 5518
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 5519
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 5522
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 5523
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 5524
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 5525
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 5527
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 5528
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 5529
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 5530
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 5533
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 5534
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 5535
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 5536
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 5537
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 5538
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 5539
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 5540
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 5544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5545
    .local v0, "N":I
    if-gez v0, :cond_7

    .line 5546
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 5554
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, [[Ljava/security/cert/Certificate;

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 5556
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    .line 5565
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 5568
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    sget-object v6, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v7, Landroid/content/pm/ConfigurationInfo;

    invoke-static {p1, v3, v6, v7}, Landroid/content/pm/PackageParser;->-wrap3(Landroid/os/Parcel;Ljava/util/List;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)V

    .line 5569
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 5570
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 5573
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 5576
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    sget-object v6, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v7, Landroid/content/pm/FeatureInfo;

    invoke-static {p1, v3, v6, v7}, Landroid/content/pm/PackageParser;->-wrap3(Landroid/os/Parcel;Ljava/util/List;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)V

    .line 5577
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 5578
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 5581
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 5584
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    sget-object v6, Landroid/content/pm/FeatureGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v7, Landroid/content/pm/FeatureGroupInfo;

    invoke-static {p1, v3, v6, v7}, Landroid/content/pm/PackageParser;->-wrap3(Landroid/os/Parcel;Ljava/util/List;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)V

    .line 5585
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 5586
    iput-object v8, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 5589
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 5590
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_8

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    .line 5591
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_9

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    .line 5592
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    .line 5593
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    .line 5594
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    .line 5595
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 5596
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_a

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Landroid/content/pm/PackageParser$Package;->mTrustedOverlay:Z

    .line 5597
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 5598
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 5600
    invoke-static {p1}, Landroid/content/pm/PackageParser$Package;->readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 5602
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->cpuAbiOverride:Ljava/lang/String;

    .line 5603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_b

    :goto_4
    iput-boolean v4, p0, Landroid/content/pm/PackageParser$Package;->use32bitAbi:Z

    .line 5604
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 5457
    return-void

    .end local v0    # "N":I
    :cond_6
    move v3, v5

    .line 5471
    goto/16 :goto_0

    .line 5548
    .restart local v0    # "N":I
    :cond_7
    new-array v3, v0, [Landroid/content/pm/Signature;

    iput-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 5549
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_2

    .line 5550
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    sget-object v3, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v7, Landroid/content/pm/Signature;

    invoke-static {p1, v3, v7}, Landroid/content/pm/PackageParser;->-wrap0(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    aput-object v3, v6, v2

    .line 5549
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v2    # "i":I
    :cond_8
    move v3, v5

    .line 5590
    goto :goto_1

    :cond_9
    move v3, v5

    .line 5591
    goto :goto_2

    :cond_a
    move v3, v5

    .line 5596
    goto :goto_3

    :cond_b
    move v4, v5

    .line 5603
    goto :goto_4
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5040
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 5043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    .line 5044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 5045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    .line 5046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    .line 5047
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    .line 5048
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 5050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 5057
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 5058
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 5059
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 5060
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 5062
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 5064
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 5065
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 5066
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 5069
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 5089
    iput v2, p0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    .line 5093
    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 5092
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    .line 5105
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 5108
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 5111
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 5156
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5157
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5158
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, -0x1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5155
    return-void
.end method

.method private fixupOwner(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Landroid/content/pm/PackageParser$Component",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 5612
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Landroid/content/pm/PackageParser$Component<*>;>;"
    if-eqz p1, :cond_3

    .line 5613
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Component;

    .line 5614
    .local v0, "c":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    iput-object p0, v0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 5615
    instance-of v2, v0, Landroid/content/pm/PackageParser$Activity;

    if-eqz v2, :cond_1

    .line 5616
    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .end local v0    # "c":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 5617
    .restart local v0    # "c":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    :cond_1
    instance-of v2, v0, Landroid/content/pm/PackageParser$Service;

    if-eqz v2, :cond_2

    .line 5618
    check-cast v0, Landroid/content/pm/PackageParser$Service;

    .end local v0    # "c":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    iget-object v2, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 5619
    .restart local v0    # "c":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    :cond_2
    instance-of v2, v0, Landroid/content/pm/PackageParser$Provider;

    if-eqz v2, :cond_0

    .line 5620
    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .end local v0    # "c":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 5611
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private static readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .locals 10
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 5735
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5736
    .local v1, "N":I
    if-ne v1, v8, :cond_0

    .line 5737
    return-object v9

    .line 5740
    :cond_0
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 5741
    .local v5, "keySetMapping":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 5742
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5743
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5744
    .local v0, "M":I
    if-ne v0, v8, :cond_1

    .line 5745
    invoke-virtual {v5, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5741
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5749
    :cond_1
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 5750
    .local v6, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 5751
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/security/PublicKey;

    .line 5752
    .local v7, "pk":Ljava/security/PublicKey;
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5750
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5755
    .end local v7    # "pk":Ljava/security/PublicKey;
    :cond_2
    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5758
    .end local v0    # "M":I
    .end local v3    # "j":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_3
    return-object v5
.end method

.method private static writeKeySetMapping(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 7
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "keySetMapping":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    const/4 v6, -0x1

    .line 5706
    if-nez p1, :cond_0

    .line 5707
    invoke-virtual {p0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5708
    return-void

    .line 5711
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 5712
    .local v1, "N":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5714
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 5715
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5716
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 5717
    .local v4, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-nez v4, :cond_2

    .line 5718
    invoke-virtual {p0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5714
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5722
    :cond_2
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 5723
    .local v0, "M":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5724
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 5725
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 5724
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5705
    .end local v0    # "M":I
    .end local v3    # "j":I
    .end local v4    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public canHaveOatDir()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5414
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5415
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5414
    :cond_1
    :goto_0
    return v0

    .line 5415
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isExternalAsec()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 5454
    const/4 v0, 0x0

    return v0
.end method

.method public getAllCodePaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5298
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5299
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5300
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 5302
    :cond_0
    return-object v0
.end method

.method public getAllCodePathsExcludingResourceOnly()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5311
    .local v1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 5312
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5314
    :cond_0
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 5316
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 5317
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5315
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5321
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method

.method public getLatestForegroundPackageUseTimeInMills()J
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 5436
    const/4 v5, 0x2

    .line 5434
    filled-new-array {v4, v5}, [I

    move-result-object v0

    .line 5439
    .local v0, "foregroundReasons":[I
    const-wide/16 v2, 0x0

    .line 5440
    .local v2, "latestUse":J
    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v1, v0, v4

    .line 5441
    .local v1, "reason":I
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    aget-wide v6, v6, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 5440
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5443
    .end local v1    # "reason":I
    :cond_0
    return-wide v2
.end method

.method public getLatestPackageUseTimeInMills()J
    .locals 7

    .prologue
    .line 5426
    const-wide/16 v0, 0x0

    .line 5427
    .local v0, "latestUse":J
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-wide v2, v5, v4

    .line 5428
    .local v2, "use":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 5427
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5430
    .end local v2    # "use":J
    :cond_0
    return-wide v0
.end method

.method public hasChildPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5212
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5213
    .local v0, "childCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 5214
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5215
    const/4 v2, 0x1

    return v2

    .line 5212
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_0

    .line 5213
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5218
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public hasComponentClassName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5351
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5352
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5353
    return v3

    .line 5351
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5356
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 5357
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5358
    return v3

    .line 5356
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 5361
    :cond_3
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_5

    .line 5362
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Provider;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5363
    return v3

    .line 5361
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 5366
    :cond_5
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_3
    if-ltz v0, :cond_7

    .line 5367
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Service;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5368
    return v3

    .line 5366
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 5371
    :cond_7
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_4
    if-ltz v0, :cond_9

    .line 5372
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Instrumentation;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5373
    return v3

    .line 5371
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 5376
    :cond_9
    return v2
.end method

.method public isForwardLocked()Z
    .locals 1

    .prologue
    .line 5383
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isForwardLocked()Z

    move-result v0

    return v0
.end method

.method public isMatch(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 5419
    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 5420
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    move-result v0

    return v0

    .line 5422
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPrivilegedApp()Z
    .locals 1

    .prologue
    .line 5397
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    return v0
.end method

.method public isSystemApp()Z
    .locals 1

    .prologue
    .line 5390
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    return v0
.end method

.method public isUpdatedSystemApp()Z
    .locals 1

    .prologue
    .line 5404
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v0

    return v0
.end method

.method public setApplicationInfoBaseCodePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .prologue
    .line 5202
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 5203
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5204
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5205
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5206
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 5205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5201
    .end local v0    # "i":I
    .end local v1    # "packageCount":I
    :cond_0
    return-void
.end method

.method public setApplicationInfoBaseResourcePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 5192
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 5193
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5194
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5195
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5196
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 5195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5191
    .end local v0    # "i":I
    .end local v1    # "packageCount":I
    :cond_0
    return-void
.end method

.method public setApplicationInfoCodePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "codePath"    # Ljava/lang/String;

    .prologue
    .line 5172
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 5173
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5174
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5175
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5176
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 5175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5171
    .end local v0    # "i":I
    .end local v1    # "packageCount":I
    :cond_0
    return-void
.end method

.method public setApplicationInfoFlags(II)V
    .locals 5
    .param p1, "mask"    # I
    .param p2, "flags"    # I

    .prologue
    .line 5276
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    not-int v4, p1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 5277
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5278
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5279
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5280
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5281
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    not-int v4, p1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    .line 5280
    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 5279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5275
    .end local v0    # "i":I
    .end local v1    # "packageCount":I
    :cond_0
    return-void
.end method

.method public setApplicationInfoResourcePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 5182
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 5183
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5184
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5185
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5186
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 5185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5181
    .end local v0    # "i":I
    .end local v1    # "packageCount":I
    :cond_0
    return-void
.end method

.method public setApplicationInfoSplitCodePaths([Ljava/lang/String;)V
    .locals 1
    .param p1, "splitCodePaths"    # [Ljava/lang/String;

    .prologue
    .line 5222
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    .line 5221
    return-void
.end method

.method public setApplicationInfoSplitResourcePaths([Ljava/lang/String;)V
    .locals 1
    .param p1, "resroucePaths"    # [Ljava/lang/String;

    .prologue
    .line 5227
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    .line 5226
    return-void
.end method

.method public setApplicationVolumeUuid(Ljava/lang/String;)V
    .locals 3
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .prologue
    .line 5162
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 5163
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5164
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5165
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5166
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 5165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5161
    .end local v0    # "i":I
    .end local v1    # "packageCount":I
    :cond_0
    return-void
.end method

.method public setBaseCodePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .prologue
    .line 5246
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 5247
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5248
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5249
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5250
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-object p1, v2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 5249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5245
    .end local v0    # "i":I
    .end local v1    # "packageCount":I
    :cond_0
    return-void
.end method

.method public setCodePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "codePath"    # Ljava/lang/String;

    .prologue
    .line 5236
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 5237
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5238
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5239
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5240
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-object p1, v2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 5239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5235
    .end local v0    # "i":I
    .end local v1    # "packageCount":I
    :cond_0
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 2
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 5325
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5326
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5327
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 5328
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Permission;->setPackageName(Ljava/lang/String;)V

    .line 5327
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5330
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 5331
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$PermissionGroup;->setPackageName(Ljava/lang/String;)V

    .line 5330
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 5333
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_2

    .line 5334
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Activity;->setPackageName(Ljava/lang/String;)V

    .line 5333
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 5336
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_3
    if-ltz v0, :cond_3

    .line 5337
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Activity;->setPackageName(Ljava/lang/String;)V

    .line 5336
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 5339
    :cond_3
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_4
    if-ltz v0, :cond_4

    .line 5340
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Provider;->setPackageName(Ljava/lang/String;)V

    .line 5339
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 5342
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_5
    if-ltz v0, :cond_5

    .line 5343
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Service;->setPackageName(Ljava/lang/String;)V

    .line 5342
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 5345
    :cond_5
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_6
    if-ltz v0, :cond_6

    .line 5346
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Instrumentation;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Instrumentation;->setPackageName(Ljava/lang/String;)V

    .line 5345
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 5324
    :cond_6
    return-void
.end method

.method public setSignatures([Landroid/content/pm/Signature;)V
    .locals 3
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 5256
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 5257
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5258
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5259
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5260
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-object p1, v2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 5259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5255
    .end local v0    # "i":I
    .end local v1    # "packageCount":I
    :cond_0
    return-void
.end method

.method public setSplitCodePaths([Ljava/lang/String;)V
    .locals 0
    .param p1, "codePaths"    # [Ljava/lang/String;

    .prologue
    .line 5232
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 5231
    return-void
.end method

.method public setUse32bitAbi(Z)V
    .locals 3
    .param p1, "use32bitAbi"    # Z

    .prologue
    .line 5287
    iput-boolean p1, p0, Landroid/content/pm/PackageParser$Package;->use32bitAbi:Z

    .line 5288
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5289
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5290
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5291
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-boolean p1, v2, Landroid/content/pm/PackageParser$Package;->use32bitAbi:Z

    .line 5290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5286
    .end local v0    # "i":I
    .end local v1    # "packageCount":I
    :cond_0
    return-void
.end method

.method public setVolumeUuid(Ljava/lang/String;)V
    .locals 3
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .prologue
    .line 5266
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    .line 5267
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5268
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5269
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5270
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-object p1, v2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    .line 5269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5265
    .end local v0    # "i":I
    .end local v1    # "packageCount":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Package{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5448
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 5447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5449
    const-string/jumbo v1, " "

    .line 5447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5449
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5449
    const-string/jumbo v1, "}"

    .line 5447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5628
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5629
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5630
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5631
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5632
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5633
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5634
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5635
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5636
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5637
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5638
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5639
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5641
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 5642
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 5643
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 5644
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 5645
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 5646
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 5647
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 5649
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5650
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5651
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5652
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 5653
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5654
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5655
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5656
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5658
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 5660
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5661
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5662
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5663
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 5664
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5665
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5666
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5667
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5669
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 5670
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 5672
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5680
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 5681
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 5682
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 5684
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5685
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5686
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5687
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5688
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5689
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5690
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5691
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->mTrustedOverlay:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5692
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 5693
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 5694
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-static {p1, v0}, Landroid/content/pm/PackageParser$Package;->writeKeySetMapping(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 5695
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->cpuAbiOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5696
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->use32bitAbi:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5697
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5627
    return-void

    :cond_0
    move v0, v2

    .line 5638
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 5685
    goto :goto_1

    :cond_2
    move v0, v2

    .line 5686
    goto :goto_2

    :cond_3
    move v0, v2

    .line 5691
    goto :goto_3

    :cond_4
    move v1, v2

    .line 5696
    goto :goto_4
.end method
