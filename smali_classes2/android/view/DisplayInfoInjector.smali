.class public Landroid/view/DisplayInfoInjector;
.super Ljava/lang/Object;
.source "DisplayInfoInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayInfoInjector$1;
    }
.end annotation


# static fields
.field private static final NOTCH_BLACK_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAppName:Ljava/lang/String;

.field private static mNotchConfig:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Landroid/view/DisplayInfoInjector$1;

    invoke-direct {v0}, Landroid/view/DisplayInfoInjector$1;-><init>()V

    sput-object v0, Landroid/view/DisplayInfoInjector;->NOTCH_BLACK_LIST:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustHeightIfNeeded(Landroid/content/res/Configuration;IIILjava/lang/String;)I
    .locals 6
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .param p1, "height"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    if-eqz p0, :cond_1

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_1

    .line 62
    :cond_0
    if-ne p1, p3, :cond_2

    sget-boolean v3, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    .line 61
    if-eqz v3, :cond_2

    .line 63
    const-string/jumbo v3, "persist.sys.miui_optimization"

    const-string/jumbo v4, "1"

    const-string/jumbo v5, "ro.miui.cts"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_0
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 64
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 65
    .local v0, "uid":I
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_4

    .line 66
    return p1

    .line 61
    .end local v0    # "uid":I
    :cond_1
    if-lt p2, p3, :cond_0

    .line 78
    :cond_2
    :goto_1
    return p1

    :cond_3
    move v1, v2

    .line 63
    goto :goto_0

    .line 68
    .restart local v0    # "uid":I
    :cond_4
    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 69
    invoke-static {v0}, Landroid/view/DisplayInfoInjector;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    .line 70
    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/MiuiInit;->getNotchConfig(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    .line 72
    :cond_5
    sget v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_2

    .line 73
    sget-object v1, Landroid/view/DisplayInfoInjector;->NOTCH_BLACK_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 74
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    const v2, 0x105001b

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_1
.end method

.method static adjustWidthIfNeeded(Landroid/content/res/Configuration;IIILjava/lang/String;)I
    .locals 5
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .param p1, "width"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 41
    if-eqz p0, :cond_1

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 42
    :cond_0
    if-ne p1, p2, :cond_2

    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    .line 41
    if-eqz v2, :cond_2

    .line 43
    const-string/jumbo v2, "persist.sys.miui_optimization"

    const-string/jumbo v3, "1"

    const-string/jumbo v4, "ro.miui.cts"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 44
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 45
    .local v0, "uid":I
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_4

    .line 46
    return p1

    .line 41
    .end local v0    # "uid":I
    :cond_1
    if-gt p2, p3, :cond_0

    .line 57
    :cond_2
    :goto_1
    return p1

    .line 43
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 48
    .restart local v0    # "uid":I
    :cond_4
    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 49
    invoke-static {v0}, Landroid/view/DisplayInfoInjector;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    .line 50
    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/MiuiInit;->getNotchConfig(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    .line 52
    :cond_5
    sget v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_2

    .line 53
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 54
    const v2, 0x105001b

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_1
.end method

.method static getAppName(I)Ljava/lang/String;
    .locals 5
    .param p0, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 82
    const-string/jumbo v0, ""

    .line 83
    .local v0, "appName":Ljava/lang/String;
    const/16 v3, 0x2710

    if-ge p0, v3, :cond_0

    .line 84
    return-object v0

    .line 86
    :cond_0
    const/4 v2, 0x0

    .line 88
    .local v2, "packageNames":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 91
    .end local v2    # "packageNames":[Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 92
    aget-object v0, v2, v4

    .line 94
    :cond_1
    return-object v0

    .line 89
    .restart local v2    # "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
