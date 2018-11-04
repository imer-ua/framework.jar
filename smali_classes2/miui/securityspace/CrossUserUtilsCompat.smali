.class Lmiui/securityspace/CrossUserUtilsCompat;
.super Ljava/lang/Object;
.source "CrossUserUtilsCompat.java"


# static fields
.field public static final FLAG_XSPACE_PROFILE:I = 0x800000

.field public static final OWNER_SHARED_USER_GID:I

.field public static final XSPACE_SHARED_USER_GID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v0

    sput v0, Lmiui/securityspace/CrossUserUtilsCompat;->OWNER_SHARED_USER_GID:I

    .line 40
    const/16 v0, 0x3e7

    invoke-static {v0}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v0

    sput v0, Lmiui/securityspace/CrossUserUtilsCompat;->XSPACE_SHARED_USER_GID:I

    .line 25
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUserIdForUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .prologue
    .line 48
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .end local p0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object p0

    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-static {p0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method public static addUserIdForUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 55
    const-string/jumbo v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 56
    .local v0, "userId":I
    if-eq v0, v2, :cond_0

    .line 57
    invoke-static {p1, p2}, Lmiui/securityspace/CrossUserUtilsCompat;->checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {p0, v0}, Lmiui/securityspace/CrossUserUtilsCompat;->addUserIdForUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 61
    :cond_0
    return-object p0
.end method

.method public static checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 72
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 73
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 74
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    .local v1, "callingPackageUid":I
    const/16 v5, 0x3e8

    if-gt v1, v5, :cond_0

    .line 76
    const/4 v5, 0x1

    return v5

    .line 78
    :cond_0
    return v6

    .line 83
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "callingPackageUid":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    return v6

    .line 81
    :catch_1
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOriginalAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 141
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 143
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 142
    invoke-static {v3, p1, v4, v5, v0}, Landroid/app/MiuiThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 144
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 145
    invoke-virtual {v3, v0, v0}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    :cond_0
    return-object v1

    .line 148
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    return-object v6
.end method

.method public static getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v2, 0x0

    .line 95
    if-nez p1, :cond_0

    .line 96
    return-object v2

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 99
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 101
    nop

    nop

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lmiui/securityspace/CrossUserUtils;->createDrawableWithCache(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 104
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method static hasSecondSpace(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, -0x2710

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    const-string/jumbo v1, "second_user_id"

    .line 155
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hasXSpaceUser(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 160
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 161
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-virtual {v2, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 162
    .local v3, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 163
    .local v0, "profile":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    const/4 v4, 0x1

    return v4

    .line 167
    .end local v0    # "profile":Landroid/content/pm/UserInfo;
    :cond_1
    return v5
.end method

.method public static startActivityAsCaller(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 127
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 129
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 124
    return-void

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 130
    throw v0
.end method
