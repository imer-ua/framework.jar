.class public Lmiui/securitycenter/utils/SecurityCenterHelper;
.super Ljava/lang/Object;
.source "SecurityCenterHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseStatusPanels(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 68
    .local v0, "sbm":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 66
    return-void
.end method

.method public static forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V
    .locals 6
    .param p0, "am"    # Landroid/app/ActivityManager;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 49
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-ge v4, v5, :cond_1

    .line 53
    return-void

    .line 55
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 56
    .local v3, "packageManager":Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    const/16 v5, 0x3e7

    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 57
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 58
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 59
    .local v2, "mgr":Landroid/app/IActivityManager;
    const/16 v4, 0x3e7

    invoke-interface {v2, p1, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "mgr":Landroid/app/IActivityManager;
    .end local v3    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_2
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getApnsXml(Landroid/content/Context;)Landroid/content/res/XmlResourceParser;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1110000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getBrightnessDimInt(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    const v1, 0x11080004

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getLabel(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 82
    .local v5, "pRes":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 83
    .local v0, "assmgr":Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 85
    .local v4, "label":Ljava/lang/CharSequence;
    :try_start_0
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v0    # "assmgr":Landroid/content/res/AssetManager;
    .local v1, "assmgr":Landroid/content/res/AssetManager;
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 87
    new-instance v6, Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v6, v1, v7, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 89
    .local v6, "res":Landroid/content/res/Resources;
    iget v7, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_0

    .line 91
    :try_start_2
    iget v7, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 95
    .end local v4    # "label":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 96
    :try_start_3
    iget-object v7, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    iget-object v4, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 98
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 102
    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 98
    :cond_2
    return-object v7

    .line 96
    :cond_3
    :try_start_4
    iget-object v4, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .local v4, "label":Ljava/lang/CharSequence;
    goto :goto_1

    .line 99
    .end local v1    # "assmgr":Landroid/content/res/AssetManager;
    .end local v6    # "res":Landroid/content/res/Resources;
    .restart local v0    # "assmgr":Landroid/content/res/AssetManager;
    .local v4, "label":Ljava/lang/CharSequence;
    :catch_0
    move-exception v3

    .line 100
    .end local v0    # "assmgr":Landroid/content/res/AssetManager;
    .end local v4    # "label":Ljava/lang/CharSequence;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string/jumbo v7, "getLabel"

    const-string/jumbo v8, "getLabel error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    .line 106
    :cond_4
    const-string/jumbo v7, ""

    return-object v7

    .line 101
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 102
    :goto_3
    if-eqz v0, :cond_5

    .line 103
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    .line 101
    :cond_5
    throw v7

    .restart local v1    # "assmgr":Landroid/content/res/AssetManager;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "assmgr":Landroid/content/res/AssetManager;
    .local v0, "assmgr":Landroid/content/res/AssetManager;
    goto :goto_3

    .line 99
    .end local v0    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v1    # "assmgr":Landroid/content/res/AssetManager;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v0    # "assmgr":Landroid/content/res/AssetManager;
    goto :goto_2

    .line 92
    .end local v0    # "assmgr":Landroid/content/res/AssetManager;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v4    # "label":Ljava/lang/CharSequence;
    .restart local v6    # "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v2

    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method public static getProcessPss([I)[J
    .locals 2
    .param p0, "pids"    # [I

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getUserAll()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static getUserId(I)I
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 30
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static isAutomaticBrightnessAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    const v1, 0x110a0001

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static packageHasActiveAdmins(Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
