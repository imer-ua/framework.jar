.class public Lcom/miui/enterprise/sdk/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# static fields
.field public static final ENT_PERMISSION:Ljava/lang/String; = "com.miui.enterprise.permission.ACCESS_ENTERPRISE_API"

.field public static final FLAG_ALLOW_AUTOSTART:I = 0x8

.field public static final FLAG_DEFAULT:I = 0x0

.field public static final FLAG_GRANT_ALL_RUNTIME_PERMISSION:I = 0x10

.field public static final FLAG_KEEP_ALIVE:I = 0x1

.field public static final FLAG_PREVENT_UNINSTALLATION:I = 0x4

.field public static final RESTRICTION_MODE_BLACK_LIST:I = 0x2

.field public static final RESTRICTION_MODE_DEFAULT:I = 0x0

.field public static final RESTRICTION_MODE_WHITE_LIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ApplicationManager"

.field private static volatile sInstance:Lcom/miui/enterprise/sdk/ApplicationManager;


# instance fields
.field private mService:Lcom/miui/enterprise/IApplicationManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "application_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IApplicationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IApplicationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/enterprise/sdk/ApplicationManager;
    .locals 2

    .prologue
    const-class v1, Lcom/miui/enterprise/sdk/ApplicationManager;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/ApplicationManager;->sInstance:Lcom/miui/enterprise/sdk/ApplicationManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/miui/enterprise/sdk/ApplicationManager;

    invoke-direct {v0}, Lcom/miui/enterprise/sdk/ApplicationManager;-><init>()V

    sput-object v0, Lcom/miui/enterprise/sdk/ApplicationManager;->sInstance:Lcom/miui/enterprise/sdk/ApplicationManager;

    .line 44
    :cond_0
    sget-object v0, Lcom/miui/enterprise/sdk/ApplicationManager;->sInstance:Lcom/miui/enterprise/sdk/ApplicationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addTrustedAppStore(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->addTrustedAppStore(Ljava/util/List;I)V

    .line 280
    return-void
.end method

.method public addTrustedAppStore(Ljava/util/List;I)V
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->addTrustedAppStore(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearApplicationCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->clearApplicationCache(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method public clearApplicationCache(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->clearApplicationCache(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearApplicationUserData(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->clearApplicationUserData(Ljava/lang/String;I)V

    .line 85
    return-void
.end method

.method public clearApplicationUserData(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->clearApplicationUserData(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deletePackage(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageDeleteObserver;

    .prologue
    .line 74
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->deletePackage(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;I)V

    .line 73
    return-void
.end method

.method public deletePackage(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .param p4, "userId"    # I

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/miui/enterprise/IApplicationManager;->deletePackage(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableAccessibilityService(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "enable"    # Z

    .prologue
    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->enableAccessibilityService(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableTrustedAppStore(Z)V
    .locals 1
    .param p1, "enabld"    # Z

    .prologue
    .line 306
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->enableTrustedAppStore(ZI)V

    .line 305
    return-void
.end method

.method public enableTrustedAppStore(ZI)V
    .locals 3
    .param p1, "enabld"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->enableTrustedAppStore(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getApplicationBlackList()Ljava/util/List;
    .locals 1
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
    .line 147
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getApplicationBlackList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationBlackList(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IApplicationManager;->getApplicationBlackList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getApplicationRestriction()I
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getApplicationRestriction(I)I

    move-result v0

    return v0
.end method

.method public getApplicationRestriction(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IApplicationManager;->getApplicationRestriction(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    const/4 v1, 0x0

    return v1
.end method

.method public getApplicationSettings(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getApplicationSettings(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getApplicationSettings(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->getApplicationSettings(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v1, 0x0

    return v1
.end method

.method public getApplicationWhiteList()Ljava/util/List;
    .locals 1
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
    .line 172
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getApplicationWhiteList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationWhiteList(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IApplicationManager;->getApplicationWhiteList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getDisallowedRunningAppList()Ljava/util/List;
    .locals 1
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
    .line 268
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getDisallowedRunningAppList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisallowedRunningAppList(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IApplicationManager;->getDisallowedRunningAppList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getTrustedAppStore()Ljava/util/List;
    .locals 1
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
    .line 293
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getTrustedAppStore(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrustedAppStore(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IApplicationManager;->getTrustedAppStore(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public installPackage(Ljava/lang/String;ILandroid/content/pm/IPackageInstallObserver2;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;

    .prologue
    .line 49
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->installPackage(Ljava/lang/String;ILandroid/content/pm/IPackageInstallObserver2;I)V

    .line 48
    return-void
.end method

.method public installPackage(Ljava/lang/String;ILandroid/content/pm/IPackageInstallObserver2;I)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "userId"    # I

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/miui/enterprise/IApplicationManager;->installPackage(Ljava/lang/String;ILandroid/content/pm/IPackageInstallObserver2;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 62
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 61
    return-void
.end method

.method public installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "userId"    # I

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/enterprise/IApplicationManager;->installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isTrustedAppStoreEnabled()Z
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->isTrustedAppStoreEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isTrustedAppStoreEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IApplicationManager;->isTrustedAppStoreEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    const/4 v1, 0x0

    return v1
.end method

.method public killProcess(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->killProcess(Ljava/lang/String;I)V

    .line 235
    return-void
.end method

.method public killProcess(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->killProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeDeviceAdmin(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 223
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->removeDeviceAdmin(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public removeDeviceAdmin(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->removeDeviceAdmin(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    const/4 v1, 0x0

    return v1
.end method

.method public setApplicationBlackList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationBlackList(Ljava/util/List;I)V

    .line 134
    return-void
.end method

.method public setApplicationBlackList(Ljava/util/List;I)V
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setApplicationBlackList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 331
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationEnabled(Ljava/lang/String;ZI)V

    .line 330
    return-void
.end method

.method public setApplicationEnabled(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/enterprise/IApplicationManager;->setApplicationEnabled(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationRestriction(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 185
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationRestriction(II)V

    .line 184
    return-void
.end method

.method public setApplicationRestriction(II)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setApplicationRestriction(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationSettings(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 110
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationSettings(Ljava/lang/String;II)V

    .line 109
    return-void
.end method

.method public setApplicationSettings(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/enterprise/IApplicationManager;->setApplicationSettings(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationWhiteList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationWhiteList(Ljava/util/List;I)V

    .line 159
    return-void
.end method

.method public setApplicationWhiteList(Ljava/util/List;I)V
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setApplicationWhiteList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDeviceAdmin(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 210
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setDeviceAdmin(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public setDeviceAdmin(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setDeviceAdmin(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    const/4 v1, 0x0

    return v1
.end method

.method public setDisallowedRunningAppList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setDisallowedRunningAppList(Ljava/util/List;I)V

    .line 255
    return-void
.end method

.method public setDisallowedRunningAppList(Ljava/util/List;I)V
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setDisallowedRunningAppList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ApplicationManager"

    const-string/jumbo v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
