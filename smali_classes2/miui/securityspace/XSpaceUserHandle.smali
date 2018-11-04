.class public Lmiui/securityspace/XSpaceUserHandle;
.super Ljava/lang/Object;
.source "XSpaceUserHandle.java"


# static fields
.field public static final EXTRA_AUTH_CALL_XSPACE:Ljava/lang/String; = "android.intent.extra.auth_to_call_xspace"

.field public static final FLAG_XSPACE_PROFILE:I = 0x800000

.field public static final OWNER_SHARED_USER_GID:I

.field public static final USER_XSPACE:I = 0x3e7

.field public static final XSPACE_ICON_MASK_ID:I = 0x11020066

.field public static final XSPACE_SHARED_USER_GID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lmiui/securityspace/CrossUserUtilsCompat;->OWNER_SHARED_USER_GID:I

    sput v0, Lmiui/securityspace/XSpaceUserHandle;->OWNER_SHARED_USER_GID:I

    .line 46
    sget v0, Lmiui/securityspace/CrossUserUtilsCompat;->XSPACE_SHARED_USER_GID:I

    sput v0, Lmiui/securityspace/XSpaceUserHandle;->XSPACE_SHARED_USER_GID:I

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndGetXSpaceUserId(II)I
    .locals 1
    .param p0, "flags"    # I
    .param p1, "defUserId"    # I

    .prologue
    .line 49
    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/16 v0, 0x3e7

    return v0

    .line 51
    :cond_0
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    add-int/lit8 p1, p1, 0x1

    return p1

    .line 54
    :cond_1
    return p1
.end method

.method public static getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 99
    new-instance v0, Landroid/os/UserHandle;

    const/16 v1, 0x3e7

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 100
    .local v0, "userHandle":Landroid/os/UserHandle;
    invoke-static {p0, p1, v0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "uid"    # I

    .prologue
    .line 94
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 95
    .local v0, "userHandle":Landroid/os/UserHandle;
    invoke-static {p0, p1, v0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 86
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p0, p1, p2}, Lmiui/securityspace/CrossUserUtilsCompat;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    return-object p1
.end method

.method public static isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 104
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 106
    :cond_0
    return v2

    .line 104
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 109
    :try_start_0
    const-string/jumbo v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 110
    const/4 v4, 0x0

    const/16 v5, 0x3e7

    .line 109
    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 111
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 112
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public static isSelfXSpaceUser()Z
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    return v0
.end method

.method public static isUidBelongtoXSpace(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 78
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    return v0
.end method

.method public static isXSpaceUser(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .param p0, "userinfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 70
    if-eqz p0, :cond_0

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserFlag(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXSpaceUser(Landroid/os/UserHandle;)Z
    .locals 1
    .param p0, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 74
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXSpaceUserCalling()Z
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    return v0
.end method

.method public static isXSpaceUserFlag(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/high16 v1, 0x800000

    .line 82
    and-int v0, p0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXSpaceUserId(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 58
    const/16 v0, 0x3e7

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
