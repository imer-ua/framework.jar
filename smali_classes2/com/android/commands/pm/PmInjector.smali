.class public final Lcom/android/commands/pm/PmInjector;
.super Ljava/lang/Object;
.source "PmInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/pm/PmInjector$InstallObserver;
    }
.end annotation


# static fields
.field private static final PM:Ljava/lang/String; = "Pm"

.field public static final STATUS_INVALID_APK:I = 0x3

.field public static final STATUS_REJECT:I = -0x1

.field public static final STATUS_SUCESS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultUserId()I
    .locals 5

    .prologue
    .line 126
    :try_start_0
    const-string/jumbo v4, "user"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    .line 127
    .local v1, "um":Landroid/os/IUserManager;
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 128
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {v2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 132
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfo$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 135
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method public static installVerify(Ljava/lang/String;)I
    .locals 13
    .param p0, "apkFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x2

    .line 53
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "apkFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 56
    .local v2, "apkURI":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "com.miui.securitycenter"

    .line 58
    const-string/jumbo v9, "com.miui.permcenter.install.AdbInstallActivity"

    .line 57
    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v8, "application/vnd.android.package-archive"

    invoke-virtual {v5, v2, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    new-instance v0, Lcom/android/commands/pm/PmInjector$InstallObserver;

    invoke-direct {v0}, Lcom/android/commands/pm/PmInjector$InstallObserver;-><init>()V

    .line 61
    .local v0, "activityObs":Lcom/android/commands/pm/PmInjector$InstallObserver;
    const-string/jumbo v8, "observer"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 62
    const/high16 v8, 0x18000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    :try_start_0
    invoke-static {v5}, Lcom/android/commands/pm/IActivityManagerCompat;->startActivity(Landroid/content/Intent;)I

    move-result v7

    .line 66
    .local v7, "res":I
    if-eqz v7, :cond_2

    .line 67
    const-string/jumbo v8, "Pm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start PackageInstallerActivity failed ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_0

    return v11

    .line 69
    :cond_0
    return v12

    .line 71
    .end local v7    # "res":I
    :catch_0
    move-exception v4

    .line 72
    .local v4, "e1":Landroid/os/RemoteException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    const-string/jumbo v8, "Pm"

    const-string/jumbo v9, "start PackageInstallerActivity RemoteException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z

    move-result v8

    if-nez v8, :cond_1

    return v11

    .line 75
    :cond_1
    return v12

    .line 79
    .end local v4    # "e1":Landroid/os/RemoteException;
    .restart local v7    # "res":I
    :cond_2
    monitor-enter v0

    .line 80
    :goto_0
    :try_start_1
    iget-boolean v8, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_3

    .line 82
    const-wide/32 v8, 0xea60

    :try_start_2
    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 83
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 84
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 87
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_3
    iget v8, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->result:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v8, v12, :cond_4

    monitor-exit v0

    .line 88
    return v11

    .line 90
    :cond_4
    :try_start_4
    iget-object v6, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->msg:Ljava/lang/String;

    .line 91
    .local v6, "msg":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 92
    const-string/jumbo v6, "Failure [INSTALL_CANCELED_BY_USER]"

    .line 94
    :cond_5
    const-string/jumbo v8, "Pm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "install msg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string/jumbo v8, "Invalid apk"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 96
    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    if-nez v8, :cond_6

    monitor-exit v0

    return v11

    .line 97
    :cond_6
    const/4 v8, 0x3

    monitor-exit v0

    return v8

    .line 99
    :cond_7
    :try_start_5
    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v8

    if-nez v8, :cond_8

    monitor-exit v0

    return v11

    :cond_8
    monitor-exit v0

    .line 100
    return v12

    .line 79
    .end local v6    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v0

    throw v8
.end method

.method public static isSecurityCenterExist()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 139
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    return v6

    .line 143
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 144
    const-string/jumbo v3, "com.miui.securitycenter"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 143
    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 145
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    const-string/jumbo v2, "Pm"

    const-string/jumbo v3, "checkSecurityCenterInstalled:getPackageInfo:true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    if-eqz v1, :cond_1

    .line 147
    return v6

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Pm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageInfo error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v2, "Pm"

    const-string/jumbo v3, "checkSecurityCenterInstalled:Exception:false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v7
.end method

.method public static statusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 34
    const-string/jumbo v0, ""

    .line 35
    .local v0, "msg":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 49
    :goto_0
    :pswitch_0
    return-object v0

    .line 37
    :pswitch_1
    const-string/jumbo v0, "Install canceled by user"

    goto :goto_0

    .line 40
    :pswitch_2
    const-string/jumbo v0, "Sucess"

    goto :goto_0

    .line 43
    :pswitch_3
    const-string/jumbo v0, "Invalid apk"

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
