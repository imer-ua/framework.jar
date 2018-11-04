.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$ApkLite;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$PackageParserException;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$ProviderIntentInfo;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$SplitNameComparator;,
        Landroid/content/pm/PackageParser$SplitPermissionInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final APK_SIGNING_UNKNOWN:I = 0x0

.field public static final APK_SIGNING_V1:I = 0x1

.field public static final APK_SIGNING_V2:I = 0x2

.field private static final CHILD_PACKAGE_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_BACKUP:Z = false

.field private static final DEBUG_JAR:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final LOG_PARSE_TIMINGS:Z

.field private static final LOG_PARSE_TIMINGS_THRESHOLD_MS:I = 0x64

.field private static final MAX_PACKAGES_PER_APK:I = 0x5

.field private static final MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field private static final MULTI_PACKAGE_APK_ENABLED:Z = false

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

.field public static final PARSE_CHATTY:I = 0x2

.field public static final PARSE_COLLECT_CERTIFICATES:I = 0x100

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final PARSE_ENFORCE_CODE:I = 0x400

.field public static final PARSE_EXTERNAL_STORAGE:I = 0x20

.field public static final PARSE_FORCE_SDK:I = 0x1000

.field public static final PARSE_FORWARD_LOCK:I = 0x10

.field public static final PARSE_IGNORE_PROCESSES:I = 0x8

.field public static final PARSE_IS_EPHEMERAL:I = 0x800

.field public static final PARSE_IS_PRIVILEGED:I = 0x80

.field public static final PARSE_IS_SYSTEM:I = 0x1

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x40

.field public static final PARSE_MUST_BE_APK:I = 0x4

.field public static final PARSE_TRUSTED_OVERLAY:I = 0x200

.field private static final RIGID_PARSER:Z = false

.field private static final SDK_CODENAMES:[Ljava/lang/String;

.field private static final SDK_VERSION:I

.field public static final SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field private static final TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field private static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field private static final TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field private static final TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field private static final TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field private static final TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field private static final TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field private static final TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field private static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field private static final TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field private static final TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field private static final TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field private static final TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field private static final TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field private static final TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field private static final TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field private static final TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field private static final TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field private static final TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field private static final TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field private static final TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field private static sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field

.field public static final sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sCompatibilityModeEnabled:Z

.field private static final sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mCacheDir:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mOnlyCoreApps:Z

.field private mOnlyPowerOffAlarmApps:Z

.field private mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mSeparateProcesses:[Ljava/lang/String;

.field private mTidyLog:Z


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "creator"    # Landroid/os/Parcelable$Creator;
    .param p2, "clazz"    # Ljava/lang/Class;

    .prologue
    invoke-static {p0, p1, p2}, Landroid/content/pm/PackageParser;->readParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 1
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "outInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "outError"    # [Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sa"    # Landroid/content/res/TypedArray;
    .param p5, "nameRequired"    # Z
    .param p6, "nameRes"    # I
    .param p7, "labelRes"    # I
    .param p8, "iconRes"    # I
    .param p9, "roundIconRes"    # I
    .param p10, "logoRes"    # I
    .param p11, "bannerRes"    # I

    .prologue
    invoke-static/range {p0 .. p11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;

    .prologue
    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/os/Parcel;Ljava/util/List;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)V
    .locals 0
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "outList"    # Ljava/util/List;
    .param p2, "creator"    # Landroid/os/Parcelable$Creator;
    .param p3, "clazz"    # Ljava/lang/Class;

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageParser;->readParcelableList(Landroid/os/Parcel;Ljava/util/List;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v3, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 137
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    .line 185
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    .line 187
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "application"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "uses-permission"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "uses-permission-sdk-m"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "uses-permission-sdk-23"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "uses-configuration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "uses-feature"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "feature-group"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "uses-sdk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "supports-screens"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "instrumentation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "uses-gl-texture"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "compatible-screens"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "supports-input"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "eat-comment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 244
    new-array v0, v7, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 245
    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v1, v2, v3, v5}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 247
    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-direct {v1, v2, v3, v5}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 243
    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 257
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 262
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 263
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v3, v5

    .line 264
    const/16 v4, 0x2711

    .line 262
    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v1, v0, v5

    .line 265
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    .line 266
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.READ_CALL_LOG"

    aput-object v4, v3, v5

    .line 265
    invoke-direct {v1, v2, v3, v8}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v1, v0, v6

    .line 268
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    .line 269
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.WRITE_CALL_LOG"

    aput-object v4, v3, v5

    .line 268
    invoke-direct {v1, v2, v3, v8}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v1, v0, v7

    .line 256
    sput-object v0, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 285
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 286
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 290
    sput-boolean v6, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 719
    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser$SplitNameComparator;)V

    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    .line 6638
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/PackageParser;->mTidyLog:Z

    .line 463
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 464
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 462
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 468
    invoke-direct {p0}, Landroid/content/pm/PackageParser;-><init>()V

    .line 469
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mContext:Landroid/content/Context;

    .line 467
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tidy"    # Z

    .prologue
    .line 474
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser;-><init>(Landroid/content/Context;)V

    .line 475
    iput-boolean p2, p0, Landroid/content/pm/PackageParser;->mTidyLog:Z

    .line 473
    return-void
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;
    .param p2, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x2e

    const/4 v5, 0x0

    .line 2537
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2538
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Empty class name in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v5

    .line 2539
    return-object v6

    .line 2541
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2542
    .local v2, "cls":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2543
    .local v1, "c":C
    if-ne v1, v4, :cond_2

    .line 2544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2546
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    .line 2547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2548
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2549
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2552
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "procSeq"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2557
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2558
    .local v2, "proc":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2559
    .local v0, "c":C
    if-eqz p0, :cond_2

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_2

    .line 2560
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 2561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2562
    const-string/jumbo v5, ": must be at least two characters"

    .line 2561
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    .line 2563
    return-object v7

    .line 2565
    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2566
    .local v3, "subName":Ljava/lang/String;
    invoke-static {v3, v6, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 2567
    .local v1, "nameError":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2569
    const-string/jumbo v5, ": "

    .line 2568
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    .line 2570
    return-object v7

    .line 2572
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2574
    .end local v1    # "nameError":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v8, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 2575
    .restart local v1    # "nameError":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string/jumbo v4, "system"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2580
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2576
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2577
    const-string/jumbo v5, ": "

    .line 2576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    .line 2578
    return-object v7
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;

    .prologue
    .line 2586
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_0

    const-string/jumbo v2, "system"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2589
    :cond_0
    if-eqz p4, :cond_5

    .line 2590
    array-length v2, p4

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 2591
    aget-object v1, p4, v0

    .line 2592
    .local v1, "sp":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2593
    :cond_1
    return-object p0

    .line 2587
    .end local v0    # "i":I
    .end local v1    # "sp":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .end local p1    # "defProc":Ljava/lang/String;
    :goto_1
    return-object p1

    .restart local p1    # "defProc":Ljava/lang/String;
    :cond_3
    move-object p1, p0

    goto :goto_1

    .line 2590
    .restart local v0    # "i":I
    .restart local v1    # "sp":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2597
    .end local v0    # "i":I
    .end local v1    # "sp":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_7

    .line 2598
    :cond_6
    return-object p1

    .line 2600
    :cond_7
    const-string/jumbo v2, "process"

    invoke-static {p0, p2, v2, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2605
    if-nez p2, :cond_0

    .line 2606
    return-object p1

    .line 2608
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2609
    return-object v1

    .line 2611
    :cond_1
    const-string/jumbo v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheResult(Ljava/io/File;ILandroid/content/pm/PackageParser$Package;)V
    .locals 12
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "parsed"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v8, 0x0

    .line 990
    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    if-nez v7, :cond_0

    .line 991
    return-void

    .line 995
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v2

    .line 996
    .local v2, "cacheKey":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 998
    .local v1, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 999
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1000
    const-string/jumbo v7, "PackageParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to delete cache file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_1
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageParser;->toCacheEntry(Landroid/content/pm/PackageParser$Package;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 1006
    .local v0, "cacheEntry":[B
    if-nez v0, :cond_2

    .line 1007
    return-void

    .line 1010
    :cond_2
    const/4 v4, 0x0

    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1011
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1015
    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_0
    if-eqz v8, :cond_4

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 1012
    :catch_0
    move-exception v6

    .local v6, "ioe":Ljava/io/IOException;
    move-object v4, v5

    .line 1013
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_5
    const-string/jumbo v7, "PackageParser"

    const-string/jumbo v8, "Error writing cache entry."

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1014
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 989
    .end local v0    # "cacheEntry":[B
    .end local v1    # "cacheFile":Ljava/io/File;
    .end local v2    # "cacheKey":Ljava/lang/String;
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_4
    :goto_2
    return-void

    .line 1015
    .restart local v0    # "cacheEntry":[B
    .restart local v1    # "cacheFile":Ljava/io/File;
    .restart local v2    # "cacheKey":Ljava/lang/String;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    goto :goto_0

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_4
    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_5
    if-eqz v8, :cond_7

    :try_start_8
    throw v8

    .line 1012
    :catch_3
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    goto :goto_1

    .line 1015
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v9

    if-nez v8, :cond_6

    move-object v8, v9

    goto :goto_5

    :cond_6
    if-eq v8, v9, :cond_5

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    .line 1016
    .end local v0    # "cacheEntry":[B
    .end local v1    # "cacheFile":Ljava/io/File;
    .end local v2    # "cacheKey":Ljava/lang/String;
    :catch_5
    move-exception v3

    .line 1017
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "PackageParser"

    const-string/jumbo v8, "Error saving package cache."

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1015
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cacheEntry":[B
    .restart local v1    # "cacheFile":Ljava/io/File;
    .restart local v2    # "cacheKey":Ljava/lang/String;
    :cond_7
    :try_start_9
    throw v7
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    goto :goto_4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method private static checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z
    .locals 3
    .param p0, "flags"    # I
    .param p1, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 534
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v2, :cond_1

    .line 535
    :cond_0
    and-int/lit16 v2, p0, 0x2000

    if-eqz v2, :cond_2

    .line 534
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 535
    goto :goto_0
.end method

.method public static closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .locals 1
    .param p0, "jarFile"    # Landroid/util/jar/StrictJarFile;

    .prologue
    .line 6657
    if-eqz p0, :cond_0

    .line 6659
    :try_start_0
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6656
    :cond_0
    :goto_0
    return-void

    .line 6660
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "parseFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1379
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;I)V

    .line 1380
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1381
    .local v0, "childCount":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1382
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 1383
    .local v1, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1384
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1385
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1381
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1380
    .end local v0    # "childCount":I
    .end local v1    # "childPkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_0

    .line 1378
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method private static collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    .locals 28
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "parseFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1411
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1414
    .local v5, "apkPath":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1416
    .local v24, "verified":Z
    const/4 v4, 0x0

    .line 1417
    .local v4, "allSignersCerts":[[Ljava/security/cert/Certificate;
    const/16 v20, 0x0

    .line 1419
    .local v20, "signatures":[Landroid/content/pm/Signature;
    :try_start_0
    const-string/jumbo v25, "verifyV2"

    const-wide/32 v26, 0x40000

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1420
    invoke-static {v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 1421
    .local v4, "allSignersCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v4}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 1423
    .local v20, "signatures":[Landroid/content/pm/Signature;
    const/16 v24, 0x1

    .line 1433
    const-wide/32 v26, 0x40000

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    .line 1436
    .end local v4    # "allSignersCerts":[[Ljava/security/cert/Certificate;
    .end local v20    # "signatures":[Landroid/content/pm/Signature;
    :goto_0
    if-eqz v24, :cond_1

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 1438
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1439
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1440
    new-instance v25, Landroid/util/ArraySet;

    array-length v0, v4

    move/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/util/ArraySet;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1441
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v0, v4

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_1

    .line 1442
    aget-object v22, v4, v14

    .line 1443
    .local v22, "signerCerts":[Ljava/security/cert/Certificate;
    const/16 v25, 0x0

    aget-object v21, v22, v25

    .line 1444
    .local v21, "signerCert":Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    move-object/from16 v25, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1441
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1426
    .end local v14    # "i":I
    .end local v21    # "signerCert":Ljava/security/cert/Certificate;
    .end local v22    # "signerCerts":[Ljava/security/cert/Certificate;
    .local v20, "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v7

    .line 1428
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1429
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Failed to collect certificates from "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1430
    const-string/jumbo v27, " using APK Signature Scheme v2"

    .line 1429
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1428
    const/16 v27, -0x67

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1432
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    .line 1433
    const-wide/32 v26, 0x40000

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    .line 1432
    throw v25

    .line 1424
    :catch_1
    move-exception v6

    .line 1433
    .local v6, "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    const-wide/32 v26, 0x40000

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1447
    .end local v6    # "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    .end local v20    # "signatures":[Landroid/content/pm/Signature;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 1448
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1450
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " has mismatched certificates"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1449
    const/16 v27, -0x68

    .line 1448
    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v25

    .line 1458
    :cond_1
    const/16 v16, 0x0

    .line 1460
    .local v16, "jarFile":Landroid/util/jar/StrictJarFile;
    :try_start_2
    const-string/jumbo v25, "strictJarFileCtor"

    const-wide/32 v26, 0x40000

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1465
    and-int/lit8 v25, p2, 0x40

    if-nez v25, :cond_2

    const/16 v19, 0x1

    .line 1466
    .local v19, "signatureSchemeRollbackProtectionsEnforced":Z
    :goto_2
    new-instance v17, Landroid/util/jar/StrictJarFile;

    .line 1468
    if-eqz v24, :cond_3

    const/16 v25, 0x0

    .line 1466
    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1470
    .local v17, "jarFile":Landroid/util/jar/StrictJarFile;
    const-wide/32 v26, 0x40000

    :try_start_3
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    .line 1473
    .end local v16    # "jarFile":Landroid/util/jar/StrictJarFile;
    const-string/jumbo v25, "AndroidManifest.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v18

    .line 1474
    .local v18, "manifestEntry":Ljava/util/zip/ZipEntry;
    if-nez v18, :cond_4

    .line 1475
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1476
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Package "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " has no manifest"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1475
    const/16 v27, -0x65

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v25
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1534
    .end local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v8

    .local v8, "e":Ljava/security/GeneralSecurityException;
    move-object/from16 v16, v17

    .line 1535
    .end local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .end local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    :goto_4
    :try_start_4
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1536
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Failed to collect certificates from "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1535
    const/16 v27, -0x69

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1540
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :catchall_1
    move-exception v25

    .line 1541
    :goto_5
    invoke-static/range {v16 .. v16}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 1540
    throw v25

    .line 1465
    .restart local v16    # "jarFile":Landroid/util/jar/StrictJarFile;
    :cond_2
    const/16 v19, 0x0

    .restart local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    goto :goto_2

    .line 1468
    :cond_3
    const/16 v25, 0x1

    goto :goto_3

    .line 1480
    .end local v16    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    :cond_4
    if-eqz v24, :cond_5

    .line 1541
    invoke-static/range {v17 .. v17}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 1481
    return-void

    .line 1485
    :cond_5
    :try_start_5
    const-string/jumbo v25, "verifyV1"

    const-wide/32 v26, 0x40000

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1486
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1487
    .local v23, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    and-int/lit8 v25, p2, 0x40

    if-nez v25, :cond_7

    .line 1491
    invoke-virtual/range {v17 .. v17}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1492
    .local v15, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :cond_6
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 1493
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 1495
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v25

    if-nez v25, :cond_6

    .line 1497
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1498
    .local v12, "entryName":Ljava/lang/String;
    const-string/jumbo v25, "META-INF/"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 1499
    const-string/jumbo v25, "AndroidManifest.xml"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 1501
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .line 1537
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "entryName":Ljava/lang/String;
    .end local v15    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catch_3
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object/from16 v16, v17

    .line 1538
    .end local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .end local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    :goto_7
    :try_start_6
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1539
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Failed to collect certificates from "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1538
    const/16 v27, -0x67

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1508
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    .restart local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_7
    :try_start_7
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "entry$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 1509
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v17

    invoke-static {v0, v9}, Landroid/content/pm/PackageParser;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v11

    .line 1510
    .local v11, "entryCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 1511
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1512
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Package "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " has no certificates at entry "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1513
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v27

    .line 1512
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1511
    const/16 v27, -0x67

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v25

    .line 1540
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "entry$iterator":Ljava/util/Iterator;
    .end local v11    # "entryCerts":[[Ljava/security/cert/Certificate;
    .end local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catchall_2
    move-exception v25

    move-object/from16 v16, v17

    .end local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .local v16, "jarFile":Landroid/util/jar/StrictJarFile;
    goto/16 :goto_5

    .line 1515
    .end local v16    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "entry$iterator":Ljava/util/Iterator;
    .restart local v11    # "entryCerts":[[Ljava/security/cert/Certificate;
    .restart local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_9
    invoke-static {v11}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v13

    .line 1517
    .local v13, "entrySignatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    move-object/from16 v25, v0

    if-nez v25, :cond_a

    .line 1518
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1519
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1520
    new-instance v25, Landroid/util/ArraySet;

    invoke-direct/range {v25 .. v25}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1521
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_8
    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_8

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    move-object/from16 v25, v0

    aget-object v26, v11, v14

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1521
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1525
    .end local v14    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v13}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 1526
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1527
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Package "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1528
    const-string/jumbo v27, " has mismatched certificates at entry "

    .line 1527
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1529
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v27

    .line 1527
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x68

    .line 1526
    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v25

    .line 1533
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v11    # "entryCerts":[[Ljava/security/cert/Certificate;
    .end local v13    # "entrySignatures":[Landroid/content/pm/Signature;
    :cond_b
    const-wide/32 v26, 0x40000

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1541
    invoke-static/range {v17 .. v17}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 1410
    return-void

    .line 1534
    .end local v10    # "entry$iterator":Ljava/util/Iterator;
    .end local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .end local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    .end local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .local v16, "jarFile":Landroid/util/jar/StrictJarFile;
    :catch_4
    move-exception v8

    .restart local v8    # "e":Ljava/security/GeneralSecurityException;
    goto/16 :goto_4

    .line 1537
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :catch_5
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    goto/16 :goto_7
.end method

.method private static collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;I)V
    .locals 6
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "parseFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const-wide/32 v4, 0x40000

    const/4 v1, 0x0

    .line 1391
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1392
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1393
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1395
    const-string/jumbo v1, "collectCertificates"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1397
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    .line 1399
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1401
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1405
    .end local v0    # "i":I
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1390
    return-void

    .line 1404
    :catchall_0
    move-exception v1

    .line 1405
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1404
    throw v1
.end method

.method private static convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "certs"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 1547
    array-length v2, p0

    new-array v1, v2, [Landroid/content/pm/Signature;

    .line 1548
    .local v1, "res":[Landroid/content/pm/Signature;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1549
    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v1, v0

    .line 1548
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1551
    :cond_0
    return-object v1
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z
    .locals 6
    .param p0, "flags"    # I
    .param p1, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "metaData"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6063
    if-eqz p4, :cond_0

    .line 6066
    return v4

    .line 6068
    :cond_0
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v2, :cond_2

    .line 6069
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v2, v4, :cond_1

    const/4 v0, 0x1

    .line 6070
    .local v0, "enabled":Z
    :goto_0
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v2, v0, :cond_2

    .line 6071
    return v4

    .line 6069
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 6074
    .end local v0    # "enabled":Z
    :cond_2
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 6075
    .local v1, "suspended":Z
    :goto_1
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eq v2, v1, :cond_4

    .line 6076
    return v4

    .line 6074
    .end local v1    # "suspended":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "suspended":Z
    goto :goto_1

    .line 6078
    :cond_4
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v2, :cond_6

    .line 6079
    :cond_5
    return v4

    .line 6081
    :cond_6
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v2, :cond_7

    .line 6082
    return v4

    .line 6084
    :cond_7
    and-int/lit16 v2, p0, 0x80

    if-eqz v2, :cond_9

    .line 6085
    if-nez p3, :cond_8

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v2, :cond_9

    .line 6086
    :cond_8
    return v4

    .line 6088
    :cond_9
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_a

    .line 6089
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 6090
    return v4

    .line 6092
    :cond_a
    return v5
.end method

.method public static final generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 6288
    if-nez p0, :cond_0

    return-object v2

    .line 6289
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6290
    return-object v2

    .line 6294
    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 6295
    .end local p0    # "ai":Landroid/content/pm/ActivityInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6296
    return-object v0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 6272
    if-nez p0, :cond_0

    return-object v2

    .line 6273
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6274
    return-object v2

    .line 6276
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6277
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    return-object v1

    .line 6280
    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 6281
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 6282
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6283
    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 6172
    if-nez p0, :cond_0

    return-object v2

    .line 6173
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6174
    return-object v2

    .line 6178
    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 6179
    .end local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 6180
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v1, :cond_2

    .line 6181
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 6185
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 6186
    return-object v0

    .line 6183
    :cond_2
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    .line 6097
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 6134
    if-nez p0, :cond_0

    return-object v2

    .line 6135
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6138
    invoke-static {p1, p0, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6139
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 6140
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    .line 6148
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 6149
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v1

    .line 6136
    :cond_2
    return-object v2

    .line 6153
    :cond_3
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 6154
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 6155
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_4

    .line 6156
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 6158
    :cond_4
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_5

    .line 6159
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 6161
    :cond_5
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v1, :cond_6

    .line 6162
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 6166
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 6167
    return-object v0

    .line 6164
    :cond_6
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 2
    .param p0, "i"    # Landroid/content/pm/PackageParser$Instrumentation;
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 6520
    if-nez p0, :cond_0

    return-object v1

    .line 6521
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 6522
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object v1

    .line 6524
    :cond_1
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 6525
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 6526
    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;
    .locals 11
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .prologue
    .line 526
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 525
    invoke-static/range {v1 .. v10}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 21
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .prologue
    .line 545
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v0, p2

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 548
    new-instance v10, Landroid/content/pm/PackageInfo;

    invoke-direct {v10}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 549
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 551
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 552
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v10, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 556
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v10, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 557
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 558
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v10, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 559
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    move/from16 v16, v0

    move/from16 v0, v16

    iput-boolean v0, v10, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 560
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x1

    if-nez v16, :cond_0

    .line 561
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 562
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    move/from16 v16, v0

    move/from16 v0, v16

    iput-boolean v0, v10, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 564
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 567
    move-wide/from16 v0, p3

    iput-wide v0, v10, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 568
    move-wide/from16 v0, p5

    iput-wide v0, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 569
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 570
    move-object/from16 v0, p1

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->gids:[I

    .line 572
    :cond_2
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x4000

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 574
    .local v4, "N":I
    :goto_0
    if-lez v4, :cond_3

    .line 575
    new-array v0, v4, [Landroid/content/pm/ConfigurationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 578
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 579
    :goto_1
    if-lez v4, :cond_4

    .line 580
    new-array v0, v4, [Landroid/content/pm/FeatureInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 583
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 584
    :goto_2
    if-lez v4, :cond_5

    .line 585
    new-array v0, v4, [Landroid/content/pm/FeatureGroupInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 589
    .end local v4    # "N":I
    :cond_5
    and-int/lit8 v16, p2, 0x1

    if-eqz v16, :cond_b

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 591
    .restart local v4    # "N":I
    if-lez v4, :cond_b

    .line 592
    const/4 v7, 0x0

    .line 593
    .local v7, "num":I
    new-array v12, v4, [Landroid/content/pm/ActivityInfo;

    .line 594
    .local v12, "res":[Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    .local v6, "i":I
    move v8, v7

    .end local v7    # "num":I
    .local v8, "num":I
    :goto_3
    if-ge v6, v4, :cond_a

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 596
    .local v5, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v0, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 597
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v5, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    aput-object v16, v12, v8

    .line 594
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_3

    .line 546
    .end local v4    # "N":I
    .end local v5    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    .end local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_6
    const/16 v16, 0x0

    return-object v16

    .line 573
    .restart local v10    # "pi":Landroid/content/pm/PackageInfo;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 578
    .restart local v4    # "N":I
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 583
    :cond_9
    const/4 v4, 0x0

    goto :goto_2

    .line 600
    .restart local v6    # "i":I
    .restart local v8    # "num":I
    .restart local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_a
    invoke-static {v12, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 603
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_b
    and-int/lit8 v16, p2, 0x2

    if-eqz v16, :cond_d

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 605
    .restart local v4    # "N":I
    if-lez v4, :cond_d

    .line 606
    const/4 v7, 0x0

    .line 607
    .restart local v7    # "num":I
    new-array v12, v4, [Landroid/content/pm/ActivityInfo;

    .line 608
    .restart local v12    # "res":[Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move v8, v7

    .end local v7    # "num":I
    .restart local v8    # "num":I
    :goto_5
    if-ge v6, v4, :cond_c

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 610
    .restart local v5    # "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v0, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 611
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v5, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    aput-object v16, v12, v8

    .line 608
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_5

    .line 614
    .end local v5    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_c
    invoke-static {v12, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 617
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_d
    and-int/lit8 v16, p2, 0x4

    if-eqz v16, :cond_f

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 619
    .restart local v4    # "N":I
    if-lez v4, :cond_f

    .line 620
    const/4 v7, 0x0

    .line 621
    .restart local v7    # "num":I
    new-array v14, v4, [Landroid/content/pm/ServiceInfo;

    .line 622
    .local v14, "res":[Landroid/content/pm/ServiceInfo;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move v8, v7

    .end local v7    # "num":I
    .restart local v8    # "num":I
    :goto_7
    if-ge v6, v4, :cond_e

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Service;

    .line 624
    .local v15, "s":Landroid/content/pm/PackageParser$Service;
    iget-object v0, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v16

    if-eqz v16, :cond_19

    .line 625
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v15, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v16

    aput-object v16, v14, v8

    .line 622
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_7

    .line 628
    .end local v15    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_e
    invoke-static {v14, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 631
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v14    # "res":[Landroid/content/pm/ServiceInfo;
    :cond_f
    and-int/lit8 v16, p2, 0x8

    if-eqz v16, :cond_11

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 633
    .restart local v4    # "N":I
    if-lez v4, :cond_11

    .line 634
    const/4 v7, 0x0

    .line 635
    .restart local v7    # "num":I
    new-array v13, v4, [Landroid/content/pm/ProviderInfo;

    .line 636
    .local v13, "res":[Landroid/content/pm/ProviderInfo;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move v8, v7

    .end local v7    # "num":I
    .restart local v8    # "num":I
    :goto_9
    if-ge v6, v4, :cond_10

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Provider;

    .line 638
    .local v11, "pr":Landroid/content/pm/PackageParser$Provider;
    iget-object v0, v11, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v16

    if-eqz v16, :cond_18

    .line 639
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v11, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v16

    aput-object v16, v13, v8

    .line 636
    :goto_a
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_9

    .line 642
    .end local v11    # "pr":Landroid/content/pm/PackageParser$Provider;
    :cond_10
    invoke-static {v13, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 645
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v13    # "res":[Landroid/content/pm/ProviderInfo;
    :cond_11
    and-int/lit8 v16, p2, 0x10

    if-eqz v16, :cond_12

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 647
    .restart local v4    # "N":I
    if-lez v4, :cond_12

    .line 648
    new-array v0, v4, [Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 649
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_b
    if-ge v6, v4, :cond_12

    .line 650
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v17, v0

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageParser$Instrumentation;

    .line 650
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v16

    aput-object v16, v17, v6

    .line 649
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 655
    .end local v4    # "N":I
    .end local v6    # "i":I
    :cond_12
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x1000

    move/from16 v16, v0

    if-eqz v16, :cond_15

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 657
    .restart local v4    # "N":I
    if-lez v4, :cond_13

    .line 658
    new-array v0, v4, [Landroid/content/pm/PermissionInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 659
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_c
    if-ge v6, v4, :cond_13

    .line 660
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v16

    aput-object v16, v17, v6

    .line 659
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 663
    .end local v6    # "i":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 664
    if-lez v4, :cond_15

    .line 665
    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 666
    new-array v0, v4, [I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 667
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_d
    if-ge v6, v4, :cond_15

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 669
    .local v9, "perm":Ljava/lang/String;
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v9, v16, v6

    .line 671
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move-object/from16 v16, v0

    aget v17, v16, v6

    or-int/lit8 v17, v17, 0x1

    aput v17, v16, v6

    .line 672
    if-eqz p7, :cond_14

    move-object/from16 v0, p7

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 673
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move-object/from16 v16, v0

    aget v17, v16, v6

    or-int/lit8 v17, v17, 0x2

    aput v17, v16, v6

    .line 667
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 678
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v9    # "perm":Ljava/lang/String;
    :cond_15
    and-int/lit8 v16, p2, 0x40

    if-eqz v16, :cond_16

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    if-eqz v16, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v4, v0

    .line 680
    .restart local v4    # "N":I
    :goto_e
    if-lez v4, :cond_16

    .line 681
    new-array v0, v4, [Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 685
    .end local v4    # "N":I
    :cond_16
    return-object v10

    .line 679
    :cond_17
    const/4 v4, 0x0

    goto :goto_e

    .restart local v4    # "N":I
    .restart local v6    # "i":I
    .restart local v8    # "num":I
    .restart local v11    # "pr":Landroid/content/pm/PackageParser$Provider;
    .restart local v13    # "res":[Landroid/content/pm/ProviderInfo;
    :cond_18
    move v7, v8

    .end local v8    # "num":I
    .restart local v7    # "num":I
    goto/16 :goto_a

    .end local v7    # "num":I
    .end local v11    # "pr":Landroid/content/pm/PackageParser$Provider;
    .end local v13    # "res":[Landroid/content/pm/ProviderInfo;
    .restart local v8    # "num":I
    .restart local v14    # "res":[Landroid/content/pm/ServiceInfo;
    .restart local v15    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_19
    move v7, v8

    .end local v8    # "num":I
    .restart local v7    # "num":I
    goto/16 :goto_8

    .end local v7    # "num":I
    .end local v14    # "res":[Landroid/content/pm/ServiceInfo;
    .end local v15    # "s":Landroid/content/pm/PackageParser$Service;
    .restart local v5    # "a":Landroid/content/pm/PackageParser$Activity;
    .restart local v8    # "num":I
    .restart local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_1a
    move v7, v8

    .end local v8    # "num":I
    .restart local v7    # "num":I
    goto/16 :goto_6

    .end local v7    # "num":I
    .restart local v8    # "num":I
    :cond_1b
    move v7, v8

    .end local v8    # "num":I
    .restart local v7    # "num":I
    goto/16 :goto_4
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p0, "pg"    # Landroid/content/pm/PackageParser$PermissionGroup;
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 6202
    if-nez p0, :cond_0

    return-object v1

    .line 6203
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 6204
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    return-object v1

    .line 6206
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 6207
    .local v0, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 6208
    return-object v0
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 2
    .param p0, "p"    # Landroid/content/pm/PackageParser$Permission;
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 6191
    if-nez p0, :cond_0

    return-object v1

    .line 6192
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 6193
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    return-object v1

    .line 6195
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 6196
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 6197
    return-object v0
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .param p0, "p"    # Landroid/content/pm/PackageParser$Provider;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 6444
    if-nez p0, :cond_0

    return-object v3

    .line 6445
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6446
    return-object v3

    .line 6448
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6449
    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_2

    .line 6450
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_3

    .line 6451
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    return-object v1

    .line 6454
    :cond_3
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 6455
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 6456
    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_4

    .line 6457
    iput-object v3, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 6459
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6460
    return-object v0
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 3
    .param p0, "s"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 6359
    if-nez p0, :cond_0

    return-object v2

    .line 6360
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6361
    return-object v2

    .line 6363
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6364
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    return-object v1

    .line 6367
    :cond_2
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 6368
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 6369
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6370
    return-object v0
.end method

.method public static getApkSigningVersion(Landroid/content/pm/PackageParser$Package;)I
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 1326
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->hasSignature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1327
    const/4 v1, 0x2

    return v1

    .line 1329
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1330
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method private getCacheKey(Ljava/io/File;I)Ljava/lang/String;
    .locals 2
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I

    .prologue
    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 897
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 898
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCachedResult(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 7
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 961
    iget-object v4, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    if-nez v4, :cond_0

    .line 962
    return-object v6

    .line 965
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v2

    .line 966
    .local v2, "cacheKey":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 970
    .local v1, "cacheFile":Ljava/io/File;
    :try_start_0
    invoke-static {p1, v1}, Landroid/content/pm/PackageParser;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 971
    return-object v6

    .line 974
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 975
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageParser;->fromCacheEntry([B)Landroid/content/pm/PackageParser$Package;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 976
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v3

    .line 977
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "PackageParser"

    const-string/jumbo v5, "Error reading package cache: "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 981
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 982
    return-object v6
.end method

.method private static hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z
    .locals 10
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v9, 0x0

    .line 3432
    if-eqz p0, :cond_0

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    :cond_0
    return v9

    .line 3433
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 3434
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3435
    .local v3, "countActivities":I
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_0
    if-ge v7, v3, :cond_7

    .line 3436
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 3437
    .local v1, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 3438
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-nez v5, :cond_3

    .line 3435
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3439
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3440
    .local v4, "countFilters":I
    const/4 v6, 0x0

    .local v6, "m":I
    :goto_1
    if-ge v6, v4, :cond_2

    .line 3441
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 3442
    .local v2, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3440
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3443
    :cond_5
    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3444
    const-string/jumbo v8, "http"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 3445
    const-string/jumbo v8, "https"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    .line 3444
    if-eqz v8, :cond_4

    .line 3446
    :cond_6
    const/4 v8, 0x1

    return v8

    .line 3450
    .end local v1    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v2    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v4    # "countFilters":I
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "m":I
    :cond_7
    return v9
.end method

.method public static final isApkFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 508
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isApkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 512
    const-string/jumbo v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAvailable(Landroid/content/pm/PackageUserState;)Z
    .locals 1
    .param p0, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v0

    return v0
.end method

.method private static isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "cacheFile"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 934
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    .line 935
    .local v2, "pkg":Landroid/system/StructStat;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 936
    .local v0, "cache":Landroid/system/StructStat;
    iget-wide v4, v2, Landroid/system/StructStat;->st_mtime:J

    iget-wide v6, v0, Landroid/system/StructStat;->st_mtime:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 937
    .end local v0    # "cache":Landroid/system/StructStat;
    .end local v2    # "pkg":Landroid/system/StructStat;
    :catch_0
    move-exception v1

    .line 948
    .local v1, "ee":Landroid/system/ErrnoException;
    iget v4, v1, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->ENOENT:I

    if-eq v4, v5, :cond_1

    .line 949
    const-string/jumbo v4, "Error while stating package cache : "

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    :cond_1
    return v3
.end method

.method private isPowerOffAlarmPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1026
    iget-object v2, p0, Landroid/content/pm/PackageParser;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 1028
    iget-object v2, p0, Landroid/content/pm/PackageParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1029
    .local v0, "packageArray":[Ljava/lang/String;
    array-length v2, v0

    if-nez v2, :cond_0

    .line 1030
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "power off alarm app array is empty "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    return v5

    .line 1033
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1034
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1035
    const/4 v2, 0x1

    return v2

    .line 1039
    .end local v0    # "packageArray":[Ljava/lang/String;
    .end local v1    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return v5
.end method

.method private static loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    .locals 4
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1147
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1155
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v0

    .line 1156
    .local v0, "cookie":I
    if-nez v0, :cond_2

    .line 1157
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed adding asset path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1157
    const/16 v3, -0x65

    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1148
    .end local v0    # "cookie":I
    :cond_1
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid package file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1148
    const/16 v3, -0x64

    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1160
    .restart local v0    # "cookie":I
    :cond_2
    return v0
.end method

.method private static loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 5
    .param p0, "jarFile"    # Landroid/util/jar/StrictJarFile;
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 690
    const/4 v1, 0x0

    .line 694
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 695
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/content/pm/PackageParser;->readFullyIgnoringContents(Ljava/io/InputStream;)J

    .line 696
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 701
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 696
    return-object v2

    .line 697
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 698
    const/16 v4, -0x66

    invoke-direct {v2, v4, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 700
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 701
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 700
    throw v2
.end method

.method private static modifySharedLibrariesForBackwardCompatibility(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 3423
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    const-string/jumbo v1, "org.apache.http.legacy"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 3424
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3425
    const-string/jumbo v1, "org.apache.http.legacy"

    .line 3424
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3416
    return-void
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;
    .locals 28
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "receiver"    # Z
    .param p7, "hardwareAccelerated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3647
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 3649
    .local v24, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v4, :cond_0

    .line 3650
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3657
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 3651
    const/4 v7, 0x3

    .line 3652
    const/4 v8, 0x1

    .line 3653
    const/4 v9, 0x2

    .line 3654
    const/16 v10, 0x2c

    .line 3655
    const/16 v11, 0x17

    .line 3656
    const/16 v12, 0x1e

    .line 3658
    const/4 v14, 0x7

    .line 3659
    const/16 v15, 0x11

    .line 3660
    const/16 v16, 0x5

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    .line 3650
    invoke-direct/range {v4 .. v16}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3663
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-eqz p6, :cond_1

    const-string/jumbo v4, "<receiver>"

    :goto_0
    iput-object v4, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 3664
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v24

    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 3665
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p4

    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 3667
    new-instance v17, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 3668
    .local v17, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_2

    .line 3669
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 3670
    const/4 v4, 0x0

    return-object v4

    .line 3663
    .end local v17    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_1
    const-string/jumbo v4, "<activity>"

    goto :goto_0

    .line 3673
    .restart local v17    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_2
    const/4 v4, 0x6

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    .line 3674
    .local v25, "setExported":Z
    if-eqz v25, :cond_3

    .line 3675
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3678
    :cond_3
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->theme:I

    .line 3680
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3681
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 3680
    const/16 v6, 0x1a

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 3684
    const/16 v4, 0x1b

    .line 3685
    const/16 v5, 0x400

    .line 3683
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 3686
    .local v21, "parentName":Ljava/lang/String;
    if-eqz v21, :cond_4

    .line 3687
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3688
    .local v20, "parentClassName":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-nez v4, :cond_1b

    .line 3689
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v20

    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 3698
    .end local v20    # "parentClassName":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v26

    .line 3699
    .local v26, "str":Ljava/lang/String;
    if-nez v26, :cond_1c

    .line 3700
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 3706
    :goto_2
    const/16 v4, 0x8

    .line 3707
    const/16 v5, 0x400

    .line 3705
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v26

    .line 3708
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3709
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 3708
    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 3711
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3713
    const/16 v4, 0x9

    const/4 v5, 0x0

    .line 3712
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3714
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3717
    :cond_5
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3718
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3721
    :cond_6
    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3722
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3725
    :cond_7
    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3726
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3729
    :cond_8
    const/16 v4, 0x12

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3730
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3733
    :cond_9
    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3734
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3737
    :cond_a
    const/16 v4, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3738
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3742
    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    .line 3741
    :goto_3
    const/16 v5, 0x13

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3743
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3746
    :cond_c
    const/16 v4, 0x16

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3747
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3750
    :cond_d
    const/16 v4, 0x1d

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-nez v4, :cond_e

    .line 3751
    const/16 v4, 0x27

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 3750
    if-eqz v4, :cond_f

    .line 3752
    :cond_e
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3755
    :cond_f
    const/16 v4, 0x18

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3756
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3759
    :cond_10
    const/16 v4, 0x2d

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3760
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3763
    :cond_11
    if-nez p6, :cond_24

    .line 3764
    const/16 v4, 0x19

    move-object/from16 v0, v24

    move/from16 v1, p7

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3766
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3769
    :cond_12
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3770
    const/16 v5, 0xe

    const/4 v6, 0x0

    .line 3769
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 3771
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3772
    const/16 v5, 0x21

    .line 3773
    const/4 v6, 0x0

    .line 3771
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 3774
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3776
    invoke-static {}, Landroid/app/ActivityManager;->getDefaultAppRecentsLimitStatic()I

    move-result v5

    .line 3775
    const/16 v6, 0x22

    .line 3774
    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 3777
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 3778
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3779
    const/16 v5, 0x14

    const/4 v6, 0x0

    .line 3778
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 3781
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3782
    const/16 v5, 0x20

    .line 3783
    const/4 v6, 0x0

    .line 3781
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 3785
    const/16 v4, 0x1f

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3786
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3789
    :cond_13
    const/16 v4, 0x23

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 3790
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3793
    :cond_14
    const/16 v4, 0x24

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 3794
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3797
    :cond_15
    const/16 v4, 0x25

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3798
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3801
    :cond_16
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3802
    const/16 v5, 0xf

    .line 3803
    const/4 v6, -0x1

    .line 3801
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 3805
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 3806
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_1f

    const/16 v18, 0x1

    .line 3813
    .local v18, "appDefault":Z
    :goto_4
    const/16 v4, 0x28

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v23

    .line 3815
    .local v23, "resizeableSetExplicitly":Z
    const/16 v4, 0x28

    .line 3814
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    .line 3817
    .local v22, "resizeable":Z
    if-eqz v22, :cond_21

    .line 3818
    const/16 v4, 0x29

    .line 3819
    const/4 v5, 0x0

    .line 3818
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3820
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x3

    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 3831
    :cond_17
    :goto_5
    const/16 v4, 0x2e

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 3832
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3835
    :cond_18
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3836
    const/16 v5, 0x26

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 3835
    iput v5, v4, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 3838
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3839
    const/16 v5, 0x2a

    .line 3840
    const/4 v6, 0x0

    .line 3838
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v5, v6, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    .line 3842
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3843
    const/16 v5, 0x2b

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3842
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 3864
    .end local v18    # "appDefault":Z
    .end local v22    # "resizeable":Z
    .end local v23    # "resizeableSetExplicitly":Z
    .end local v25    # "setExported":Z
    :goto_6
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    if-eqz v4, :cond_19

    .line 3865
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3869
    :cond_19
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 3871
    if-eqz p6, :cond_1a

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1a

    .line 3875
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v4, v5, :cond_1a

    .line 3876
    const-string/jumbo v4, "Heavy-weight applications can not have receivers in main process"

    const/4 v5, 0x0

    aput-object v4, p5, v5

    .line 3880
    :cond_1a
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_26

    .line 3881
    const/4 v4, 0x0

    return-object v4

    .line 3691
    .end local v26    # "str":Ljava/lang/String;
    .restart local v20    # "parentClassName":Ljava/lang/String;
    .restart local v25    # "setExported":Z
    :cond_1b
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " specified invalid parentActivityName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, p5, v5

    goto/16 :goto_1

    .line 3702
    .end local v20    # "parentClassName":Ljava/lang/String;
    .restart local v26    # "str":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1d

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_7
    iput-object v4, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1d
    const/4 v4, 0x0

    goto :goto_7

    .line 3742
    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 3806
    :cond_1f
    const/16 v18, 0x0

    .restart local v18    # "appDefault":Z
    goto/16 :goto_4

    .line 3822
    .restart local v22    # "resizeable":Z
    .restart local v23    # "resizeableSetExplicitly":Z
    :cond_20
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x2

    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto/16 :goto_5

    .line 3824
    :cond_21
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_22

    if-eqz v23, :cond_23

    .line 3826
    :cond_22
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto/16 :goto_5

    .line 3827
    :cond_23
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v4

    if-nez v4, :cond_17

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-nez v4, :cond_17

    .line 3828
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x4

    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto/16 :goto_5

    .line 3845
    .end local v18    # "appDefault":Z
    .end local v22    # "resizeable":Z
    .end local v23    # "resizeableSetExplicitly":Z
    :cond_24
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 3846
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 3848
    const/16 v4, 0x1c

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 3849
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3850
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v4, :cond_25

    move/from16 v0, p4

    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_25

    .line 3851
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity exported request ignored due to singleUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3852
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    .line 3851
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3852
    const-string/jumbo v6, " at "

    .line 3851
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3852
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3851
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3852
    const-string/jumbo v6, " "

    .line 3851
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3853
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3851
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3855
    const/16 v25, 0x1

    .line 3859
    .end local v25    # "setExported":Z
    :cond_25
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3860
    const/16 v5, 0x2a

    .line 3861
    const/4 v6, 0x0

    .line 3859
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v5, v6, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    goto/16 :goto_6

    .line 3884
    :cond_26
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v19

    .line 3886
    .local v19, "outerDepth":I
    :cond_27
    :goto_8
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v27

    .local v27, "type":I
    const/4 v4, 0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_33

    .line 3887
    const/4 v4, 0x3

    move/from16 v0, v27

    if-ne v0, v4, :cond_28

    .line 3888
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v19

    if-le v4, v0, :cond_33

    .line 3889
    :cond_28
    const/4 v4, 0x3

    move/from16 v0, v27

    if-eq v0, v4, :cond_27

    const/4 v4, 0x4

    move/from16 v0, v27

    if-eq v0, v4, :cond_27

    .line 3893
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 3894
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 3895
    .local v9, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 3896
    const/4 v4, 0x0

    return-object v4

    .line 3898
    :cond_29
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v4

    if-nez v4, :cond_2a

    .line 3900
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/content/pm/PackageParser;->mTidyLog:Z

    if-nez v4, :cond_27

    .line 3901
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No actions in intent filter at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3902
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3901
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3902
    const-string/jumbo v6, " "

    .line 3901
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3903
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3901
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3907
    :cond_2a
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 3909
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2b
    if-nez p6, :cond_2f

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "preferred"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3910
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 3911
    .restart local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 3912
    const/4 v4, 0x0

    return-object v4

    .line 3914
    :cond_2c
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v4

    if-nez v4, :cond_2d

    .line 3916
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/content/pm/PackageParser;->mTidyLog:Z

    if-nez v4, :cond_27

    .line 3917
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No actions in preferred at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3918
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3917
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3918
    const-string/jumbo v6, " "

    .line 3917
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3919
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3917
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3923
    :cond_2d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-nez v4, :cond_2e

    .line 3924
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 3926
    :cond_2e
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 3928
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2f
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 3929
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_27

    .line 3931
    const/4 v4, 0x0

    return-object v4

    .line 3933
    :cond_30
    if-nez p6, :cond_31

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "layout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 3934
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V

    goto/16 :goto_8

    .line 3937
    :cond_31
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Problem in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    if-eqz p6, :cond_32

    .line 3939
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <receiver>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3940
    const-string/jumbo v6, " at "

    .line 3939
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3940
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3939
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3940
    const-string/jumbo v6, " "

    .line 3939
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3941
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3939
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3947
    :goto_9
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    .line 3943
    :cond_32
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <activity>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3944
    const-string/jumbo v6, " at "

    .line 3943
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3944
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3943
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3944
    const-string/jumbo v6, " "

    .line 3943
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3945
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3943
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 3960
    :cond_33
    if-nez v25, :cond_34

    .line 3961
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_35

    const/4 v4, 0x1

    :goto_a
    iput-boolean v4, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3964
    :cond_34
    return-object v17

    .line 3961
    :cond_35
    const/4 v4, 0x0

    goto :goto_a
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;
    .locals 31
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4014
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    .line 4013
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 4017
    .local v24, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x7

    .line 4018
    const/16 v5, 0x400

    .line 4016
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v29

    .line 4019
    .local v29, "targetActivity":Ljava/lang/String;
    if-nez v29, :cond_0

    .line 4020
    const-string/jumbo v4, "<activity-alias> does not specify android:targetActivity"

    const/4 v5, 0x0

    aput-object v4, p5, v5

    .line 4021
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 4022
    const/4 v4, 0x0

    return-object v4

    .line 4025
    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, p5

    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 4027
    if-nez v29, :cond_1

    .line 4028
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 4029
    const/4 v4, 0x0

    return-object v4

    .line 4032
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v4, :cond_2

    .line 4033
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4040
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 4034
    const/4 v7, 0x2

    .line 4035
    const/4 v8, 0x0

    .line 4036
    const/4 v9, 0x1

    .line 4037
    const/16 v10, 0xb

    .line 4038
    const/16 v11, 0x8

    .line 4039
    const/16 v12, 0xa

    .line 4041
    const/4 v14, 0x0

    .line 4042
    const/4 v15, 0x6

    .line 4043
    const/16 v16, 0x4

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    .line 4033
    invoke-direct/range {v4 .. v16}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4044
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string/jumbo v5, "<activity-alias>"

    iput-object v5, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 4047
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v24

    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4048
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p4

    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4050
    const/16 v28, 0x0

    .line 4052
    .local v28, "target":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 4053
    .local v17, "NA":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 4054
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/PackageParser$Activity;

    .line 4055
    .local v27, "t":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4056
    move-object/from16 v28, v27

    .line 4061
    .end local v27    # "t":Landroid/content/pm/PackageParser$Activity;
    .end local v28    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_3
    if-nez v28, :cond_5

    .line 4062
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<activity-alias> target activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4063
    const-string/jumbo v5, " not found in manifest"

    .line 4062
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, p5, v5

    .line 4064
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 4065
    const/4 v4, 0x0

    return-object v4

    .line 4053
    .restart local v27    # "t":Landroid/content/pm/PackageParser$Activity;
    .restart local v28    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 4068
    .end local v27    # "t":Landroid/content/pm/PackageParser$Activity;
    .end local v28    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_5
    new-instance v20, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v20 .. v20}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 4069
    .local v20, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 4070
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4071
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4072
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->icon:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->icon:I

    .line 4073
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->logo:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->logo:I

    .line 4074
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->banner:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->banner:I

    .line 4075
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->labelRes:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 4076
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4077
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4078
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4079
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4080
    move-object/from16 v0, v20

    iget v4, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-nez v4, :cond_6

    .line 4081
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    .line 4083
    :cond_6
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4084
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4085
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->theme:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4086
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4087
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->uiOptions:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4088
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 4089
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4090
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4091
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4092
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    move-object/from16 v0, v20

    iput-boolean v4, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    move-object/from16 v0, v20

    iput-boolean v4, v0, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    .line 4094
    new-instance v18, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 4095
    .local v18, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_7

    .line 4096
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 4097
    const/4 v4, 0x0

    return-object v4

    .line 4101
    :cond_7
    const/4 v4, 0x5

    .line 4100
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    .line 4102
    .local v25, "setExported":Z
    if-eqz v25, :cond_8

    .line 4103
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4104
    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 4103
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4109
    :cond_8
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 4108
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v26

    .line 4110
    .local v26, "str":Ljava/lang/String;
    if-eqz v26, :cond_9

    .line 4111
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 4115
    :cond_9
    const/16 v4, 0x9

    .line 4116
    const/16 v5, 0x400

    .line 4114
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 4117
    .local v23, "parentName":Ljava/lang/String;
    if-eqz v23, :cond_a

    .line 4118
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 4119
    .local v22, "parentClassName":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-nez v4, :cond_c

    .line 4120
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v22

    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 4128
    .end local v22    # "parentClassName":Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 4130
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_d

    .line 4131
    const/4 v4, 0x0

    return-object v4

    .line 4111
    .end local v23    # "parentName":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    goto :goto_1

    .line 4122
    .restart local v22    # "parentClassName":Ljava/lang/String;
    .restart local v23    # "parentName":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity alias "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4123
    const-string/jumbo v6, " specified invalid parentActivityName "

    .line 4122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, p5, v5

    goto :goto_2

    .line 4134
    .end local v22    # "parentClassName":Ljava/lang/String;
    :cond_d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v21

    .line 4136
    .local v21, "outerDepth":I
    :cond_e
    :goto_3
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v30

    .local v30, "type":I
    const/4 v4, 0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_14

    .line 4137
    const/4 v4, 0x3

    move/from16 v0, v30

    if-ne v0, v4, :cond_f

    .line 4138
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v21

    if-le v4, v0, :cond_14

    .line 4139
    :cond_f
    const/4 v4, 0x3

    move/from16 v0, v30

    if-eq v0, v4, :cond_e

    const/4 v4, 0x4

    move/from16 v0, v30

    if-eq v0, v4, :cond_e

    .line 4143
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 4144
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 4145
    .local v9, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 4146
    const/4 v4, 0x0

    return-object v4

    .line 4148
    :cond_10
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v4

    if-nez v4, :cond_11

    .line 4150
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/content/pm/PackageParser;->mTidyLog:Z

    if-nez v4, :cond_e

    .line 4151
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No actions in intent filter at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4152
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4152
    const-string/jumbo v6, " "

    .line 4151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4153
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4157
    :cond_11
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 4159
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_12
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4160
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_e

    .line 4162
    const/4 v4, 0x0

    return-object v4

    .line 4166
    :cond_13
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <activity-alias>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4167
    const-string/jumbo v6, " at "

    .line 4166
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4167
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4166
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4167
    const-string/jumbo v6, " "

    .line 4166
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4168
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4166
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4169
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 4178
    :cond_14
    if-nez v25, :cond_15

    .line 4179
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_16

    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4182
    :cond_15
    return-object v18

    .line 4179
    :cond_16
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "tag"    # Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Component",
            "<*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p4, "outInfo":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 4643
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 4645
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, "type":I
    if-eq v1, v5, :cond_3

    .line 4646
    if-ne v1, v6, :cond_1

    .line 4647
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_3

    .line 4648
    :cond_1
    if-eq v1, v6, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 4652
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4654
    iget-object v2, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 4653
    invoke-direct {p0, p1, p2, v2, p5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 4655
    const/4 v2, 0x0

    return v2

    .line 4659
    :cond_2
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown element under "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4660
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4659
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4660
    const-string/jumbo v4, " at "

    .line 4659
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4660
    iget-object v4, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4659
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4660
    const-string/jumbo v4, " "

    .line 4659
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4661
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 4659
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 4670
    :cond_3
    return v5
.end method

.method public static parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 28
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1564
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    .line 1566
    .local v20, "apkPath":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1567
    .local v21, "assets":Landroid/content/res/AssetManager;
    const/16 v26, 0x0

    .line 1569
    .local v26, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1571
    .end local v21    # "assets":Landroid/content/res/AssetManager;
    .local v2, "assets":Landroid/content/res/AssetManager;
    :try_start_1
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 1570
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 1573
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v23

    .line 1574
    .local v23, "cookie":I
    if-nez v23, :cond_0

    .line 1575
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1575
    const/16 v7, -0x64

    invoke-direct {v3, v7, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1606
    .end local v23    # "cookie":I
    :catch_0
    move-exception v24

    .local v24, "e":Ljava/lang/Exception;
    move-object/from16 v5, v26

    .line 1607
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    :try_start_2
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1608
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1607
    const/16 v7, -0x66

    move-object/from16 v0, v24

    invoke-direct {v3, v7, v6, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1609
    .end local v24    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 1610
    :goto_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1611
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1609
    throw v3

    .line 1579
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v23    # "cookie":I
    .restart local v26    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :try_start_3
    new-instance v25, Landroid/util/DisplayMetrics;

    invoke-direct/range {v25 .. v25}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1580
    .local v25, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {v25 .. v25}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 1582
    new-instance v4, Landroid/content/res/Resources;

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-direct {v4, v2, v0, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1583
    .local v4, "res":Landroid/content/res/Resources;
    const-string/jumbo v3, "AndroidManifest.xml"

    move/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v5

    .line 1587
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move/from16 v0, p1

    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_1

    .line 1589
    :try_start_4
    new-instance v27, Landroid/content/pm/PackageParser$Package;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1590
    .local v27, "tempPkg":Landroid/content/pm/PackageParser$Package;
    const-string/jumbo v3, "collectCertificates"

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1592
    const/4 v3, 0x0

    :try_start_5
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-static {v0, v1, v3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1594
    const-wide/32 v6, 0x40000

    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1596
    move-object/from16 v0, v27

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1597
    .local v8, "signatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, v27

    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1603
    .end local v8    # "signatures":[Landroid/content/pm/Signature;
    .end local v27    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :goto_2
    move-object/from16 v22, v5

    .local v22, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v3, v20

    move-object v6, v5

    move/from16 v7, p1

    .line 1604
    invoke-static/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    .line 1610
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1611
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1604
    return-object v3

    .line 1593
    .end local v22    # "attrs":Landroid/util/AttributeSet;
    .restart local v27    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v3

    .line 1594
    const-wide/32 v6, 0x40000

    :try_start_7
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1593
    throw v3
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1606
    .end local v27    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :catch_1
    move-exception v24

    .restart local v24    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1599
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v8, 0x0

    .line 1600
    .local v8, "signatures":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .local v9, "certificates":[[Ljava/security/cert/Certificate;
    goto :goto_2

    .line 1609
    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "signatures":[Landroid/content/pm/Signature;
    .end local v9    # "certificates":[[Ljava/security/cert/Certificate;
    .end local v23    # "cookie":I
    .end local v25    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v21    # "assets":Landroid/content/res/AssetManager;
    .restart local v26    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_2
    move-exception v3

    move-object/from16 v5, v26

    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v2, v21

    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    goto :goto_1

    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v21    # "assets":Landroid/content/res/AssetManager;
    :catchall_3
    move-exception v3

    move-object/from16 v5, v26

    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_1

    .line 1606
    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "assets":Landroid/content/res/AssetManager;
    :catch_2
    move-exception v24

    .restart local v24    # "e":Ljava/lang/Exception;
    move-object/from16 v5, v26

    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v2, v21

    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    goto/16 :goto_0
.end method

.method private static parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;)Landroid/content/pm/PackageParser$ApkLite;
    .locals 22
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "flags"    # I
    .param p5, "signatures"    # [Landroid/content/pm/Signature;
    .param p6, "certificates"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1692
    invoke-static/range {p2 .. p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v18

    .line 1694
    .local v18, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, -0x1

    .line 1695
    .local v8, "installLocation":I
    const/4 v6, 0x0

    .line 1696
    .local v6, "versionCode":I
    const/4 v7, 0x0

    .line 1697
    .local v7, "revisionCode":I
    const/4 v12, 0x0

    .line 1698
    .local v12, "coreApp":Z
    const/4 v13, 0x0

    .line 1699
    .local v13, "multiArch":Z
    const/4 v14, 0x0

    .line 1700
    .local v14, "use32bitAbi":Z
    const/4 v15, 0x1

    .line 1702
    .local v15, "extractNativeLibs":Z
    const/16 v17, 0x0

    .end local v12    # "coreApp":Z
    .local v17, "i":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_4

    .line 1703
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    .line 1704
    .local v16, "attr":Ljava/lang/String;
    const-string/jumbo v2, "installLocation"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1706
    const/4 v2, -0x1

    .line 1705
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v8

    .line 1702
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1707
    :cond_1
    const-string/jumbo v2, "versionCode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1708
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v6

    goto :goto_1

    .line 1709
    :cond_2
    const-string/jumbo v2, "revisionCode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1710
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v7

    goto :goto_1

    .line 1711
    :cond_3
    const-string/jumbo v2, "coreApp"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1712
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v12

    .local v12, "coreApp":Z
    goto :goto_1

    .line 1718
    .end local v12    # "coreApp":Z
    .end local v16    # "attr":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/lit8 v19, v2, 0x1

    .line 1720
    .local v19, "searchDepth":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1721
    .end local v13    # "multiArch":Z
    .end local v14    # "use32bitAbi":Z
    .end local v15    # "extractNativeLibs":Z
    .local v9, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :cond_5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, "type":I
    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_b

    .line 1722
    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_b

    .line 1723
    :cond_6
    const/4 v2, 0x3

    move/from16 v0, v20

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    move/from16 v0, v20

    if-eq v0, v2, :cond_5

    .line 1727
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_7

    const-string/jumbo v2, "package-verifier"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1728
    invoke-static/range {p1 .. p4}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/content/pm/VerifierInfo;

    move-result-object v21

    .line 1729
    .local v21, "verifier":Landroid/content/pm/VerifierInfo;
    if-eqz v21, :cond_7

    .line 1730
    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1734
    .end local v21    # "verifier":Landroid/content/pm/VerifierInfo;
    :cond_7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_5

    const-string/jumbo v2, "application"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1735
    const/16 v17, 0x0

    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_5

    .line 1736
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    .line 1737
    .restart local v16    # "attr":Ljava/lang/String;
    const-string/jumbo v2, "multiArch"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1738
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v13

    .line 1740
    :cond_8
    const-string/jumbo v2, "use32bitAbi"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1741
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v14

    .line 1743
    :cond_9
    const-string/jumbo v2, "extractNativeLibs"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1744
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v15

    .line 1735
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1750
    .end local v16    # "attr":Ljava/lang/String;
    :cond_b
    new-instance v2, Landroid/content/pm/PackageParser$ApkLite;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v2 .. v15}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;ZZZZ)V

    return-object v2
.end method

.method private parseBaseApk(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 12
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "flags"    # I
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1864
    :try_start_0
    invoke-static {p2, p2}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v8

    .line 1865
    .local v8, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 1866
    .local v9, "pkgName":Ljava/lang/String;
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 1868
    .local v11, "splitName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected base APK, but found split "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p4, v2

    .line 1870
    const/16 v0, -0x6a

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    const/4 v0, 0x0

    return-object v0

    .line 1873
    .end local v8    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v11    # "splitName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1874
    .local v7, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/16 v0, -0x6a

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1875
    const/4 v0, 0x0

    return-object v0

    .line 1878
    .end local v7    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v8    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v11    # "splitName":Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, v9}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1881
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    .line 1880
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 1884
    .local v10, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1883
    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v0, v2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1886
    const/4 v0, 0x5

    const/4 v2, 0x0

    .line 1885
    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1888
    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 1887
    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1889
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1890
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1893
    :cond_1
    const-string/jumbo v0, "coreApp"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v2, v0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    .line 1895
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 1897
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method private parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;
    .locals 34
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "assets"    # Landroid/content/res/AssetManager;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    .line 1167
    .local v23, "apkPath":Ljava/lang/String;
    const/16 v33, 0x0

    .line 1168
    .local v33, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v5, "/mnt/expand/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1169
    const/16 v5, 0x2f

    const-string/jumbo v6, "/mnt/expand/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v27

    .line 1170
    .local v27, "end":I
    const-string/jumbo v5, "/mnt/expand/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    .line 1173
    .end local v27    # "end":I
    .end local v33    # "volumeUuid":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1174
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1178
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    move-result v24

    .line 1180
    .local v24, "cookie":I
    const/16 v31, 0x0

    .line 1181
    .local v31, "res":Landroid/content/res/Resources;
    const/16 v29, 0x0

    .line 1185
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v32, Landroid/content/res/MiuiResources;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v6, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v6}, Landroid/content/res/MiuiResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    .end local v31    # "res":Landroid/content/res/Resources;
    .local v32, "res":Landroid/content/res/Resources;
    :try_start_1
    sget v22, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 1187
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v5 .. v22}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 1189
    const-string/jumbo v5, "AndroidManifest.xml"

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v29

    .line 1191
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 1192
    .local v28, "outError":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move/from16 v3, p3

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseBaseApk(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v30

    .line 1193
    .local v30, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v30, :cond_1

    .line 1194
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v29 .. v29}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v28, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1194
    invoke-direct {v5, v6, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1205
    .end local v28    # "outError":[Ljava/lang/String;
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v25

    .local v25, "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v31, v32

    .line 1206
    .end local v32    # "res":Landroid/content/res/Resources;
    :goto_0
    :try_start_2
    throw v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1210
    .end local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v5

    .line 1211
    :goto_1
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1210
    throw v5

    .line 1198
    .restart local v28    # "outError":[Ljava/lang/String;
    .restart local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :cond_1
    :try_start_3
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setVolumeUuid(Ljava/lang/String;)V

    .line 1199
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 1200
    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    .line 1201
    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageParser$Package;->setSignatures([Landroid/content/pm/Signature;)V
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1211
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1203
    return-object v30

    .line 1207
    .end local v28    # "outError":[Ljava/lang/String;
    .end local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v32    # "res":Landroid/content/res/Resources;
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v31    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v26

    .line 1208
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "res":Landroid/content/res/Resources;
    .local v26, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to read manifest from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1208
    const/16 v7, -0x66

    move-object/from16 v0, v26

    invoke-direct {v5, v7, v6, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1210
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :catchall_1
    move-exception v5

    move-object/from16 v31, v32

    .end local v32    # "res":Landroid/content/res/Resources;
    .local v31, "res":Landroid/content/res/Resources;
    goto :goto_1

    .line 1205
    .restart local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .local v31, "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v25

    .restart local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    goto :goto_0

    .line 1207
    .end local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "res":Landroid/content/res/Resources;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v26

    .restart local v26    # "e":Ljava/lang/Exception;
    move-object/from16 v31, v32

    .end local v32    # "res":Landroid/content/res/Resources;
    .local v31, "res":Landroid/content/res/Resources;
    goto :goto_2
.end method

.method private parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 9
    .param p1, "parentPkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1785
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 1786
    const/4 v2, 0x5

    .line 1785
    if-le v0, v2, :cond_0

    .line 1787
    const-string/jumbo v0, "Maximum number of packages per APK is: 5"

    const/4 v2, 0x0

    aput-object v0, p5, v2

    .line 1788
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1789
    const/4 v0, 0x0

    return v0

    .line 1793
    :cond_0
    const-string/jumbo v0, "package"

    const/4 v2, 0x0

    invoke-interface {p3, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1794
    .local v7, "childPackageName":Ljava/lang/String;
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v7, v0, v2}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1795
    const/16 v0, -0x6a

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1796
    const/4 v0, 0x0

    return v0

    .line 1800
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Child package name cannot be equal to parent package name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1802
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1801
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1803
    .local v8, "message":Ljava/lang/String;
    const-string/jumbo v0, "PackageParser"

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const/4 v0, 0x0

    aput-object v8, p5, v0

    .line 1805
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1806
    const/4 v0, 0x0

    return v0

    .line 1810
    .end local v8    # "message":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v7}, Landroid/content/pm/PackageParser$Package;->hasChildPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Duplicate child package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1812
    .restart local v8    # "message":Ljava/lang/String;
    const-string/jumbo v0, "PackageParser"

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const/4 v0, 0x0

    aput-object v8, p5, v0

    .line 1814
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1815
    const/4 v0, 0x0

    return v0

    .line 1819
    .end local v8    # "message":Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, v7}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1822
    .local v1, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1823
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1824
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1825
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1826
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 1828
    sget-object v2, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1829
    if-nez v1, :cond_4

    .line 1831
    const/4 v0, 0x0

    return v0

    .line 1835
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1836
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 1838
    :cond_5
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1839
    iput-object p1, v1, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 1841
    const/4 v0, 0x1

    return v0
.end method

.method private parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 53
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/PackageParser$Package;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1922
    .local p2, "acceptedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1923
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1924
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1925
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1928
    const/16 v20, 0x0

    .line 1931
    .local v20, "foundApp":Z
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    .line 1930
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 1934
    .local v41, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1933
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v43

    .line 1935
    .local v43, "str":Ljava/lang/String;
    if-eqz v43, :cond_1

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1936
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-static {v0, v5, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v35

    .line 1937
    .local v35, "nameError":Ljava/lang/String;
    if-eqz v35, :cond_0

    const-string/jumbo v5, "android"

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1943
    :cond_0
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 1945
    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 1944
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 1949
    .end local v35    # "nameError":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x4

    .line 1950
    const/4 v6, -0x1

    .line 1948
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 1951
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1955
    and-int/lit8 v5, p5, 0x10

    if-eqz v5, :cond_2

    .line 1956
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1960
    :cond_2
    and-int/lit8 v5, p5, 0x20

    if-eqz v5, :cond_3

    .line 1961
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1964
    :cond_3
    move/from16 v0, p5

    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_4

    .line 1965
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1969
    :cond_4
    const/16 v46, 0x1

    .line 1970
    .local v46, "supportsSmallScreens":I
    const/16 v45, 0x1

    .line 1971
    .local v45, "supportsNormalScreens":I
    const/16 v44, 0x1

    .line 1972
    .local v44, "supportsLargeScreens":I
    const/16 v47, 0x1

    .line 1973
    .local v47, "supportsXLargeScreens":I
    const/16 v40, 0x1

    .line 1974
    .local v40, "resizeable":I
    const/4 v14, 0x1

    .line 1976
    .local v14, "anyDensity":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v38

    .line 1977
    .local v38, "outerDepth":I
    :cond_5
    :goto_0
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v51

    .local v51, "type":I
    const/4 v5, 0x1

    move/from16 v0, v51

    if-eq v0, v5, :cond_46

    .line 1978
    const/4 v5, 0x3

    move/from16 v0, v51

    if-ne v0, v5, :cond_6

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    move/from16 v0, v38

    if-le v5, v0, :cond_46

    .line 1979
    :cond_6
    const/4 v5, 0x3

    move/from16 v0, v51

    if-eq v0, v5, :cond_5

    const/4 v5, 0x4

    move/from16 v0, v51

    if-eq v0, v5, :cond_5

    .line 1983
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v48

    .line 1985
    .local v48, "tagName":Ljava/lang/String;
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1993
    :cond_7
    const-string/jumbo v5, "application"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1994
    if-eqz v20, :cond_a

    .line 2000
    const-string/jumbo v5, "PackageParser"

    const-string/jumbo v6, "<manifest> has more than one <application>"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1938
    .end local v14    # "anyDensity":I
    .end local v38    # "outerDepth":I
    .end local v40    # "resizeable":I
    .end local v44    # "supportsLargeScreens":I
    .end local v45    # "supportsNormalScreens":I
    .end local v46    # "supportsSmallScreens":I
    .end local v47    # "supportsXLargeScreens":I
    .end local v48    # "tagName":Ljava/lang/String;
    .end local v51    # "type":I
    .restart local v35    # "nameError":Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1939
    const-string/jumbo v6, "\": "

    .line 1938
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 1940
    const/16 v5, -0x6b

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1941
    const/4 v5, 0x0

    return-object v5

    .line 1986
    .end local v35    # "nameError":Ljava/lang/String;
    .restart local v14    # "anyDensity":I
    .restart local v38    # "outerDepth":I
    .restart local v40    # "resizeable":I
    .restart local v44    # "supportsLargeScreens":I
    .restart local v45    # "supportsNormalScreens":I
    .restart local v46    # "supportsSmallScreens":I
    .restart local v47    # "supportsXLargeScreens":I
    .restart local v48    # "tagName":Ljava/lang/String;
    .restart local v51    # "type":I
    :cond_9
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skipping unsupported element under <manifest>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1987
    const-string/jumbo v7, " at "

    .line 1986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1987
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1987
    const-string/jumbo v7, " "

    .line 1986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1988
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 1986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2006
    :cond_a
    const/16 v20, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    .line 2007
    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2008
    const/4 v5, 0x0

    return-object v5

    .line 2010
    :cond_b
    const-string/jumbo v5, "overlay"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2012
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    .line 2011
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 2014
    const/4 v5, 0x1

    .line 2013
    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    .line 2016
    const/4 v5, 0x0

    .line 2017
    const/4 v6, -0x1

    .line 2015
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 2018
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 2020
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-nez v5, :cond_c

    .line 2021
    const-string/jumbo v5, "<overlay> does not specify a target package"

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 2022
    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2023
    const/4 v5, 0x0

    return-object v5

    .line 2025
    :cond_c
    move-object/from16 v0, p1

    iget v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    if-ltz v5, :cond_d

    move-object/from16 v0, p1

    iget v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    const/16 v6, 0x270f

    if-le v5, v6, :cond_e

    .line 2026
    :cond_d
    const-string/jumbo v5, "<overlay> priority must be between 0 and 9999"

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 2028
    const/16 v5, -0x6c

    .line 2027
    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2029
    const/4 v5, 0x0

    return-object v5

    .line 2031
    :cond_e
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2033
    :cond_f
    const-string/jumbo v5, "key-sets"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2034
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2035
    const/4 v5, 0x0

    return-object v5

    .line 2037
    :cond_10
    const-string/jumbo v5, "permission-group"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 2038
    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2039
    const/4 v5, 0x0

    return-object v5

    .line 2041
    :cond_11
    const-string/jumbo v5, "permission"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2042
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2043
    const/4 v5, 0x0

    return-object v5

    .line 2045
    :cond_12
    const-string/jumbo v5, "permission-tree"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2046
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2047
    const/4 v5, 0x0

    return-object v5

    .line 2049
    :cond_13
    const-string/jumbo v5, "uses-permission"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2050
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2051
    const/4 v5, 0x0

    return-object v5

    .line 2053
    :cond_14
    const-string/jumbo v5, "uses-permission-sdk-m"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 2054
    const-string/jumbo v5, "uses-permission-sdk-23"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2053
    if-eqz v5, :cond_16

    .line 2055
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2056
    const/4 v5, 0x0

    return-object v5

    .line 2058
    :cond_16
    const-string/jumbo v5, "uses-configuration"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2059
    new-instance v15, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v15}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 2061
    .local v15, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    .line 2060
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 2063
    const/4 v5, 0x0

    .line 2064
    const/4 v6, 0x0

    .line 2062
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 2066
    const/4 v5, 0x1

    .line 2067
    const/4 v6, 0x0

    .line 2065
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 2069
    const/4 v5, 0x2

    .line 2070
    const/4 v6, 0x0

    .line 2068
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2071
    iget v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 2074
    :cond_17
    const/4 v5, 0x3

    .line 2075
    const/4 v6, 0x0

    .line 2073
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 2077
    const/4 v5, 0x4

    .line 2078
    const/4 v6, 0x0

    .line 2076
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2079
    iget v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 2081
    :cond_18
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 2082
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v5, v15}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 2084
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2086
    .end local v15    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_19
    const-string/jumbo v5, "uses-feature"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2087
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v19

    .line 2088
    .local v19, "fi":Landroid/content/pm/FeatureInfo;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 2090
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v5, :cond_1a

    .line 2091
    new-instance v15, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v15}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 2092
    .restart local v15    # "cPref":Landroid/content/pm/ConfigurationInfo;
    move-object/from16 v0, v19

    iget v5, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 2093
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v5, v15}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 2096
    .end local v15    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_1a
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2098
    .end local v19    # "fi":Landroid/content/pm/FeatureInfo;
    :cond_1b
    const-string/jumbo v5, "feature-group"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2099
    new-instance v21, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct/range {v21 .. v21}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 2100
    .local v21, "group":Landroid/content/pm/FeatureGroupInfo;
    const/16 v18, 0x0

    .line 2101
    .local v18, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v28

    .line 2102
    .end local v18    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .local v28, "innerDepth":I
    :cond_1c
    :goto_1
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v51

    const/4 v5, 0x1

    move/from16 v0, v51

    if-eq v0, v5, :cond_1f

    .line 2103
    const/4 v5, 0x3

    move/from16 v0, v51

    if-ne v0, v5, :cond_1d

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    move/from16 v0, v28

    if-le v5, v0, :cond_1f

    .line 2104
    :cond_1d
    const/4 v5, 0x3

    move/from16 v0, v51

    if-eq v0, v5, :cond_1c

    const/4 v5, 0x4

    move/from16 v0, v51

    if-eq v0, v5, :cond_1c

    .line 2108
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 2109
    .local v29, "innerTagName":Ljava/lang/String;
    const-string/jumbo v5, "uses-feature"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2110
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v17

    .line 2113
    .local v17, "featureInfo":Landroid/content/pm/FeatureInfo;
    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v17

    iput v5, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2114
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v18

    .line 2120
    .end local v17    # "featureInfo":Landroid/content/pm/FeatureInfo;
    :goto_2
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 2116
    :cond_1e
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <feature-group>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2117
    const-string/jumbo v7, " at "

    .line 2116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2117
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 2116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2117
    const-string/jumbo v7, " "

    .line 2116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2118
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 2116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2123
    .end local v29    # "innerTagName":Ljava/lang/String;
    :cond_1f
    if-eqz v18, :cond_20

    .line 2124
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 2125
    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 2127
    :cond_20
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 2129
    .end local v21    # "group":Landroid/content/pm/FeatureGroupInfo;
    .end local v28    # "innerDepth":I
    :cond_21
    const-string/jumbo v5, "uses-sdk"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2130
    sget v5, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v5, :cond_30

    .line 2132
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    .line 2131
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 2134
    const/16 v33, 0x1

    .line 2135
    .local v33, "minVers":I
    const/16 v32, 0x0

    .line 2136
    .local v32, "minCode":Ljava/lang/String;
    const/16 v50, 0x0

    .line 2137
    .local v50, "targetVers":I
    const/16 v49, 0x0

    .line 2140
    .local v49, "targetCode":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2139
    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v52

    .line 2141
    .local v52, "val":Landroid/util/TypedValue;
    if-eqz v52, :cond_22

    .line 2142
    move-object/from16 v0, v52

    iget v5, v0, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_25

    move-object/from16 v0, v52

    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v5, :cond_25

    .line 2143
    move-object/from16 v0, v52

    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    .local v32, "minCode":Ljava/lang/String;
    move-object/from16 v49, v32

    .line 2151
    .end local v32    # "minCode":Ljava/lang/String;
    .end local v49    # "targetCode":Ljava/lang/String;
    :cond_22
    :goto_3
    const/4 v5, 0x1

    .line 2150
    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v52

    .line 2152
    if-eqz v52, :cond_23

    .line 2153
    move-object/from16 v0, v52

    iget v5, v0, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_26

    move-object/from16 v0, v52

    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v5, :cond_26

    .line 2154
    move-object/from16 v0, v52

    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v49

    .line 2155
    .local v49, "targetCode":Ljava/lang/String;
    if-nez v32, :cond_23

    .line 2156
    move-object/from16 v32, v49

    .line 2164
    .end local v49    # "targetCode":Ljava/lang/String;
    :cond_23
    :goto_4
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 2166
    if-eqz v32, :cond_2b

    .line 2167
    const/4 v13, 0x0

    .line 2168
    .local v13, "allowedCodename":Z
    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_5
    if-ge v5, v7, :cond_24

    aget-object v16, v6, v5

    .line 2169
    .local v16, "codename":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 2170
    const/4 v13, 0x1

    .line 2174
    .end local v16    # "codename":Ljava/lang/String;
    :cond_24
    if-nez v13, :cond_29

    .line 2175
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_28

    .line 2176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2177
    const-string/jumbo v6, " (current platform is any of "

    .line 2176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2178
    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2178
    const-string/jumbo v6, ")"

    .line 2176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 2183
    :goto_6
    const/16 v5, -0xc

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2184
    const/4 v5, 0x0

    return-object v5

    .line 2146
    .end local v13    # "allowedCodename":Z
    .local v32, "minCode":Ljava/lang/String;
    .local v49, "targetCode":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, v52

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v33, v0

    move/from16 v50, v33

    goto/16 :goto_3

    .line 2160
    .end local v32    # "minCode":Ljava/lang/String;
    .end local v49    # "targetCode":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v52

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v50, v0

    goto :goto_4

    .line 2168
    .restart local v13    # "allowedCodename":Z
    .restart local v16    # "codename":Ljava/lang/String;
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2180
    .end local v16    # "codename":Ljava/lang/String;
    :cond_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2181
    const-string/jumbo v6, " but this is a release platform."

    .line 2180
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p6, v6

    goto :goto_6

    .line 2186
    :cond_29
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2187
    const/16 v6, 0x2710

    .line 2186
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 2197
    .end local v13    # "allowedCodename":Z
    :goto_7
    if-eqz v49, :cond_31

    .line 2198
    const/4 v13, 0x0

    .line 2199
    .restart local v13    # "allowedCodename":Z
    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_8
    if-ge v5, v7, :cond_2a

    aget-object v16, v6, v5

    .line 2200
    .restart local v16    # "codename":Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 2201
    const/4 v13, 0x1

    .line 2205
    .end local v16    # "codename":Ljava/lang/String;
    :cond_2a
    if-nez v13, :cond_2f

    .line 2206
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2e

    .line 2207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2208
    const-string/jumbo v6, " (current platform is any of "

    .line 2207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2209
    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2209
    const-string/jumbo v6, ")"

    .line 2207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 2214
    :goto_9
    const/16 v5, -0xc

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2215
    const/4 v5, 0x0

    return-object v5

    .line 2188
    .end local v13    # "allowedCodename":Z
    :cond_2b
    sget v5, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    move/from16 v0, v33

    if-le v0, v5, :cond_2c

    .line 2189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Requires newer sdk version #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2190
    const-string/jumbo v6, " (current version is #"

    .line 2189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2190
    sget v6, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 2189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2190
    const-string/jumbo v6, ")"

    .line 2189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 2191
    const/16 v5, -0xc

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2192
    const/4 v5, 0x0

    return-object v5

    .line 2194
    :cond_2c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, v33

    iput v0, v5, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    goto/16 :goto_7

    .line 2199
    .restart local v13    # "allowedCodename":Z
    .restart local v16    # "codename":Ljava/lang/String;
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 2211
    .end local v16    # "codename":Ljava/lang/String;
    :cond_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2212
    const-string/jumbo v6, " but this is a release platform."

    .line 2211
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p6, v6

    goto :goto_9

    .line 2218
    :cond_2f
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2219
    const/16 v6, 0x2710

    .line 2218
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2225
    .end local v13    # "allowedCodename":Z
    .end local v33    # "minVers":I
    .end local v50    # "targetVers":I
    .end local v52    # "val":Landroid/util/TypedValue;
    :cond_30
    :goto_a
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2221
    .restart local v33    # "minVers":I
    .restart local v50    # "targetVers":I
    .restart local v52    # "val":Landroid/util/TypedValue;
    :cond_31
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, v50

    iput v0, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_a

    .line 2227
    .end local v33    # "minVers":I
    .end local v50    # "targetVers":I
    .end local v52    # "val":Landroid/util/TypedValue;
    :cond_32
    const-string/jumbo v5, "supports-screens"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 2229
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    .line 2228
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 2231
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2232
    const/4 v6, 0x6

    .line 2233
    const/4 v7, 0x0

    .line 2231
    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 2234
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2235
    const/4 v6, 0x7

    .line 2236
    const/4 v7, 0x0

    .line 2234
    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 2237
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2238
    const/16 v6, 0x8

    .line 2239
    const/4 v7, 0x0

    .line 2237
    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 2244
    const/4 v5, 0x1

    .line 2243
    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v46

    .line 2247
    const/4 v5, 0x2

    .line 2246
    move-object/from16 v0, v41

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v45

    .line 2250
    const/4 v5, 0x3

    .line 2249
    move-object/from16 v0, v41

    move/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v44

    .line 2253
    const/4 v5, 0x5

    .line 2252
    move-object/from16 v0, v41

    move/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v47

    .line 2256
    const/4 v5, 0x4

    .line 2255
    move-object/from16 v0, v41

    move/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v40

    .line 2259
    const/4 v5, 0x0

    .line 2258
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    .line 2262
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 2264
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2266
    :cond_33
    const-string/jumbo v5, "protected-broadcast"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 2268
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    .line 2267
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 2273
    const/4 v5, 0x0

    .line 2272
    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v34

    .line 2275
    .local v34, "name":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 2277
    if-eqz v34, :cond_35

    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_35

    .line 2278
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v5, :cond_34

    .line 2279
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 2281
    :cond_34
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 2282
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2286
    :cond_35
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2288
    .end local v34    # "name":Ljava/lang/String;
    :cond_36
    const-string/jumbo v5, "instrumentation"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2289
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2290
    const/4 v5, 0x0

    return-object v5

    .line 2292
    :cond_37
    const-string/jumbo v5, "original-package"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2294
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    .line 2293
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 2297
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2296
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v37

    .line 2298
    .local v37, "orig":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 2299
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v5, :cond_38

    .line 2300
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 2301
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 2303
    :cond_38
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2306
    :cond_39
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 2308
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2310
    .end local v37    # "orig":Ljava/lang/String;
    :cond_3a
    const-string/jumbo v5, "adopt-permissions"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 2312
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    .line 2311
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 2315
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2314
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v34

    .line 2317
    .restart local v34    # "name":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 2319
    if-eqz v34, :cond_3c

    .line 2320
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v5, :cond_3b

    .line 2321
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 2323
    :cond_3b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2326
    :cond_3c
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2328
    .end local v34    # "name":Ljava/lang/String;
    :cond_3d
    const-string/jumbo v5, "uses-gl-texture"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2330
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2333
    :cond_3e
    const-string/jumbo v5, "compatible-screens"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 2335
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2337
    :cond_3f
    const-string/jumbo v5, "supports-input"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 2338
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2341
    :cond_40
    const-string/jumbo v5, "eat-comment"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 2343
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2346
    :cond_41
    const-string/jumbo v5, "package"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 2348
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2356
    :cond_42
    const-string/jumbo v5, "restrict-update"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 2357
    and-int/lit8 v5, p5, 0x40

    if-eqz v5, :cond_44

    .line 2359
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    .line 2358
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 2361
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2360
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 2362
    .local v22, "hash":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 2364
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 2365
    if-eqz v22, :cond_44

    .line 2366
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    .line 2367
    .local v24, "hashLength":I
    div-int/lit8 v5, v24, 0x2

    new-array v0, v5, [B

    move-object/from16 v23, v0

    .line 2368
    .local v23, "hashBytes":[B
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_b
    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_43

    .line 2369
    div-int/lit8 v5, v25, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    .line 2370
    add-int/lit8 v7, v25, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 2369
    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v23, v5

    .line 2368
    add-int/lit8 v25, v25, 0x2

    goto :goto_b

    .line 2372
    :cond_43
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 2376
    .end local v22    # "hash":Ljava/lang/String;
    .end local v23    # "hashBytes":[B
    .end local v24    # "hashLength":I
    .end local v25    # "i":I
    :cond_44
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2385
    :cond_45
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <manifest>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2386
    const-string/jumbo v7, " at "

    .line 2385
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2386
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 2385
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2386
    const-string/jumbo v7, " "

    .line 2385
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2387
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 2385
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2393
    .end local v48    # "tagName":Ljava/lang/String;
    :cond_46
    if-nez v20, :cond_47

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_47

    .line 2394
    const-string/jumbo v5, "<manifest> does not contain an <application> or <instrumentation>"

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 2395
    const/16 v5, -0x6d

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2398
    :cond_47
    sget-object v5, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v11, v5

    .line 2399
    .local v11, "NP":I
    const/16 v26, 0x0

    .line 2400
    .local v26, "implicitPerms":Ljava/lang/StringBuilder;
    const/16 v30, 0x0

    .end local v26    # "implicitPerms":Ljava/lang/StringBuilder;
    .local v30, "ip":I
    :goto_c
    move/from16 v0, v30

    if-ge v0, v11, :cond_48

    .line 2402
    sget-object v5, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 2401
    aget-object v36, v5, v30

    .line 2403
    .local v36, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v36

    iget v6, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v5, v6, :cond_4b

    .line 2418
    .end local v36    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_48
    if-eqz v26, :cond_49

    .line 2419
    const-string/jumbo v5, "PackageParser"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :cond_49
    sget-object v5, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    array-length v12, v5

    .line 2423
    .local v12, "NS":I
    const/16 v31, 0x0

    .local v31, "is":I
    :goto_d
    move/from16 v0, v31

    if-ge v0, v12, :cond_4f

    .line 2425
    sget-object v5, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 2424
    aget-object v42, v5, v31

    .line 2426
    .local v42, "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v42

    iget v6, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->targetSdk:I

    if-ge v5, v6, :cond_4e

    .line 2427
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    iget-object v6, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->rootPerm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 2430
    const/16 v27, 0x0

    .local v27, "in":I
    :goto_e
    move-object/from16 v0, v42

    iget-object v5, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_4e

    .line 2431
    move-object/from16 v0, v42

    iget-object v5, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    aget-object v39, v5, v27

    .line 2432
    .local v39, "perm":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 2433
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2430
    :cond_4a
    add-int/lit8 v27, v27, 0x1

    goto :goto_e

    .line 2406
    .end local v12    # "NS":I
    .end local v27    # "in":I
    .end local v31    # "is":I
    .end local v39    # "perm":Ljava/lang/String;
    .end local v42    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    .restart local v36    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_4b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 2407
    if-nez v26, :cond_4d

    .line 2408
    new-instance v26, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2409
    .local v26, "implicitPerms":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2410
    const-string/jumbo v5, ": compat added "

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2414
    .end local v26    # "implicitPerms":Ljava/lang/StringBuilder;
    :goto_f
    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2415
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2400
    :cond_4c
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_c

    .line 2412
    :cond_4d
    const/16 v5, 0x20

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 2423
    .end local v36    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    .restart local v12    # "NS":I
    .restart local v31    # "is":I
    .restart local v42    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    :cond_4e
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_d

    .line 2438
    .end local v42    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    :cond_4f
    if-ltz v46, :cond_50

    if-lez v46, :cond_51

    .line 2439
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2440
    const/4 v6, 0x4

    .line 2439
    if-lt v5, v6, :cond_51

    .line 2441
    :cond_50
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2443
    :cond_51
    if-eqz v45, :cond_52

    .line 2444
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2446
    :cond_52
    if-ltz v44, :cond_53

    if-lez v44, :cond_54

    .line 2447
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2448
    const/4 v6, 0x4

    .line 2447
    if-lt v5, v6, :cond_54

    .line 2449
    :cond_53
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x800

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2451
    :cond_54
    if-ltz v47, :cond_55

    if-lez v47, :cond_56

    .line 2452
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2453
    const/16 v6, 0x9

    .line 2452
    if-lt v5, v6, :cond_56

    .line 2454
    :cond_55
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2456
    :cond_56
    if-ltz v40, :cond_57

    if-lez v40, :cond_58

    .line 2457
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2458
    const/4 v6, 0x4

    .line 2457
    if-lt v5, v6, :cond_58

    .line 2459
    :cond_57
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2461
    :cond_58
    if-ltz v14, :cond_59

    if-lez v14, :cond_5a

    .line 2462
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2463
    const/4 v6, 0x4

    .line 2462
    if-lt v5, v6, :cond_5a

    .line 2464
    :cond_59
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2467
    :cond_5a
    return-object p1
.end method

.method private parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 36
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2993
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2994
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 2997
    .local v27, "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    .line 2996
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 3000
    .local v8, "sa":Landroid/content/res/TypedArray;
    const-string/jumbo v7, "<application>"

    const/4 v9, 0x0

    .line 3001
    const/4 v10, 0x3

    .line 3002
    const/4 v11, 0x1

    .line 3003
    const/4 v12, 0x2

    .line 3004
    const/16 v13, 0x2a

    .line 3005
    const/16 v14, 0x16

    .line 3006
    const/16 v15, 0x1e

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    .line 2999
    invoke-static/range {v4 .. v15}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3007
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 3008
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3009
    const/4 v4, 0x0

    return v4

    .line 3012
    :cond_0
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 3013
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 3017
    :cond_1
    const/4 v4, 0x4

    .line 3018
    const/16 v6, 0x400

    .line 3016
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v25

    .line 3019
    .local v25, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v25, :cond_2

    .line 3020
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 3025
    :cond_2
    const/16 v4, 0x11

    const/4 v6, 0x1

    .line 3024
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    .line 3026
    .local v21, "allowBackup":Z
    if-eqz v21, :cond_7

    .line 3027
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const v6, 0x8000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3033
    const/16 v4, 0x10

    .line 3034
    const/16 v6, 0x400

    .line 3032
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 3035
    .local v22, "backupAgent":Ljava/lang/String;
    if-eqz v22, :cond_6

    .line 3036
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 3043
    const/16 v4, 0x12

    .line 3044
    const/4 v6, 0x1

    .line 3042
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3045
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x10000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3048
    :cond_3
    const/16 v4, 0x15

    .line 3049
    const/4 v6, 0x0

    .line 3047
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3050
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x20000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3053
    :cond_4
    const/16 v4, 0x20

    .line 3054
    const/4 v6, 0x0

    .line 3052
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3055
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x4000000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3058
    :cond_5
    const/16 v4, 0x28

    .line 3059
    const/4 v6, 0x0

    .line 3057
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3060
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3065
    :cond_6
    const/16 v4, 0x23

    .line 3064
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v35

    .line 3066
    .local v35, "v":Landroid/util/TypedValue;
    if-eqz v35, :cond_7

    move-object/from16 v0, v35

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-nez v4, :cond_7

    .line 3072
    move-object/from16 v0, v35

    iget v4, v0, Landroid/util/TypedValue;->data:I

    if-nez v4, :cond_1c

    const/4 v4, -0x1

    :goto_0
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 3080
    .end local v22    # "backupAgent":Ljava/lang/String;
    .end local v35    # "v":Landroid/util/TypedValue;
    :cond_7
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3079
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 3082
    const/16 v4, 0xd

    const/4 v6, 0x0

    .line 3081
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 3084
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8

    .line 3086
    const/16 v4, 0x8

    .line 3087
    const/4 v6, 0x0

    .line 3085
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3088
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3093
    :cond_8
    const/16 v4, 0x1b

    .line 3094
    const/4 v6, 0x0

    .line 3092
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3095
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    .line 3098
    :cond_9
    const/16 v4, 0x1c

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 3100
    .local v30, "restrictedAccountType":Ljava/lang/String;
    if-eqz v30, :cond_a

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 3101
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    .line 3104
    :cond_a
    const/16 v4, 0x1d

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 3106
    .local v29, "requiredAccountType":Ljava/lang/String;
    if-eqz v29, :cond_b

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 3107
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    .line 3111
    :cond_b
    const/16 v4, 0xa

    .line 3112
    const/4 v6, 0x0

    .line 3110
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3113
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3117
    :cond_c
    const/16 v4, 0x14

    .line 3118
    const/4 v6, 0x0

    .line 3116
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3119
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3124
    :cond_d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xe

    if-lt v4, v6, :cond_1d

    const/4 v4, 0x1

    .line 3123
    :goto_1
    const/16 v6, 0x17

    .line 3122
    invoke-virtual {v8, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 3125
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    if-eqz v4, :cond_e

    .line 3126
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x20000000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3130
    :cond_e
    const/4 v4, 0x7

    .line 3131
    const/4 v6, 0x1

    .line 3129
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3132
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3136
    :cond_f
    const/16 v4, 0xe

    .line 3137
    const/4 v6, 0x0

    .line 3135
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3138
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3142
    :cond_10
    const/4 v4, 0x5

    .line 3143
    const/4 v6, 0x1

    .line 3141
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3144
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3148
    :cond_11
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v4, :cond_12

    .line 3150
    const/16 v4, 0xf

    .line 3151
    const/4 v6, 0x0

    .line 3149
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3152
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3157
    :cond_12
    const/16 v4, 0x18

    .line 3158
    const/4 v6, 0x0

    .line 3156
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3159
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3163
    :cond_13
    const/16 v4, 0x24

    .line 3164
    const/4 v6, 0x1

    .line 3162
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 3165
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x8000000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3169
    :cond_14
    const/16 v4, 0x1a

    .line 3170
    const/4 v6, 0x0

    .line 3168
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 3171
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x400000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3175
    :cond_15
    const/16 v4, 0x21

    .line 3176
    const/4 v6, 0x0

    .line 3174
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3177
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3181
    :cond_16
    const/16 v4, 0x22

    .line 3182
    const/4 v6, 0x1

    .line 3180
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 3183
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x10000000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3187
    :cond_17
    const/16 v4, 0x26

    .line 3188
    const/4 v6, 0x0

    .line 3186
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 3189
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3192
    :cond_18
    const/16 v4, 0x27

    .line 3193
    const/4 v6, 0x0

    .line 3191
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 3194
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3198
    :cond_19
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x18

    if-lt v4, v6, :cond_1e

    const/4 v4, 0x1

    .line 3197
    :goto_2
    const/16 v6, 0x25

    invoke-virtual {v8, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3199
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3203
    :cond_1a
    const/16 v4, 0x29

    .line 3204
    const/4 v6, 0x0

    .line 3202
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 3208
    const/4 v4, 0x6

    const/4 v6, 0x0

    .line 3207
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v32

    .line 3209
    .local v32, "str":Ljava/lang/String;
    if-eqz v32, :cond_1f

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1f

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_3
    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 3211
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x8

    if-lt v4, v6, :cond_20

    .line 3213
    const/16 v4, 0xc

    .line 3214
    const/16 v6, 0x400

    .line 3212
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v32

    .line 3222
    :goto_4
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, p5

    invoke-static {v4, v6, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 3225
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-nez v4, :cond_1b

    .line 3227
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x8

    if-lt v4, v6, :cond_21

    .line 3229
    const/16 v4, 0xb

    .line 3230
    const/16 v6, 0x400

    .line 3228
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 3238
    .local v11, "pname":Ljava/lang/CharSequence;
    :goto_5
    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3239
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 3238
    const/4 v10, 0x0

    move/from16 v12, p4

    move-object/from16 v14, p5

    invoke-static/range {v9 .. v14}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3242
    const/16 v4, 0x9

    const/4 v6, 0x1

    .line 3241
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 3245
    const/16 v4, 0x1f

    const/4 v6, 0x0

    .line 3244
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3246
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x2000000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3265
    .end local v11    # "pname":Ljava/lang/CharSequence;
    :cond_1b
    const/16 v4, 0x19

    const/4 v6, 0x0

    .line 3264
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 3267
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 3269
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_22

    .line 3270
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3271
    const/4 v4, 0x0

    return v4

    .line 3072
    .end local v29    # "requiredAccountType":Ljava/lang/String;
    .end local v30    # "restrictedAccountType":Ljava/lang/String;
    .end local v32    # "str":Ljava/lang/String;
    .restart local v22    # "backupAgent":Ljava/lang/String;
    .restart local v35    # "v":Landroid/util/TypedValue;
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3124
    .end local v22    # "backupAgent":Ljava/lang/String;
    .end local v35    # "v":Landroid/util/TypedValue;
    .restart local v29    # "requiredAccountType":Ljava/lang/String;
    .restart local v30    # "restrictedAccountType":Ljava/lang/String;
    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 3198
    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 3209
    .restart local v32    # "str":Ljava/lang/String;
    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 3220
    :cond_20
    const/16 v4, 0xc

    .line 3219
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v32

    goto :goto_4

    .line 3236
    :cond_21
    const/16 v4, 0xb

    .line 3235
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "pname":Ljava/lang/CharSequence;
    goto :goto_5

    .line 3274
    .end local v11    # "pname":Ljava/lang/CharSequence;
    :cond_22
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v23

    .line 3276
    .local v23, "innerDepth":I
    :cond_23
    :goto_6
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v34

    .local v34, "type":I
    const/4 v4, 0x1

    move/from16 v0, v34

    if-eq v0, v4, :cond_36

    .line 3277
    const/4 v4, 0x3

    move/from16 v0, v34

    if-ne v0, v4, :cond_24

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v23

    if-le v4, v0, :cond_36

    .line 3278
    :cond_24
    const/4 v4, 0x3

    move/from16 v0, v34

    if-eq v0, v4, :cond_23

    const/4 v4, 0x4

    move/from16 v0, v34

    if-eq v0, v4, :cond_23

    .line 3282
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v33

    .line 3283
    .local v33, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "activity"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3285
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move/from16 v19, v0

    .line 3284
    const/16 v18, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v12 .. v19}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v20

    .line 3286
    .local v20, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v20, :cond_25

    .line 3287
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3288
    const/4 v4, 0x0

    return v4

    .line 3291
    :cond_25
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3293
    .end local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_26
    const-string/jumbo v4, "receiver"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 3294
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v12 .. v19}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v20

    .line 3295
    .restart local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v20, :cond_27

    .line 3296
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3297
    const/4 v4, 0x0

    return v4

    .line 3300
    :cond_27
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 3302
    .end local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_28
    const-string/jumbo v4, "service"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 3303
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v31

    .line 3304
    .local v31, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v31, :cond_29

    .line 3305
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3306
    const/4 v4, 0x0

    return v4

    .line 3309
    :cond_29
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 3311
    .end local v31    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_2a
    const-string/jumbo v4, "provider"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3312
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v26

    .line 3313
    .local v26, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v26, :cond_2b

    .line 3314
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3315
    const/4 v4, 0x0

    return v4

    .line 3318
    :cond_2b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 3320
    .end local v26    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_2c
    const-string/jumbo v4, "activity-alias"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3321
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v20

    .line 3322
    .restart local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v20, :cond_2d

    .line 3323
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3324
    const/4 v4, 0x0

    return v4

    .line 3327
    :cond_2d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 3329
    .end local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_2e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "meta-data"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3333
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_23

    .line 3335
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3336
    const/4 v4, 0x0

    return v4

    .line 3339
    :cond_2f
    const-string/jumbo v4, "library"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 3341
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    .line 3340
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 3346
    const/4 v4, 0x0

    .line 3345
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v24

    .line 3348
    .local v24, "lname":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 3350
    if-eqz v24, :cond_30

    .line 3351
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v24

    .line 3352
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 3353
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 3357
    :cond_30
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 3359
    .end local v24    # "lname":Ljava/lang/String;
    :cond_31
    const-string/jumbo v4, "uses-library"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 3361
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    .line 3360
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 3366
    const/4 v4, 0x0

    .line 3365
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v24

    .line 3368
    .restart local v24    # "lname":Ljava/lang/String;
    const/4 v4, 0x1

    .line 3369
    const/4 v6, 0x1

    .line 3367
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    .line 3371
    .local v28, "req":Z
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 3373
    if-eqz v24, :cond_32

    .line 3374
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v24

    .line 3375
    if-eqz v28, :cond_33

    .line 3376
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 3383
    :cond_32
    :goto_7
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 3379
    :cond_33
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3378
    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_7

    .line 3385
    .end local v24    # "lname":Ljava/lang/String;
    .end local v28    # "req":Z
    :cond_34
    const-string/jumbo v4, "uses-package"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 3388
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 3392
    :cond_35
    const-string/jumbo v4, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <application>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3393
    const-string/jumbo v7, " at "

    .line 3392
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3393
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3392
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3393
    const-string/jumbo v7, " "

    .line 3392
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3394
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 3392
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 3405
    .end local v33    # "tagName":Ljava/lang/String;
    :cond_36
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->modifySharedLibrariesForBackwardCompatibility(Landroid/content/pm/PackageParser$Package;)V

    .line 3407
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3408
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3413
    :goto_8
    const/4 v4, 0x1

    return v4

    .line 3410
    :cond_37
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v6, v6, -0x11

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_8
.end method

.method private parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 11
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v10, -0x6c

    .line 1052
    invoke-static {p1, v7}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v3

    .line 1054
    .local v3, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v8, p0, Landroid/content/pm/PackageParser;->mOnlyPowerOffAlarmApps:Z

    if-eqz v8, :cond_0

    .line 1055
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-direct {p0, v8}, Landroid/content/pm/PackageParser;->isPowerOffAlarmPackage(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1056
    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1057
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Not a powerOffAlarmApp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1056
    invoke-direct {v7, v10, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 1061
    :cond_0
    iget-boolean v8, p0, Landroid/content/pm/PackageParser;->mOnlyPowerOffAlarmApps:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v8, :cond_1

    iget-boolean v8, v3, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v8, :cond_2

    .line 1066
    :cond_1
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 1070
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-static {v0, v8, p2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    .line 1072
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1073
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v5, v8, v7

    .line 1074
    .local v5, "path":Ljava/lang/String;
    invoke-static {v0, v5, p2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1062
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "path":Ljava/lang/String;
    :cond_2
    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1063
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Not a coreApp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1062
    invoke-direct {v7, v10, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 1078
    .restart local v0    # "assets":Landroid/content/res/AssetManager;
    :cond_3
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1079
    .local v1, "baseApk":Ljava/io/File;
    invoke-direct {p0, v1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1080
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v6, :cond_4

    .line 1081
    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1082
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to parse base APK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1081
    const/16 v9, -0x64

    invoke-direct {v7, v9, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1101
    .end local v1    # "baseApk":Ljava/io/File;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v7

    .line 1102
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1101
    throw v7

    .line 1085
    .restart local v1    # "baseApk":Ljava/io/File;
    .restart local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    :try_start_2
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1086
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v4, v7

    .line 1087
    .local v4, "num":I
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 1088
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 1089
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    .line 1090
    new-array v7, v4, [I

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 1091
    new-array v7, v4, [I

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    .line 1093
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_5

    .line 1094
    invoke-direct {p0, v6, v2, v0, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    .line 1093
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1098
    .end local v2    # "i":I
    .end local v4    # "num":I
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 1099
    iget-boolean v7, v3, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1102
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1100
    return-object v6
.end method

.method private static parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 17
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 767
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 768
    .local v9, "files":[Ljava/io/File;
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 770
    const-string/jumbo v15, "No packages found in split"

    .line 769
    const/16 v16, -0x64

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 773
    :cond_0
    const/4 v12, 0x0

    .line 774
    .local v12, "packageName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 776
    .local v14, "versionCode":I
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 777
    .local v7, "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    const/4 v1, 0x0

    array-length v15, v9

    .end local v12    # "packageName":Ljava/lang/String;
    :goto_0
    if-ge v1, v15, :cond_5

    aget-object v8, v9, v1

    .line 778
    .local v8, "file":Ljava/io/File;
    invoke-static {v8}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 779
    move/from16 v0, p1

    invoke-static {v8, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v11

    .line 783
    .local v11, "lite":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v12, :cond_2

    .line 784
    iget-object v12, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 785
    .local v12, "packageName":Ljava/lang/String;
    iget v14, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 800
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 801
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 802
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Split name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 803
    const-string/jumbo v16, " defined more than once; most recent was "

    .line 802
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 801
    const/16 v16, -0x65

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 787
    :cond_2
    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 788
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 789
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Inconsistent package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 790
    const-string/jumbo v16, "; expected "

    .line 789
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 788
    const/16 v16, -0x65

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 792
    :cond_3
    iget v0, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v14, v0, :cond_1

    .line 793
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 794
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Inconsistent version "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 795
    const-string/jumbo v16, "; expected "

    .line 794
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 793
    const/16 v16, -0x65

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 777
    .end local v11    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 808
    .end local v8    # "file":Ljava/io/File;
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$ApkLite;

    .line 809
    .local v3, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v3, :cond_6

    .line 810
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 811
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Missing base APK in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 810
    const/16 v16, -0x65

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 815
    :cond_6
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 817
    .local v13, "size":I
    const/4 v4, 0x0

    .line 818
    .local v4, "splitNames":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 819
    .local v5, "splitCodePaths":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 820
    .local v6, "splitRevisionCodes":[I
    if-lez v13, :cond_7

    .line 821
    new-array v4, v13, [Ljava/lang/String;

    .line 822
    .local v4, "splitNames":[Ljava/lang/String;
    new-array v5, v13, [Ljava/lang/String;

    .line 823
    .local v5, "splitCodePaths":[Ljava/lang/String;
    new-array v6, v13, [I

    .line 825
    .local v6, "splitRevisionCodes":[I
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "splitNames":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 826
    .restart local v4    # "splitNames":[Ljava/lang/String;
    sget-object v1, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 828
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_7

    .line 829
    aget-object v1, v4, v10

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ApkLite;

    iget-object v1, v1, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    aput-object v1, v5, v10

    .line 830
    aget-object v1, v4, v10

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ApkLite;

    iget v1, v1, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    aput v1, v6, v10

    .line 828
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 834
    .end local v4    # "splitNames":[Ljava/lang/String;
    .end local v5    # "splitCodePaths":[Ljava/lang/String;
    .end local v6    # "splitRevisionCodes":[I
    .end local v10    # "i":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 835
    .local v2, "codePath":Ljava/lang/String;
    new-instance v1, Landroid/content/pm/PackageParser$PackageLite;

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v1
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 11
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2926
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    .line 2925
    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2928
    .local v9, "sa":Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_0

    .line 2929
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 2930
    const/4 v3, 0x2

    .line 2931
    const/4 v4, 0x0

    .line 2932
    const/4 v5, 0x1

    .line 2933
    const/16 v6, 0x8

    .line 2934
    const/4 v7, 0x6

    .line 2935
    const/4 v8, 0x7

    move-object v1, p1

    move-object v2, p4

    .line 2929
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 2936
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string/jumbo v1, "<instrumentation>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 2939
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v9, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 2941
    new-instance v4, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 2942
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    .line 2941
    invoke-direct {v4, v0, v1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    .line 2943
    .local v4, "a":Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    aget-object v0, p4, v0

    if-eqz v0, :cond_1

    .line 2944
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2945
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2946
    const/4 v0, 0x0

    return-object v0

    .line 2953
    :cond_1
    const/4 v0, 0x3

    .line 2952
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 2954
    .local v10, "str":Ljava/lang/String;
    iget-object v1, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 2956
    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 2957
    const/4 v1, 0x4

    .line 2958
    const/4 v2, 0x0

    .line 2956
    invoke-virtual {v9, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 2960
    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 2961
    const/4 v1, 0x5

    .line 2962
    const/4 v2, 0x0

    .line 2960
    invoke-virtual {v9, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 2964
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2966
    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 2967
    const-string/jumbo v0, "<instrumentation> does not specify targetPackage"

    const/4 v1, 0x0

    aput-object v0, p4, v1

    .line 2968
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2969
    const/4 v0, 0x0

    return-object v0

    .line 2954
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2972
    :cond_3
    const-string/jumbo v3, "<instrumentation>"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2974
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2975
    const/4 v0, 0x0

    return-object v0

    .line 2978
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2980
    return-object v4
.end method

.method private parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .locals 18
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "allowGlobs"    # Z
    .param p4, "allowAutoVerify"    # Z
    .param p5, "outInfo"    # Landroid/content/pm/PackageParser$IntentInfo;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4821
    sget-object v15, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    .line 4820
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 4824
    .local v9, "sa":Landroid/content/res/TypedArray;
    const/4 v15, 0x2

    const/16 v16, 0x0

    .line 4823
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 4825
    .local v7, "priority":I
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 4828
    const/4 v15, 0x0

    .line 4827
    invoke-virtual {v9, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 4829
    .local v13, "v":Landroid/util/TypedValue;
    if-eqz v13, :cond_0

    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p5

    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v15, :cond_0

    .line 4830
    invoke-virtual {v13}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p5

    iput-object v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4834
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x11200d6

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 4835
    .local v12, "useRoundIcon":Z
    if-eqz v12, :cond_5

    .line 4836
    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 4835
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 4837
    .local v8, "roundIconVal":I
    :goto_0
    if-eqz v8, :cond_6

    .line 4838
    move-object/from16 v0, p5

    iput v8, v0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 4845
    :goto_1
    const/4 v15, 0x3

    const/16 v16, 0x0

    .line 4844
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p5

    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 4848
    const/4 v15, 0x4

    const/16 v16, 0x0

    .line 4847
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p5

    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    .line 4850
    if-eqz p4, :cond_1

    .line 4852
    const/4 v15, 0x5

    .line 4853
    const/16 v16, 0x0

    .line 4851
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageParser$IntentInfo;->setAutoVerify(Z)V

    .line 4856
    :cond_1
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 4858
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 4860
    .local v5, "outerDepth":I
    :cond_2
    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v15, 0x1

    if-eq v11, v15, :cond_18

    .line 4861
    const/4 v15, 0x3

    if-ne v11, v15, :cond_3

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v5, :cond_18

    .line 4862
    :cond_3
    const/4 v15, 0x3

    if-eq v11, v15, :cond_2

    const/4 v15, 0x4

    if-eq v11, v15, :cond_2

    .line 4866
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4867
    .local v4, "nodeName":Ljava/lang/String;
    const-string/jumbo v15, "action"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 4869
    const-string/jumbo v15, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v16, "name"

    .line 4868
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4870
    .local v14, "value":Ljava/lang/String;
    if-eqz v14, :cond_4

    const-string/jumbo v15, ""

    if-ne v14, v15, :cond_7

    .line 4871
    :cond_4
    const-string/jumbo v15, "No value supplied for <android:name>"

    const/16 v16, 0x0

    aput-object v15, p6, v16

    .line 4872
    const/4 v15, 0x0

    return v15

    .line 4836
    .end local v4    # "nodeName":Ljava/lang/String;
    .end local v5    # "outerDepth":I
    .end local v8    # "roundIconVal":I
    .end local v11    # "type":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    .line 4841
    .restart local v8    # "roundIconVal":I
    :cond_6
    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 4840
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p5

    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    goto/16 :goto_1

    .line 4874
    .restart local v4    # "nodeName":Ljava/lang/String;
    .restart local v5    # "outerDepth":I
    .restart local v11    # "type":I
    .restart local v14    # "value":Ljava/lang/String;
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4876
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    goto :goto_2

    .line 4877
    .end local v14    # "value":Ljava/lang/String;
    :cond_8
    const-string/jumbo v15, "category"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 4879
    const-string/jumbo v15, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v16, "name"

    .line 4878
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4880
    .restart local v14    # "value":Ljava/lang/String;
    if-eqz v14, :cond_9

    const-string/jumbo v15, ""

    if-ne v14, v15, :cond_a

    .line 4881
    :cond_9
    const-string/jumbo v15, "No value supplied for <android:name>"

    const/16 v16, 0x0

    aput-object v15, p6, v16

    .line 4882
    const/4 v15, 0x0

    return v15

    .line 4884
    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4886
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4888
    .end local v14    # "value":Ljava/lang/String;
    :cond_b
    const-string/jumbo v15, "data"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 4890
    sget-object v15, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    .line 4889
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 4893
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 4892
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4894
    .local v10, "str":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 4896
    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4905
    :cond_c
    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 4904
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4906
    if-eqz v10, :cond_d

    .line 4907
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 4911
    :cond_d
    const/4 v15, 0x7

    const/16 v16, 0x0

    .line 4910
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4912
    if-eqz v10, :cond_e

    .line 4913
    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 4917
    :cond_e
    const/16 v15, 0x8

    const/16 v16, 0x0

    .line 4916
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4918
    if-eqz v10, :cond_f

    .line 4919
    const/4 v15, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 4923
    :cond_f
    const/16 v15, 0x9

    const/16 v16, 0x0

    .line 4922
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4924
    if-eqz v10, :cond_11

    .line 4925
    if-nez p3, :cond_10

    .line 4926
    const-string/jumbo v15, "sspPattern not allowed here; ssp must be literal"

    const/16 v16, 0x0

    aput-object v15, p6, v16

    .line 4927
    const/4 v15, 0x0

    return v15

    .line 4897
    :catch_0
    move-exception v2

    .line 4898
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, p6, v16

    .line 4899
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 4900
    const/4 v15, 0x0

    return v15

    .line 4929
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_10
    const/4 v15, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 4933
    :cond_11
    const/4 v15, 0x2

    const/16 v16, 0x0

    .line 4932
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 4935
    .local v3, "host":Ljava/lang/String;
    const/4 v15, 0x3

    const/16 v16, 0x0

    .line 4934
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 4936
    .local v6, "port":Ljava/lang/String;
    if-eqz v3, :cond_12

    .line 4937
    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 4941
    :cond_12
    const/4 v15, 0x4

    const/16 v16, 0x0

    .line 4940
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4942
    if-eqz v10, :cond_13

    .line 4943
    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 4947
    :cond_13
    const/4 v15, 0x5

    const/16 v16, 0x0

    .line 4946
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4948
    if-eqz v10, :cond_14

    .line 4949
    const/4 v15, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 4953
    :cond_14
    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 4952
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4954
    if-eqz v10, :cond_16

    .line 4955
    if-nez p3, :cond_15

    .line 4956
    const-string/jumbo v15, "pathPattern not allowed here; path must be literal"

    const/16 v16, 0x0

    aput-object v15, p6, v16

    .line 4957
    const/4 v15, 0x0

    return v15

    .line 4959
    :cond_15
    const/4 v15, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 4962
    :cond_16
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 4963
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 4965
    .end local v3    # "host":Ljava/lang/String;
    .end local v6    # "port":Ljava/lang/String;
    .end local v10    # "str":Ljava/lang/String;
    :cond_17
    const-string/jumbo v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unknown element under <intent-filter>: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4966
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 4965
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4966
    const-string/jumbo v17, " at "

    .line 4965
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4966
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 4965
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4966
    const-string/jumbo v17, " "

    .line 4965
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4967
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v17

    .line 4965
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4968
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 4975
    .end local v4    # "nodeName":Ljava/lang/String;
    :cond_18
    const-string/jumbo v15, "android.intent.category.DEFAULT"

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v0, p5

    iput-boolean v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 4992
    const/4 v15, 0x1

    return v15
.end method

.method private parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 27
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2620
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    .line 2621
    .local v14, "outerDepth":I
    const/4 v5, -0x1

    .line 2623
    .local v5, "currentKeySetDepth":I
    const/4 v4, 0x0

    .line 2624
    .local v4, "currentKeySet":Ljava/lang/String;
    new-instance v17, Landroid/util/ArrayMap;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArrayMap;-><init>()V

    .line 2625
    .local v17, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v23, Landroid/util/ArraySet;

    invoke-direct/range {v23 .. v23}, Landroid/util/ArraySet;-><init>()V

    .line 2626
    .local v23, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 2627
    .local v6, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 2628
    .end local v4    # "currentKeySet":Ljava/lang/String;
    .local v10, "improperKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    .local v22, "type":I
    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    .line 2629
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v14, :cond_d

    .line 2630
    :cond_1
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 2631
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-ne v0, v5, :cond_0

    .line 2632
    const/4 v4, 0x0

    .line 2633
    .restart local v4    # "currentKeySet":Ljava/lang/String;
    const/4 v5, -0x1

    goto :goto_0

    .line 2637
    .end local v4    # "currentKeySet":Ljava/lang/String;
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 2638
    .local v21, "tagName":Ljava/lang/String;
    const-string/jumbo v24, "key-set"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 2639
    if-eqz v4, :cond_3

    .line 2640
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Improperly nested \'key-set\' tag at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2641
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    .line 2640
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    .line 2642
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2643
    const/16 v24, 0x0

    return v24

    .line 2646
    :cond_3
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    .line 2645
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 2648
    .local v20, "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    .line 2647
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v12

    .line 2649
    .local v12, "keysetName":Ljava/lang/String;
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v6, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2650
    move-object v4, v12

    .line 2651
    .local v4, "currentKeySet":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 2652
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 2653
    .end local v4    # "currentKeySet":Ljava/lang/String;
    .end local v12    # "keysetName":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_4
    const-string/jumbo v24, "public-key"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 2654
    if-nez v4, :cond_5

    .line 2655
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Improperly nested \'key-set\' tag at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2656
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    .line 2655
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    .line 2657
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2658
    const/16 v24, 0x0

    return v24

    .line 2661
    :cond_5
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    .line 2660
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 2663
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    .line 2662
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v15

    .line 2665
    .local v15, "publicKeyName":Ljava/lang/String;
    const/16 v24, 0x1

    .line 2664
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    .line 2666
    .local v9, "encodedKey":Ljava/lang/String;
    if-nez v9, :cond_6

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_6

    .line 2667
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "\'public-key\' "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " must define a public-key value"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2668
    const-string/jumbo v25, " on first use at "

    .line 2667
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2668
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    .line 2667
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    .line 2669
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2670
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2671
    const/16 v24, 0x0

    return v24

    .line 2672
    :cond_6
    if-eqz v9, :cond_9

    .line 2673
    invoke-static {v9}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 2674
    .local v3, "currentKey":Ljava/security/PublicKey;
    if-nez v3, :cond_7

    .line 2675
    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2676
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    .line 2675
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2676
    const-string/jumbo v26, " key-set "

    .line 2675
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2677
    const-string/jumbo v26, " will not be added to the package\'s defined key-sets."

    .line 2675
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2679
    invoke-virtual {v10, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2680
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2683
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_8

    .line 2684
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/security/PublicKey;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 2683
    if-eqz v24, :cond_a

    .line 2687
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2697
    .end local v3    # "currentKey":Ljava/security/PublicKey;
    :cond_9
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2698
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2699
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2689
    .restart local v3    # "currentKey":Ljava/security/PublicKey;
    :cond_a
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Value of \'public-key\' "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2690
    const-string/jumbo v25, " conflicts with previously defined value at "

    .line 2689
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2691
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    .line 2689
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    .line 2692
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2693
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2694
    const/16 v24, 0x0

    return v24

    .line 2700
    .end local v3    # "currentKey":Ljava/security/PublicKey;
    .end local v9    # "encodedKey":Ljava/lang/String;
    .end local v15    # "publicKeyName":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_b
    const-string/jumbo v24, "upgrade-key-set"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 2702
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    .line 2701
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 2704
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    .line 2703
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v13

    .line 2705
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2706
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2707
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2715
    .end local v13    # "name":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_c
    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Unknown element under <key-sets>: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2716
    const-string/jumbo v26, " at "

    .line 2715
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 2715
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2716
    const-string/jumbo v26, " "

    .line 2715
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2717
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    .line 2715
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2722
    .end local v21    # "tagName":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 2723
    .local v16, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 2724
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Package"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " AndroidManifext.xml "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2725
    const-string/jumbo v25, "\'key-set\' and \'public-key\' names must be distinct."

    .line 2724
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    .line 2726
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2727
    const/16 v24, 0x0

    return v24

    .line 2729
    :cond_e
    new-instance v24, Landroid/util/ArrayMap;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 2730
    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "e$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2731
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2732
    .local v11, "keySetName":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArraySet;->size()I

    move-result v24

    if-nez v24, :cond_10

    .line 2733
    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Package"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " AndroidManifext.xml "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2734
    const-string/jumbo v26, "\'key-set\' "

    .line 2733
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2734
    const-string/jumbo v26, " has no valid associated \'public-key\'."

    .line 2733
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2735
    const-string/jumbo v26, " Not including in package\'s defined key-sets."

    .line 2733
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2737
    :cond_10
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 2738
    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Package"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " AndroidManifext.xml "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2739
    const-string/jumbo v26, "\'key-set\' "

    .line 2738
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2739
    const-string/jumbo v26, " contained improper \'public-key\'"

    .line 2738
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2740
    const-string/jumbo v26, " tags. Not including in package\'s defined key-sets."

    .line 2738
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2743
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    new-instance v25, Landroid/util/ArraySet;

    invoke-direct/range {v25 .. v25}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2744
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "s$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2745
    .local v18, "s":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-virtual/range {v17 .. v18}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/security/PublicKey;

    invoke-virtual/range {v24 .. v25}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2748
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v11    # "keySetName":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    .end local v19    # "s$iterator":Ljava/util/Iterator;
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 2749
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 2756
    const/16 v24, 0x1

    return v24

    .line 2751
    :cond_13
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Package"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " AndroidManifext.xml "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2752
    const-string/jumbo v25, "does not define all \'upgrade-key-set\'s ."

    .line 2751
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    .line 2753
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2754
    const/16 v24, 0x0

    return v24
.end method

.method private parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V
    .locals 16
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "a"    # Landroid/content/pm/PackageParser$Activity;

    .prologue
    .line 3969
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    .line 3968
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 3970
    .local v11, "sw":Landroid/content/res/TypedArray;
    const/4 v3, -0x1

    .line 3971
    .local v3, "width":I
    const/high16 v4, -0x40800000    # -1.0f

    .line 3972
    .local v4, "widthFraction":F
    const/4 v5, -0x1

    .line 3973
    .local v5, "height":I
    const/high16 v6, -0x40800000    # -1.0f

    .line 3975
    .local v6, "heightFraction":F
    const/4 v2, 0x3

    .line 3974
    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v12

    .line 3976
    .local v12, "widthType":I
    const/4 v2, 0x6

    if-ne v12, v2, :cond_2

    .line 3979
    const/high16 v2, -0x40800000    # -1.0f

    .line 3978
    const/4 v13, 0x3

    .line 3979
    const/4 v14, 0x1

    const/4 v15, 0x1

    .line 3977
    invoke-virtual {v11, v13, v14, v15, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    .line 3986
    :cond_0
    :goto_0
    const/4 v2, 0x4

    .line 3985
    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v10

    .line 3987
    .local v10, "heightType":I
    const/4 v2, 0x6

    if-ne v10, v2, :cond_3

    .line 3990
    const/high16 v2, -0x40800000    # -1.0f

    .line 3989
    const/4 v13, 0x4

    .line 3990
    const/4 v14, 0x1

    const/4 v15, 0x1

    .line 3988
    invoke-virtual {v11, v13, v14, v15, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v6

    .line 3997
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 3998
    const/16 v13, 0x11

    .line 3996
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 4000
    .local v7, "gravity":I
    const/4 v2, 0x1

    .line 4001
    const/4 v13, -0x1

    .line 3999
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 4003
    .local v8, "minWidth":I
    const/4 v2, 0x2

    .line 4004
    const/4 v13, -0x1

    .line 4002
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 4005
    .local v9, "minHeight":I
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 4006
    move-object/from16 v0, p3

    iget-object v13, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    new-instance v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v2, v13, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 3967
    return-void

    .line 3980
    .end local v7    # "gravity":I
    .end local v8    # "minWidth":I
    .end local v9    # "minHeight":I
    .end local v10    # "heightType":I
    :cond_2
    const/4 v2, 0x5

    if-ne v12, v2, :cond_0

    .line 3982
    const/4 v2, 0x3

    .line 3983
    const/4 v13, -0x1

    .line 3981
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto :goto_0

    .line 3991
    .restart local v10    # "heightType":I
    :cond_3
    const/4 v2, 0x5

    if-ne v10, v2, :cond_1

    .line 3993
    const/4 v2, 0x4

    .line 3994
    const/4 v13, -0x1

    .line 3992
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto :goto_1
.end method

.method private parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 4678
    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    .line 4677
    invoke-virtual {p1, p2, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 4680
    .local v2, "sa":Landroid/content/res/TypedArray;
    if-nez p3, :cond_0

    .line 4681
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "data":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 4684
    .restart local p3    # "data":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 4686
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 4687
    const-string/jumbo v5, "<meta-data> requires an android:name attribute"

    aput-object v5, p4, v6

    .line 4688
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4689
    return-object v4

    .line 4692
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 4695
    const/4 v7, 0x2

    .line 4694
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 4696
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_2

    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_2

    .line 4698
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4730
    .end local p3    # "data":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4732
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4734
    return-object p3

    .line 4700
    .restart local p3    # "data":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 4703
    if-eqz v3, :cond_9

    .line 4704
    iget v7, v3, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 4705
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4706
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4707
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_6

    .line 4708
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_1

    .line 4709
    :cond_6
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_7

    .line 4710
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_7

    .line 4711
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4712
    :cond_7
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    .line 4713
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 4716
    :cond_8
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4717
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4717
    const-string/jumbo v6, " at "

    .line 4716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4717
    iget-object v6, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4717
    const-string/jumbo v6, " "

    .line 4716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4718
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4725
    :cond_9
    const-string/jumbo v4, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v4, p4, v6

    .line 4726
    const/4 p3, 0x0

    .local p3, "data":Landroid/os/Bundle;
    goto/16 :goto_0
.end method

.method private static parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 6
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 760
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v2

    .line 761
    .local v2, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "packagePath":Ljava/lang/String;
    new-instance v0, Landroid/content/pm/PackageParser$PackageLite;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method private static parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 10
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "outInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "outError"    # [Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sa"    # Landroid/content/res/TypedArray;
    .param p5, "nameRequired"    # Z
    .param p6, "nameRes"    # I
    .param p7, "labelRes"    # I
    .param p8, "iconRes"    # I
    .param p9, "roundIconRes"    # I
    .param p10, "logoRes"    # I
    .param p11, "bannerRes"    # I

    .prologue
    .line 3595
    const/4 v8, 0x0

    move/from16 v0, p6

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 3596
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 3597
    if-eqz p5, :cond_1

    .line 3598
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not specify android:name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, p2, v9

    .line 3599
    const/4 v8, 0x0

    return v8

    .line 3603
    :cond_0
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v4, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3602
    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 3604
    iget-object v8, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 3605
    const/4 v8, 0x0

    return v8

    .line 3610
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11200d6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 3611
    .local v6, "useRoundIcon":Z
    if-eqz v6, :cond_6

    const/4 v8, 0x0

    move/from16 v0, p9

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 3612
    .local v5, "roundIconVal":I
    :goto_0
    if-eqz v5, :cond_7

    .line 3613
    iput v5, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 3614
    const/4 v8, 0x0

    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3623
    :cond_2
    :goto_1
    const/4 v8, 0x0

    move/from16 v0, p10

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 3624
    .local v3, "logoVal":I
    if-eqz v3, :cond_3

    .line 3625
    iput v3, p1, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 3628
    :cond_3
    const/4 v8, 0x0

    move/from16 v0, p11

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 3629
    .local v1, "bannerVal":I
    if-eqz v1, :cond_4

    .line 3630
    iput v1, p1, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 3633
    :cond_4
    move/from16 v0, p7

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    .line 3634
    .local v7, "v":Landroid/util/TypedValue;
    if-eqz v7, :cond_5

    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v8, :cond_5

    .line 3635
    invoke-virtual {v7}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3638
    :cond_5
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 3640
    const/4 v8, 0x1

    return v8

    .line 3611
    .end local v1    # "bannerVal":I
    .end local v3    # "logoVal":I
    .end local v5    # "roundIconVal":I
    .end local v7    # "v":Landroid/util/TypedValue;
    :cond_6
    const/4 v5, 0x0

    goto :goto_0

    .line 3616
    .restart local v5    # "roundIconVal":I
    :cond_7
    const/4 v8, 0x0

    move/from16 v0, p8

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 3617
    .local v2, "iconVal":I
    if-eqz v2, :cond_2

    .line 3618
    iput v2, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 3619
    const/4 v8, 0x0

    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public static parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 1
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0

    .line 754
    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0
.end method

.method private static parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/16 v10, -0x6a

    const/16 v9, -0x6c

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1650
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 1651
    if-ne v3, v8, :cond_0

    .line 1654
    :cond_1
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 1655
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1656
    const-string/jumbo v5, "No start tag found"

    .line 1655
    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1658
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "manifest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1659
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1660
    const-string/jumbo v5, "No <manifest> tag"

    .line 1659
    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1663
    :cond_3
    const-string/jumbo v4, "package"

    invoke-interface {p1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1664
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "android"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1665
    invoke-static {v1, v8, v8}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1666
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1667
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1668
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid manifest package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1667
    invoke-direct {v4, v10, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1672
    .end local v0    # "error":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "split"

    invoke-interface {p1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1673
    .local v2, "splitName":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1674
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 1675
    const/4 v2, 0x0

    .line 1685
    .end local v2    # "splitName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 1686
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 1685
    :cond_6
    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 1677
    .restart local v2    # "splitName":Ljava/lang/String;
    :cond_7
    invoke-static {v2, v7, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1678
    .restart local v0    # "error":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1679
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1680
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid manifest split: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1679
    invoke-direct {v4, v10, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 15
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2806
    new-instance v14, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2809
    .local v14, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    .line 2808
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2811
    .local v6, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2812
    const-string/jumbo v5, "<permission>"

    const/4 v7, 0x1

    .line 2813
    const/4 v8, 0x2

    .line 2814
    const/4 v9, 0x0

    .line 2815
    const/4 v10, 0x1

    .line 2816
    const/16 v11, 0x9

    .line 2817
    const/4 v12, 0x6

    .line 2818
    const/16 v13, 0x8

    move-object/from16 v2, p1

    move-object/from16 v4, p4

    .line 2811
    invoke-static/range {v2 .. v13}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2819
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2820
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2821
    const/4 v2, 0x0

    return-object v2

    .line 2826
    :cond_0
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2827
    const/4 v3, 0x4

    .line 2826
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 2828
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2829
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 2832
    :cond_1
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2833
    const/4 v3, 0x5

    .line 2834
    const/4 v4, 0x0

    .line 2832
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 2836
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2837
    const/4 v3, 0x3

    .line 2838
    const/4 v4, 0x0

    .line 2836
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2840
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2841
    const/4 v3, 0x7

    const/4 v4, 0x0

    .line 2840
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->flags:I

    .line 2843
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2845
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 2846
    const-string/jumbo v2, "<permission> does not specify protectionLevel"

    const/4 v3, 0x0

    aput-object v2, p4, v3

    .line 2847
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2848
    const/4 v2, 0x0

    return-object v2

    .line 2851
    :cond_2
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2853
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v2, v2, 0xff0

    if-eqz v2, :cond_3

    .line 2854
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v2, v2, 0xf

    .line 2855
    const/4 v3, 0x2

    .line 2854
    if-eq v2, v3, :cond_3

    .line 2856
    const-string/jumbo v2, "<permission>  protectionLevel specifies a flag but is not based on signature type"

    const/4 v3, 0x0

    aput-object v2, p4, v3

    .line 2858
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2859
    const/4 v2, 0x0

    return-object v2

    .line 2863
    :cond_3
    const-string/jumbo v10, "<permission>"

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object v11, v14

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2864
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2865
    const/4 v2, 0x0

    return-object v2

    .line 2868
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2870
    return-object v14
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;
    .locals 15
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2762
    new-instance v14, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2765
    .local v14, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    .line 2764
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2766
    .local v6, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 2767
    const-string/jumbo v5, "<permission-group>"

    const/4 v7, 0x1

    .line 2768
    const/4 v8, 0x2

    .line 2769
    const/4 v9, 0x0

    .line 2770
    const/4 v10, 0x1

    .line 2771
    const/16 v11, 0x8

    .line 2772
    const/4 v12, 0x5

    .line 2773
    const/4 v13, 0x7

    move-object/from16 v2, p1

    move-object/from16 v4, p5

    .line 2766
    invoke-static/range {v2 .. v13}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2774
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2775
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2776
    const/4 v2, 0x0

    return-object v2

    .line 2779
    :cond_0
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 2780
    const/4 v3, 0x4

    .line 2781
    const/4 v4, 0x0

    .line 2779
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 2782
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 2783
    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 2782
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 2784
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 2785
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 2784
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 2786
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget v2, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    if-lez v2, :cond_1

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_1

    .line 2787
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 2790
    :cond_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2792
    const-string/jumbo v10, "<permission-group>"

    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v11, v14

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2794
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2795
    const/4 v2, 0x0

    return-object v2

    .line 2798
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2800
    return-object v14
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 16
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2876
    new-instance v15, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2879
    .local v15, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    .line 2878
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2881
    .local v6, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2882
    const-string/jumbo v5, "<permission-tree>"

    const/4 v7, 0x1

    .line 2883
    const/4 v8, 0x2

    .line 2884
    const/4 v9, 0x0

    .line 2885
    const/4 v10, 0x1

    .line 2886
    const/4 v11, 0x5

    .line 2887
    const/4 v12, 0x3

    .line 2888
    const/4 v13, 0x4

    move-object/from16 v2, p1

    move-object/from16 v4, p4

    .line 2881
    invoke-static/range {v2 .. v13}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2889
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2890
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2891
    const/4 v2, 0x0

    return-object v2

    .line 2894
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2896
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 2897
    .local v14, "index":I
    if-lez v14, :cond_1

    .line 2898
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v3, 0x2e

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 2900
    :cond_1
    if-gez v14, :cond_2

    .line 2901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<permission-tree> name has less than three segments: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2902
    iget-object v3, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2901
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p4, v3

    .line 2903
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2904
    const/4 v2, 0x0

    return-object v2

    .line 2907
    :cond_2
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 2908
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2909
    const/4 v2, 0x1

    iput-boolean v2, v15, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 2911
    const-string/jumbo v10, "<permission-tree>"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object v11, v15

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2913
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2914
    const/4 v2, 0x0

    return-object v2

    .line 2917
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2919
    return-object v15
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;
    .locals 24
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4189
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    .line 4188
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v22

    .line 4191
    .local v22, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v5, :cond_0

    .line 4192
    new-instance v5, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4199
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 4193
    const/4 v8, 0x2

    .line 4194
    const/4 v9, 0x0

    .line 4195
    const/4 v10, 0x1

    .line 4196
    const/16 v11, 0x13

    .line 4197
    const/16 v12, 0xf

    .line 4198
    const/16 v13, 0x11

    .line 4200
    const/16 v15, 0x8

    .line 4201
    const/16 v16, 0xe

    .line 4202
    const/16 v17, 0x6

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    .line 4192
    invoke-direct/range {v5 .. v17}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4203
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string/jumbo v6, "<provider>"

    iput-object v6, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 4206
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v22

    iput-object v0, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4207
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p4

    iput v0, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4209
    new-instance v19, Landroid/content/pm/PackageParser$Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v6, Landroid/content/pm/ProviderInfo;

    invoke-direct {v6}, Landroid/content/pm/ProviderInfo;-><init>()V

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    .line 4210
    .local v19, "p":Landroid/content/pm/PackageParser$Provider;
    const/4 v5, 0x0

    aget-object v5, p5, v5

    if-eqz v5, :cond_1

    .line 4211
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    .line 4212
    const/4 v5, 0x0

    return-object v5

    .line 4215
    :cond_1
    const/16 v21, 0x0

    .line 4217
    .local v21, "providerExportedDefault":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_2

    .line 4221
    const/16 v21, 0x1

    .line 4224
    :cond_2
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4225
    const/4 v6, 0x7

    .line 4224
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 4229
    const/16 v5, 0xa

    const/4 v6, 0x0

    .line 4228
    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 4231
    .local v18, "cpname":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4232
    const/16 v6, 0xb

    .line 4233
    const/4 v7, 0x0

    .line 4231
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 4236
    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 4235
    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 4238
    .local v20, "permission":Ljava/lang/String;
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 4237
    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 4239
    .local v23, "str":Ljava/lang/String;
    if-nez v23, :cond_3

    .line 4240
    move-object/from16 v23, v20

    .line 4242
    :cond_3
    if-nez v23, :cond_7

    .line 4243
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 4249
    :goto_0
    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 4248
    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 4250
    if-nez v23, :cond_4

    .line 4251
    move-object/from16 v23, v20

    .line 4253
    :cond_4
    if-nez v23, :cond_9

    .line 4254
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 4260
    :goto_1
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4261
    const/16 v6, 0xd

    .line 4262
    const/4 v7, 0x0

    .line 4260
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 4264
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4265
    const/16 v6, 0x9

    .line 4266
    const/4 v7, 0x0

    .line 4264
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 4268
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4269
    const/16 v6, 0xc

    .line 4270
    const/4 v7, 0x0

    .line 4268
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 4272
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v6, 0x0

    iput v6, v5, Landroid/content/pm/ProviderInfo;->flags:I

    .line 4275
    const/16 v5, 0x10

    .line 4276
    const/4 v6, 0x0

    .line 4274
    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4277
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v6, v5, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v6, v7

    iput v6, v5, Landroid/content/pm/ProviderInfo;->flags:I

    .line 4278
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v5, v5, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v5, :cond_5

    move/from16 v0, p4

    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_5

    .line 4279
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Provider exported request ignored due to singleUser: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4280
    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/PackageParser$Provider;->className:Ljava/lang/String;

    .line 4279
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4280
    const-string/jumbo v7, " at "

    .line 4279
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4280
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4279
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4280
    const-string/jumbo v7, " "

    .line 4279
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4281
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 4279
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 4286
    :cond_5
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4287
    const/16 v6, 0x12

    .line 4288
    const/4 v7, 0x0

    .line 4286
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-boolean v6, v7, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->encryptionAware:Z

    .line 4289
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v5, v5, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    if-eqz v5, :cond_6

    .line 4290
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4294
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    .line 4296
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_b

    .line 4300
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v5, v6, :cond_b

    .line 4301
    const-string/jumbo v5, "Heavy-weight applications can not have providers in main process"

    const/4 v6, 0x0

    aput-object v5, p5, v6

    .line 4302
    const/4 v5, 0x0

    return-object v5

    .line 4245
    :cond_7
    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4246
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 4245
    :goto_2
    iput-object v5, v6, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto/16 :goto_0

    .line 4246
    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    .line 4256
    :cond_9
    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4257
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 4256
    :goto_3
    iput-object v5, v6, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto/16 :goto_1

    .line 4257
    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    .line 4306
    :cond_b
    if-nez v18, :cond_c

    .line 4307
    const-string/jumbo v5, "<provider> does not include authorities attribute"

    const/4 v6, 0x0

    aput-object v5, p5, v6

    .line 4308
    const/4 v5, 0x0

    return-object v5

    .line 4310
    :cond_c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_d

    .line 4311
    const-string/jumbo v5, "<provider> has empty authorities attribute"

    const/4 v6, 0x0

    aput-object v5, p5, v6

    .line 4312
    const/4 v5, 0x0

    return-object v5

    .line 4314
    :cond_d
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 4316
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 4317
    const/4 v5, 0x0

    return-object v5

    .line 4320
    :cond_e
    return-object v19
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .locals 25
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "outInfo"    # Landroid/content/pm/PackageParser$Provider;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4326
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 4328
    .local v15, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v23

    .local v23, "type":I
    const/4 v4, 0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_16

    .line 4329
    const/4 v4, 0x3

    move/from16 v0, v23

    if-ne v0, v4, :cond_1

    .line 4330
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v15, :cond_16

    .line 4331
    :cond_1
    const/4 v4, 0x3

    move/from16 v0, v23

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    move/from16 v0, v23

    if-eq v0, v4, :cond_0

    .line 4335
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4336
    new-instance v9, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 4337
    .local v9, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4338
    const/4 v4, 0x0

    return v4

    .line 4340
    :cond_2
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4342
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4344
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    .line 4343
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p3

    iput-object v4, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_0

    .line 4345
    const/4 v4, 0x0

    return v4

    .line 4348
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "grant-uri-permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4350
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    .line 4349
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v21

    .line 4352
    .local v21, "sa":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    .line 4355
    .local v17, "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4354
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 4356
    .local v22, "str":Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 4357
    new-instance v17, Landroid/os/PatternMatcher;

    .end local v17    # "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 4361
    :cond_5
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4360
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 4362
    if-eqz v22, :cond_6

    .line 4363
    new-instance v17, Landroid/os/PatternMatcher;

    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 4367
    :cond_6
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 4366
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 4368
    if-eqz v22, :cond_7

    .line 4369
    new-instance v17, Landroid/os/PatternMatcher;

    const/4 v4, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 4372
    :cond_7
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 4374
    if-eqz v17, :cond_9

    .line 4375
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v4, :cond_8

    .line 4376
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/os/PatternMatcher;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 4377
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    .line 4385
    :goto_1
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 4398
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4379
    :cond_8
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v11, v4

    .line 4380
    .local v11, "N":I
    add-int/lit8 v4, v11, 0x1

    new-array v14, v4, [Landroid/os/PatternMatcher;

    .line 4381
    .local v14, "newp":[Landroid/os/PatternMatcher;
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v14, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4382
    aput-object v17, v14, v11

    .line 4383
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v14, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    goto :goto_1

    .line 4388
    .end local v11    # "N":I
    .end local v14    # "newp":[Landroid/os/PatternMatcher;
    :cond_9
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4389
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4388
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4389
    const-string/jumbo v6, " at "

    .line 4388
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4389
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4388
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4389
    const-string/jumbo v6, " "

    .line 4388
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4390
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4388
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4391
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4400
    .end local v21    # "sa":Landroid/content/res/TypedArray;
    .end local v22    # "str":Ljava/lang/String;
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "path-permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 4402
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    .line 4401
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v21

    .line 4404
    .restart local v21    # "sa":Landroid/content/res/TypedArray;
    const/16 v16, 0x0

    .line 4407
    .local v16, "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4406
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    .line 4409
    .local v19, "permission":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4408
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 4410
    .local v20, "readPermission":Ljava/lang/String;
    if-nez v20, :cond_b

    .line 4411
    move-object/from16 v20, v19

    .line 4414
    :cond_b
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 4413
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v24

    .line 4415
    .local v24, "writePermission":Ljava/lang/String;
    if-nez v24, :cond_c

    .line 4416
    move-object/from16 v24, v19

    .line 4419
    :cond_c
    const/4 v12, 0x0

    .line 4420
    .local v12, "havePerm":Z
    if-eqz v20, :cond_d

    .line 4421
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    .line 4422
    const/4 v12, 0x1

    .line 4424
    :cond_d
    if-eqz v24, :cond_e

    .line 4425
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v24

    .line 4426
    const/4 v12, 0x1

    .line 4429
    :cond_e
    if-nez v12, :cond_f

    .line 4431
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4432
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4431
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4432
    const-string/jumbo v6, " at "

    .line 4431
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4432
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4431
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4432
    const-string/jumbo v6, " "

    .line 4431
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4433
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4431
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4443
    :cond_f
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 4442
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 4444
    .local v18, "path":Ljava/lang/String;
    if-eqz v18, :cond_10

    .line 4445
    new-instance v16, Landroid/content/pm/PathPermission;

    .line 4446
    .end local v16    # "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x0

    .line 4445
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4450
    :cond_10
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 4449
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 4451
    if-eqz v18, :cond_11

    .line 4452
    new-instance v16, Landroid/content/pm/PathPermission;

    .line 4453
    const/4 v4, 0x1

    .line 4452
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4457
    :cond_11
    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 4456
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 4458
    if-eqz v18, :cond_12

    .line 4459
    new-instance v16, Landroid/content/pm/PathPermission;

    .line 4460
    const/4 v4, 0x2

    .line 4459
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4463
    :cond_12
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 4465
    if-eqz v16, :cond_14

    .line 4466
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v4, :cond_13

    .line 4467
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/pm/PathPermission;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 4468
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    .line 4487
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4470
    :cond_13
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v11, v4

    .line 4471
    .restart local v11    # "N":I
    add-int/lit8 v4, v11, 0x1

    new-array v13, v4, [Landroid/content/pm/PathPermission;

    .line 4472
    .local v13, "newp":[Landroid/content/pm/PathPermission;
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v13, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4473
    aput-object v16, v13, v11

    .line 4474
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v13, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    goto :goto_2

    .line 4478
    .end local v11    # "N":I
    .end local v13    # "newp":[Landroid/content/pm/PathPermission;
    :cond_14
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4479
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4478
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4479
    const-string/jumbo v6, " at "

    .line 4478
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4479
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4478
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4479
    const-string/jumbo v6, " "

    .line 4478
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4480
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4478
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4491
    .end local v12    # "havePerm":Z
    .end local v18    # "path":Ljava/lang/String;
    .end local v19    # "permission":Ljava/lang/String;
    .end local v20    # "readPermission":Ljava/lang/String;
    .end local v21    # "sa":Landroid/content/res/TypedArray;
    .end local v24    # "writePermission":Ljava/lang/String;
    :cond_15
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <provider>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4492
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4491
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4492
    const-string/jumbo v6, " at "

    .line 4491
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4492
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4491
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4492
    const-string/jumbo v6, " "

    .line 4491
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4493
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4491
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4502
    :cond_16
    const/4 v4, 0x1

    return v4
.end method

.method public static final parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 9
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 4765
    if-nez p0, :cond_0

    .line 4766
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse null public key"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4767
    return-object v8

    .line 4772
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 4773
    .local v3, "encoded":[B
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4781
    .local v5, "keySpec":Ljava/security/spec/EncodedKeySpec;
    :try_start_1
    const-string/jumbo v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 4782
    .local v4, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v6

    return-object v6

    .line 4774
    .end local v3    # "encoded":[B
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_0
    move-exception v0

    .line 4775
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse verifier public key; invalid Base64"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4776
    return-object v8

    .line 4783
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "encoded":[B
    .restart local v5    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_1
    move-exception v1

    .line 4784
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse public key: RSA KeyFactory not included in build"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4791
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    :try_start_2
    const-string/jumbo v6, "EC"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 4792
    .restart local v4    # "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v6

    return-object v6

    .line 4793
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :catch_2
    move-exception v1

    .line 4794
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse public key: EC KeyFactory not included in build"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4801
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "DSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 4802
    .restart local v4    # "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v6

    return-object v6

    .line 4803
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :catch_3
    move-exception v1

    .line 4804
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse public key: DSA KeyFactory not included in build"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4810
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v8

    .line 4805
    :catch_4
    move-exception v2

    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_2

    .line 4795
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_1

    .line 4785
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_0
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;
    .locals 23
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4509
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    .line 4508
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 4511
    .local v19, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v4, :cond_0

    .line 4512
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4519
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 4513
    const/4 v7, 0x2

    .line 4514
    const/4 v8, 0x0

    .line 4515
    const/4 v9, 0x1

    .line 4516
    const/16 v10, 0xf

    .line 4517
    const/16 v11, 0x8

    .line 4518
    const/16 v12, 0xc

    .line 4520
    const/4 v14, 0x6

    .line 4521
    const/4 v15, 0x7

    .line 4522
    const/16 v16, 0x4

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    .line 4512
    invoke-direct/range {v4 .. v16}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4523
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string/jumbo v5, "<service>"

    iput-object v5, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 4526
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v19

    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4527
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p4

    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4529
    new-instance v18, Landroid/content/pm/PackageParser$Service;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v5, Landroid/content/pm/ServiceInfo;

    invoke-direct {v5}, Landroid/content/pm/ServiceInfo;-><init>()V

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    .line 4530
    .local v18, "s":Landroid/content/pm/PackageParser$Service;
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_1

    .line 4531
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 4532
    const/4 v4, 0x0

    return-object v4

    .line 4536
    :cond_1
    const/4 v4, 0x5

    .line 4535
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    .line 4537
    .local v20, "setExported":Z
    if-eqz v20, :cond_2

    .line 4538
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 4539
    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 4538
    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 4543
    :cond_2
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 4542
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 4544
    .local v21, "str":Ljava/lang/String;
    if-nez v21, :cond_8

    .line 4545
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 4550
    :goto_0
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    .line 4552
    const/16 v4, 0x9

    .line 4553
    const/4 v5, 0x0

    .line 4551
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4554
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    .line 4557
    :cond_3
    const/16 v4, 0xa

    .line 4558
    const/4 v5, 0x0

    .line 4556
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4559
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    .line 4562
    :cond_4
    const/16 v4, 0xe

    .line 4563
    const/4 v5, 0x0

    .line 4561
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4564
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    .line 4567
    :cond_5
    const/16 v4, 0xb

    .line 4568
    const/4 v5, 0x0

    .line 4566
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4569
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    .line 4570
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v4, :cond_6

    move/from16 v0, p4

    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_6

    .line 4571
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Service exported request ignored due to singleUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4572
    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/content/pm/PackageParser$Service;->className:Ljava/lang/String;

    .line 4571
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4572
    const-string/jumbo v6, " at "

    .line 4571
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4572
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4571
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4572
    const-string/jumbo v6, " "

    .line 4571
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4573
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4571
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4574
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 4575
    const/16 v20, 0x1

    .line 4579
    .end local v20    # "setExported":Z
    :cond_6
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 4580
    const/16 v5, 0xd

    .line 4581
    const/4 v6, 0x0

    .line 4579
    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-boolean v5, v6, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->encryptionAware:Z

    .line 4582
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v4, :cond_7

    .line 4583
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4587
    :cond_7
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 4589
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_a

    .line 4593
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v4, v5, :cond_a

    .line 4594
    const-string/jumbo v4, "Heavy-weight applications can not have services in main process"

    const/4 v5, 0x0

    aput-object v4, p5, v5

    .line 4595
    const/4 v4, 0x0

    return-object v4

    .line 4547
    .restart local v20    # "setExported":Z
    :cond_8
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    goto :goto_1

    .line 4599
    .end local v20    # "setExported":Z
    :cond_a
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    .line 4601
    .local v17, "outerDepth":I
    :cond_b
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    .local v22, "type":I
    const/4 v4, 0x1

    move/from16 v0, v22

    if-eq v0, v4, :cond_10

    .line 4602
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_c

    .line 4603
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v17

    if-le v4, v0, :cond_10

    .line 4604
    :cond_c
    const/4 v4, 0x3

    move/from16 v0, v22

    if-eq v0, v4, :cond_b

    const/4 v4, 0x4

    move/from16 v0, v22

    if-eq v0, v4, :cond_b

    .line 4608
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4609
    new-instance v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 4610
    .local v9, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 4611
    const/4 v4, 0x0

    return-object v4

    .line 4614
    :cond_d
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4615
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4616
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_b

    .line 4618
    const/4 v4, 0x0

    return-object v4

    .line 4622
    :cond_f
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <service>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4623
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4622
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4623
    const-string/jumbo v6, " at "

    .line 4622
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4623
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4622
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4623
    const-string/jumbo v6, " "

    .line 4622
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4624
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4622
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4625
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 4634
    :cond_10
    if-nez v20, :cond_11

    .line 4635
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_12

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, v5, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 4638
    :cond_11
    return-object v18

    .line 4635
    :cond_12
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1261
    move-object v0, p3

    .line 1264
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-static {p3, p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    .line 1266
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1267
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1268
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1269
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1273
    const/4 v1, 0x0

    .line 1275
    .local v1, "foundApp":Z
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 1276
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 1277
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_4

    .line 1278
    :cond_1
    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 1282
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1283
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "application"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1284
    if-eqz v1, :cond_2

    .line 1290
    const-string/jumbo v5, "PackageParser"

    const-string/jumbo v6, "<manifest> has more than one <application>"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1296
    :cond_2
    const/4 v1, 0x1

    .line 1297
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1298
    const/4 v5, 0x0

    return-object v5

    .line 1308
    :cond_3
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <manifest>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1309
    const-string/jumbo v7, " at "

    .line 1308
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1309
    iget-object v7, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1308
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1309
    const-string/jumbo v7, " "

    .line 1308
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1310
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 1308
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1316
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    .line 1317
    const-string/jumbo v5, "<manifest> does not contain an <application>"

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 1318
    const/16 v5, -0x6d

    iput v5, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1321
    :cond_5
    return-object p1
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .locals 28
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "splitIndex"    # I
    .param p3, "assets"    # Landroid/content/res/AssetManager;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1217
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v21, v3, p2

    .line 1219
    .local v21, "apkPath":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1220
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1224
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    move-result v22

    .line 1226
    .local v22, "cookie":I
    const/16 v26, 0x0

    .line 1227
    .local v26, "res":Landroid/content/res/Resources;
    const/16 v25, 0x0

    .line 1229
    .local v25, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v27, Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1231
    .end local v26    # "res":Landroid/content/res/Resources;
    .local v27, "res":Landroid/content/res/Resources;
    :try_start_1
    sget v20, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 1230
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v20}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 1232
    const-string/jumbo v3, "AndroidManifest.xml"

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 1234
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x1

    :try_start_2
    new-array v9, v3, [Ljava/lang/String;

    .local v9, "outError":[Ljava/lang/String;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v27

    move/from16 v7, p4

    move/from16 v8, p2

    .line 1235
    invoke-direct/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    .line 1236
    if-nez p1, :cond_0

    .line 1237
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " (at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v7, v9, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1237
    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1241
    .end local v9    # "outError":[Ljava/lang/String;
    :catch_0
    move-exception v23

    .local v23, "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v26, v27

    .line 1242
    .end local v27    # "res":Landroid/content/res/Resources;
    :goto_0
    :try_start_3
    throw v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1246
    .end local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v3

    .line 1247
    :goto_1
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1246
    throw v3

    .line 1247
    .restart local v9    # "outError":[Ljava/lang/String;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1216
    return-void

    .line 1243
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "outError":[Ljava/lang/String;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v26    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v24

    .local v24, "e":Ljava/lang/Exception;
    move-object/from16 v6, v25

    .line 1244
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_2
    :try_start_4
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to read manifest from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1244
    const/16 v5, -0x66

    move-object/from16 v0, v24

    invoke-direct {v3, v5, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1246
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v26    # "res":Landroid/content/res/Resources;
    :catchall_1
    move-exception v3

    move-object/from16 v6, v25

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_1

    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catchall_2
    move-exception v3

    move-object/from16 v6, v25

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .local v26, "res":Landroid/content/res/Resources;
    goto :goto_1

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catchall_3
    move-exception v3

    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v26    # "res":Landroid/content/res/Resources;
    goto :goto_1

    .line 1241
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .local v26, "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v23

    .restart local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v6, v25

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_0

    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v23

    .restart local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v6, v25

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .local v26, "res":Landroid/content/res/Resources;
    goto :goto_0

    .line 1243
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_4
    move-exception v24

    .restart local v24    # "e":Ljava/lang/Exception;
    move-object/from16 v6, v25

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v26    # "res":Landroid/content/res/Resources;
    goto :goto_2

    .end local v24    # "e":Ljava/lang/Exception;
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_5
    move-exception v24

    .restart local v24    # "e":Ljava/lang/Exception;
    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v26    # "res":Landroid/content/res/Resources;
    goto :goto_2
.end method

.method private parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z
    .locals 21
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3465
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    .line 3464
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 3468
    .local v18, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x7

    const/4 v5, 0x1

    .line 3467
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3469
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v5, v4, p5

    or-int/lit8 v5, v5, 0x4

    aput v5, v4, p5

    .line 3472
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    .line 3474
    .local v13, "innerDepth":I
    :cond_1
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .local v20, "type":I
    const/4 v4, 0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_12

    .line 3475
    const/4 v4, 0x3

    move/from16 v0, v20

    if-ne v0, v4, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v13, :cond_12

    .line 3476
    :cond_2
    const/4 v4, 0x3

    move/from16 v0, v20

    if-eq v0, v4, :cond_1

    const/4 v4, 0x4

    move/from16 v0, v20

    if-eq v0, v4, :cond_1

    .line 3480
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 3481
    .local v19, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "activity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3483
    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 3482
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v11}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v12

    .line 3484
    .local v12, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_3

    .line 3485
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3486
    const/4 v4, 0x0

    return v4

    .line 3489
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3491
    .end local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    const-string/jumbo v4, "receiver"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3492
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v11}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v12

    .line 3493
    .restart local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_5

    .line 3494
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3495
    const/4 v4, 0x0

    return v4

    .line 3498
    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3500
    .end local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_6
    const-string/jumbo v4, "service"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    .line 3501
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v17

    .line 3502
    .local v17, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v17, :cond_7

    .line 3503
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3504
    const/4 v4, 0x0

    return v4

    .line 3507
    :cond_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3509
    .end local v17    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_8
    const-string/jumbo v4, "provider"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    .line 3510
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v15

    .line 3511
    .local v15, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v15, :cond_9

    .line 3512
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3513
    const/4 v4, 0x0

    return v4

    .line 3516
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3518
    .end local v15    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_a
    const-string/jumbo v4, "activity-alias"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    .line 3519
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v12

    .line 3520
    .restart local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_b

    .line 3521
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3522
    const/4 v4, 0x0

    return v4

    .line 3525
    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3527
    .end local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3531
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_1

    .line 3533
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3534
    const/4 v4, 0x0

    return v4

    .line 3537
    :cond_d
    const-string/jumbo v4, "uses-library"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3539
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    .line 3538
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 3544
    const/4 v4, 0x0

    .line 3543
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v14

    .line 3546
    .local v14, "lname":Ljava/lang/String;
    const/4 v4, 0x1

    .line 3547
    const/4 v5, 0x1

    .line 3545
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 3549
    .local v16, "req":Z
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 3551
    if-eqz v14, :cond_e

    .line 3552
    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    .line 3553
    if-eqz v16, :cond_f

    .line 3555
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 3557
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3556
    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3567
    :cond_e
    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3560
    :cond_f
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 3562
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3561
    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_1

    .line 3569
    .end local v14    # "lname":Ljava/lang/String;
    .end local v16    # "req":Z
    :cond_10
    const-string/jumbo v4, "uses-package"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3572
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3576
    :cond_11
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <application>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3577
    const-string/jumbo v6, " at "

    .line 3576
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3577
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3576
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3577
    const-string/jumbo v6, " "

    .line 3576
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3578
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3576
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3589
    .end local v19    # "tagName":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x1

    return v4
.end method

.method private parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2471
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 2473
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    .line 2472
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2476
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 2479
    const/4 v2, 0x3

    .line 2478
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 2480
    iget-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2481
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 2486
    :cond_0
    const/4 v2, 0x2

    .line 2485
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2487
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2489
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2490
    return-object v0
.end method

.method private parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 2496
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    .line 2495
    invoke-virtual {p2, p3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 2500
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2503
    .local v2, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2504
    .local v1, "maxSdkVersion":I
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 2506
    .local v4, "val":Landroid/util/TypedValue;
    if-eqz v4, :cond_0

    .line 2507
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_0

    .line 2508
    iget v1, v4, Landroid/util/TypedValue;->data:I

    .line 2512
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 2514
    if-eqz v1, :cond_1

    sget v5, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-lt v1, v5, :cond_2

    .line 2515
    :cond_1
    if-eqz v2, :cond_2

    .line 2516
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2517
    .local v0, "index":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    .line 2518
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2531
    .end local v0    # "index":I
    :cond_2
    :goto_0
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2532
    return v8

    .line 2521
    .restart local v0    # "index":I
    :cond_3
    iget-boolean v5, p0, Landroid/content/pm/PackageParser;->mTidyLog:Z

    if-nez v5, :cond_2

    .line 2522
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2523
    const-string/jumbo v7, " in package: "

    .line 2522
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2523
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 2522
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2523
    const-string/jumbo v7, " at: "

    .line 2522
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2524
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 2522
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/content/pm/VerifierInfo;
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "flags"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 4740
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPackageVerifier:[I

    .line 4739
    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 4742
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 4746
    .local v1, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    .line 4745
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 4748
    .local v0, "encodedPublicKey":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 4750
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 4751
    :cond_0
    const-string/jumbo v4, "PackageParser"

    const-string/jumbo v5, "verifier package name was null; skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    return-object v7

    .line 4755
    :cond_1
    invoke-static {v0}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 4756
    .local v2, "publicKey":Ljava/security/PublicKey;
    if-nez v2, :cond_2

    .line 4757
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to parse verifier public key for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4758
    return-object v7

    .line 4761
    :cond_2
    new-instance v4, Landroid/content/pm/VerifierInfo;

    invoke-direct {v4, v1, v2}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object v4
.end method

.method public static populateCertificates(Landroid/content/pm/PackageParser$Package;[[Ljava/security/cert/Certificate;)V
    .locals 9
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "certificates"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1344
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1345
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1346
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1348
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1350
    :try_start_0
    invoke-static {p1}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v6

    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    new-instance v6, Landroid/util/ArraySet;

    array-length v7, p1

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1357
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_0

    .line 1358
    aget-object v5, p1, v3

    .line 1359
    .local v5, "signerCerts":[Ljava/security/cert/Certificate;
    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 1360
    .local v4, "signerCert":Ljava/security/cert/Certificate;
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1357
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1351
    .end local v3    # "i":I
    .end local v4    # "signerCert":Ljava/security/cert/Certificate;
    .end local v5    # "signerCerts":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v2

    .line 1353
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1354
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to collect certificates from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1353
    const/16 v8, -0x67

    invoke-direct {v6, v8, v7, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1363
    .end local v2    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v3    # "i":I
    :cond_0
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1364
    .local v0, "childCount":I
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    .line 1365
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 1366
    .local v1, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1367
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1368
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1364
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1363
    .end local v0    # "childCount":I
    .end local v1    # "childPkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_1

    .line 1343
    :cond_2
    return-void
.end method

.method public static readFullyIgnoringContents(Ljava/io/InputStream;)J
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6641
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 6642
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    .line 6643
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 6646
    :cond_0
    const/4 v2, 0x0

    .line 6647
    .local v2, "n":I
    const/4 v1, 0x0

    .line 6648
    .local v1, "count":I
    :goto_0
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 6649
    add-int/2addr v1, v2

    goto :goto_0

    .line 6652
    :cond_1
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6653
    int-to-long v4, v1

    return-wide v4
.end method

.method private static readParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)Landroid/os/Parcelable;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 6687
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6688
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 6689
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6690
    .local v0, "expectedType":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6691
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "expecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6692
    const-string/jumbo v4, " but got "

    .line 6691
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6692
    const-string/jumbo v4, " when reading parcel"

    .line 6691
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6694
    :cond_0
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    return-object v2

    .line 6696
    .end local v0    # "expectedType":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private static readParcelableList(Landroid/os/Parcel;Ljava/util/List;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)V
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 6709
    .local p1, "outList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 6710
    .local v0, "N":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 6711
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6712
    return-void

    .line 6714
    :cond_0
    const/4 v1, 0x0

    .line 6715
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6716
    invoke-static {p0, p2, p3}, Landroid/content/pm/PackageParser;->readParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6715
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6708
    :cond_1
    return-void
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0
    .param p0, "compatibilityModeEnabled"    # Z

    .prologue
    .line 6635
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 6634
    return-void
.end method

.method public static stringToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1759
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1760
    .local v0, "N":I
    new-array v2, v0, [B

    .line 1761
    .local v2, "sig":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1762
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 1761
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1764
    :cond_0
    new-instance v3, Landroid/content/pm/Signature;

    invoke-direct {v3, v2}, Landroid/content/pm/Signature;-><init>([B)V

    return-object v3
.end method

.method private static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V
    .locals 4
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6103
    sget-boolean v2, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v2, :cond_0

    .line 6104
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 6106
    :cond_0
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v2, :cond_2

    .line 6107
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 6111
    :goto_0
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v2, :cond_3

    .line 6112
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 6116
    :goto_1
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v2, :cond_4

    .line 6117
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 6121
    :goto_2
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v2, v0, :cond_5

    .line 6122
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 6129
    :cond_1
    :goto_3
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 6101
    return-void

    .line 6109
    :cond_2
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v3, -0x800001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 6114
    :cond_3
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v2, v3

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1

    .line 6119
    :cond_4
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_2

    .line 6123
    :cond_5
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 6124
    const v2, 0x8000

    and-int/2addr v2, p1

    if-eqz v2, :cond_6

    :goto_4
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4

    .line 6125
    :cond_7
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    .line 6126
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 6127
    :cond_8
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_3
.end method

.method private static validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "requireSeparator"    # Z
    .param p2, "requireFilename"    # Z

    .prologue
    .line 1617
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1618
    .local v0, "N":I
    const/4 v3, 0x0

    .line 1619
    .local v3, "hasSep":Z
    const/4 v2, 0x1

    .line 1620
    .local v2, "front":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 1621
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1622
    .local v1, "c":C
    const/16 v5, 0x61

    if-lt v1, v5, :cond_2

    const/16 v5, 0x7a

    if-gt v1, v5, :cond_2

    .line 1623
    :cond_0
    const/4 v2, 0x0

    .line 1620
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1622
    :cond_2
    const/16 v5, 0x41

    if-lt v1, v5, :cond_3

    const/16 v5, 0x5a

    if-le v1, v5, :cond_0

    .line 1626
    :cond_3
    if-nez v2, :cond_5

    .line 1627
    const/16 v5, 0x30

    if-lt v1, v5, :cond_4

    const/16 v5, 0x39

    if-le v1, v5, :cond_1

    :cond_4
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_1

    .line 1631
    :cond_5
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_6

    .line 1632
    const/4 v3, 0x1

    .line 1633
    const/4 v2, 0x1

    .line 1634
    goto :goto_1

    .line 1636
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1638
    .end local v1    # "c":C
    :cond_7
    if-eqz p2, :cond_8

    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1641
    :cond_8
    if-nez v3, :cond_a

    if-eqz p1, :cond_a

    .line 1642
    const-string/jumbo v5, "must have at least one \'.\' separator"

    .line 1641
    :goto_2
    return-object v5

    .line 1639
    :cond_9
    const-string/jumbo v5, "Invalid filename"

    return-object v5

    .line 1642
    :cond_a
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected fromCacheEntry([B)Landroid/content/pm/PackageParser$Package;
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 906
    .local v0, "p":Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v0, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 907
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 909
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParser$Package;-><init>(Landroid/os/Parcel;)V

    .line 910
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 911
    sget-object v2, Landroid/content/pm/PackageParser;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 912
    return-object v1
.end method

.method public parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 7
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v6, -0x6c

    .line 1118
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 1120
    .local v1, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v3, p0, Landroid/content/pm/PackageParser;->mOnlyPowerOffAlarmApps:Z

    if-eqz v3, :cond_0

    .line 1121
    iget-object v3, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/content/pm/PackageParser;->isPowerOffAlarmPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1122
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not a powerOffAlarmApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1122
    invoke-direct {v3, v6, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1127
    :cond_0
    iget-boolean v3, p0, Landroid/content/pm/PackageParser;->mOnlyPowerOffAlarmApps:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v3, :cond_1

    .line 1128
    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-nez v3, :cond_1

    .line 1129
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not a coreApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1129
    invoke-direct {v3, v6, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1134
    :cond_1
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 1136
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1137
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 1138
    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1139
    return-object v2

    .line 1140
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    .line 1141
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1140
    throw v3
.end method

.method public parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 889
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;
    .locals 10
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "useCaches"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 860
    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCachedResult(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 861
    .local v4, "parsed":Landroid/content/pm/PackageParser$Package;
    :cond_0
    if-eqz v4, :cond_1

    .line 862
    return-object v4

    .line 865
    :cond_1
    sget-boolean v5, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 866
    .local v2, "parseTime":J
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 867
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 872
    :goto_1
    sget-boolean v5, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    if-eqz v5, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 873
    .local v0, "cacheTime":J
    :goto_2
    invoke-direct {p0, p1, p2, v4}, Landroid/content/pm/PackageParser;->cacheResult(Ljava/io/File;ILandroid/content/pm/PackageParser$Package;)V

    .line 874
    sget-boolean v5, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    if-eqz v5, :cond_2

    .line 875
    sub-long v2, v0, v2

    .line 876
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 877
    add-long v6, v2, v0

    const-wide/16 v8, 0x64

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 878
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Parse times for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\': parse="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 879
    const-string/jumbo v7, "ms, update_cache="

    .line 878
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 879
    const-string/jumbo v7, " ms"

    .line 878
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_2
    return-object v4

    .line 865
    .end local v0    # "cacheTime":J
    .end local v2    # "parseTime":J
    :cond_3
    const-wide/16 v2, 0x0

    .restart local v2    # "parseTime":J
    goto :goto_0

    .line 869
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    goto :goto_1

    .line 872
    :cond_5
    const-wide/16 v0, 0x0

    .restart local v0    # "cacheTime":J
    goto :goto_2
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 504
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    .line 503
    return-void
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 493
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 492
    return-void
.end method

.method public setOnlyCoreApps(Z)V
    .locals 0
    .param p1, "onlyCoreApps"    # Z

    .prologue
    .line 489
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    .line 488
    return-void
.end method

.method public setOnlyPowerOffAlarmApps(Z)V
    .locals 0
    .param p1, "onlyPowerOffAlarmApps"    # Z

    .prologue
    .line 497
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyPowerOffAlarmApps:Z

    .line 496
    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0
    .param p1, "procs"    # [Ljava/lang/String;

    .prologue
    .line 480
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 479
    return-void
.end method

.method protected toCacheEntry(Landroid/content/pm/PackageParser$Package;)[B
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 918
    .local v0, "p":Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageParser$Package;->writeToParcel(Landroid/os/Parcel;I)V

    .line 919
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 920
    .local v1, "serialized":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 922
    return-object v1
.end method
