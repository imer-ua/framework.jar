.class public Landroid/graphics/improve/SRUtils;
.super Ljava/lang/Object;
.source "SRUtils.java"


# static fields
.field public static final PKG_MM:Ljava/lang/String; = "com.tencent.mm"

.field public static final PKG_NEWS:Ljava/lang/String; = "com.ss.android.article.news"

.field private static final PROD_CAPRICORN:Ljava/lang/String; = "capricorn"

.field private static final PROD_CHIRON:Ljava/lang/String; = "chiron"

.field private static final PROD_CLOVER:Ljava/lang/String; = "clover"

.field private static final PROD_DIPPER:Ljava/lang/String; = "dipper"

.field private static final PROD_EQUULEUS:Ljava/lang/String; = "equuleus"

.field private static final PROD_GEMINI:Ljava/lang/String; = "gemini"

.field private static final PROD_JASON:Ljava/lang/String; = "jason"

.field private static final PROD_LITHIUM:Ljava/lang/String; = "lithium"

.field private static final PROD_NATRIUM:Ljava/lang/String; = "natrium"

.field private static final PROD_POLARIS:Ljava/lang/String; = "polaris"

.field private static final PROD_SAGIT:Ljava/lang/String; = "sagit"

.field private static final PROD_SCORPIO:Ljava/lang/String; = "scorpio"

.field private static final PROD_SIRIUS:Ljava/lang/String; = "sirius"

.field private static final PROD_URSA:Ljava/lang/String; = "ursa"

.field private static final PROD_WAYNE:Ljava/lang/String; = "wayne"

.field private static final PROP_LAB_TOGGLE:Ljava/lang/String; = "persist.sys.sr_lab"

.field private static final PROP_LOCAL_TOGGLE:Ljava/lang/String; = "persist.sys.sr_local"

.field private static final PROP_SERVER_TOGGLE:Ljava/lang/String; = "persist.sys.resolution"

.field public static sAccessAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sProductList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sSelfProductList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/graphics/improve/SRUtils;->sAccessAppList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/graphics/improve/SRUtils;->sSelfProductList:Ljava/util/ArrayList;

    .line 42
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "chiron"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "sagit"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "polaris"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "dipper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "sirius"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "ursa"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "gemini"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "scorpio"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "lithium"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "wayne"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "clover"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "capricorn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "natrium"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "jason"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Landroid/graphics/improve/SRUtils;->sAccessAppList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Landroid/graphics/improve/SRUtils;->sAccessAppList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.ss.android.article.news"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Landroid/graphics/improve/SRUtils;->sSelfProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "dipper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Landroid/graphics/improve/SRUtils;->sSelfProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "chiron"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Landroid/graphics/improve/SRUtils;->sSelfProductList:Ljava/util/ArrayList;

    const-string/jumbo v1, "jason"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPkgFromProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "value":Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/improve/SRUtils;->getAppPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "propStr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    invoke-static {p1}, Landroid/graphics/improve/SRUtils;->getAppPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    :cond_0
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static getAppPropStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAccessSR()Z
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "com.tencent.mm"

    invoke-static {v0}, Landroid/graphics/improve/SRUtils;->isAppAccessSR(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.ss.android.article.news"

    invoke-static {v0}, Landroid/graphics/improve/SRUtils;->isAppAccessSR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isAppAccessSR(Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-static {p0}, Landroid/graphics/improve/SRUtils;->isCloundAccessSR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/graphics/improve/SRUtils;->isLocalAccessSR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.sys.sr_lab"

    new-array v1, v3, [Ljava/lang/String;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/improve/SRUtils;->isPropContainPkgs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    return v3

    .line 101
    :cond_0
    return v2
.end method

.method public static isCloundAccessSR(Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 90
    const-string/jumbo v2, "persist.sys.resolution"

    new-array v3, v1, [Ljava/lang/String;

    aput-object p0, v3, v0

    invoke-static {v2, v3}, Landroid/graphics/improve/SRUtils;->isPropContainPkgs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isInAppAccessList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v0, Landroid/graphics/improve/SRUtils;->sAccessAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLocalAccessSR(Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    const-string/jumbo v2, "persist.sys.sr_local"

    new-array v3, v1, [Ljava/lang/String;

    aput-object p0, v3, v0

    invoke-static {v2, v3}, Landroid/graphics/improve/SRUtils;->isPropContainPkgs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isProductAccessSR()Z
    .locals 2

    .prologue
    .line 79
    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    sget-object v1, Lmiui/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs isPropContainPkgs(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "pkgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 143
    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    .line 144
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "value":Ljava/lang/String;
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, p1, v2

    .line 146
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 147
    return v3

    .line 145
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 152
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method public static isSupportSelfArithmetic()Z
    .locals 2

    .prologue
    .line 86
    sget-object v0, Landroid/graphics/improve/SRUtils;->sSelfProductList:Ljava/util/ArrayList;

    sget-object v1, Lmiui/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static localCloseSR(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string/jumbo v0, "persist.sys.sr_local"

    invoke-static {v0, p0}, Landroid/graphics/improve/SRUtils;->addPkgFromProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static localOpenSR(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string/jumbo v0, "persist.sys.sr_local"

    invoke-static {v0, p0}, Landroid/graphics/improve/SRUtils;->removePkgFromProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static removePkgFromProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "value":Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/improve/SRUtils;->getAppPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "propStr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 139
    :cond_0
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static userCloseSR(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string/jumbo v0, "persist.sys.sr_lab"

    invoke-static {v0, p0}, Landroid/graphics/improve/SRUtils;->removePkgFromProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static userOpenSR(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string/jumbo v0, "persist.sys.sr_lab"

    invoke-static {v0, p0}, Landroid/graphics/improve/SRUtils;->addPkgFromProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method
