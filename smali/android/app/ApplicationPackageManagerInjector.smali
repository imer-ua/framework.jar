.class public Landroid/app/ApplicationPackageManagerInjector;
.super Ljava/lang/Object;
.source "ApplicationPackageManagerInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationPackageManagerInjector"

.field private static final sNetflixPackage:Ljava/lang/String; = "com.netflix.mediaclient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hookGetBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "badgeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "badgeLocation"    # Landroid/graphics/Rect;

    .prologue
    .line 23
    instance-of v0, p0, Lmiui/maml/MamlDrawable;

    if-eqz v0, :cond_0

    .line 24
    nop

    nop

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1, p2}, Lmiui/maml/MamlDrawable;->setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 25
    const/4 v0, 0x1

    return v0

    .line 27
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hookGetPackageInfo(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "flags"    # I

    .prologue
    .line 39
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    .line 40
    return-object p1

    .line 43
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v1, "com.netflix.mediaclient"

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/MiuiInit;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    return-object p1

    .line 44
    :cond_1
    return-object p1

    .line 53
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 54
    .local v0, "appId":I
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 55
    return-object p1

    .line 57
    :cond_3
    const-string/jumbo v1, "ApplicationPackageManagerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HookPackageInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
    const-string/jumbo v3, " with version "

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
    iget v3, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
    const-string/jumbo v3, " from appId "

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 61
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/MiuiInit;->getPreinstalledAppVersion(Ljava/lang/String;)I

    move-result v1

    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v1, v2, :cond_4

    .line 62
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 65
    :cond_4
    return-object p1
.end method
