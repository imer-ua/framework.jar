.class public Lmiui/security/AppRunningControlManager;
.super Ljava/lang/Object;
.source "AppRunningControlManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppRunningControlManager"

.field private static sInstance:Lmiui/security/AppRunningControlManager;


# instance fields
.field private mService:Lmiui/security/IAppRunningControlManager;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lmiui/security/IAppRunningControlManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/IAppRunningControlManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    .line 20
    return-void
.end method

.method public static getBlockActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "fromActivity"    # Z
    .param p4, "requestCode"    # I

    .prologue
    .line 68
    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v0

    .line 69
    .local v0, "appRunningControlManager":Lmiui/security/AppRunningControlManager;
    const/4 v6, 0x0

    .line 70
    .local v6, "result":Landroid/content/Intent;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 71
    invoke-direct/range {v0 .. v5}, Lmiui/security/AppRunningControlManager;->getBlockActivityIntentInner(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v6

    .line 72
    .local v6, "result":Landroid/content/Intent;
    if-eqz v6, :cond_0

    .line 73
    return-object v6

    .line 76
    .end local v6    # "result":Landroid/content/Intent;
    :cond_0
    return-object v6
.end method

.method private getBlockActivityIntentInner(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "fromActivity"    # Z
    .param p5, "requestCode"    # I

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v1, p2, p3, p4, p5}, Lmiui/security/IAppRunningControlManager;->getBlockActivityIntent(Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AppRunningControlManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance()Lmiui/security/AppRunningControlManager;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 25
    sget-object v3, Lmiui/security/AppRunningControlManager;->sInstance:Lmiui/security/AppRunningControlManager;

    if-nez v3, :cond_1

    .line 27
    :try_start_0
    const-string/jumbo v3, "security"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v2

    .line 28
    .local v2, "securityManager":Lmiui/security/ISecurityManager;
    invoke-interface {v2}, Lmiui/security/ISecurityManager;->getAppRunningControlIBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 29
    .local v1, "greenKidBinder":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 30
    const-string/jumbo v3, "AppRunningControlManager"

    const-string/jumbo v4, "AppRunningControlIBinder is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-object v5

    .line 33
    :cond_0
    new-instance v3, Lmiui/security/AppRunningControlManager;

    invoke-direct {v3, v1}, Lmiui/security/AppRunningControlManager;-><init>(Landroid/os/IBinder;)V

    sput-object v3, Lmiui/security/AppRunningControlManager;->sInstance:Lmiui/security/AppRunningControlManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_1
    sget-object v3, Lmiui/security/AppRunningControlManager;->sInstance:Lmiui/security/AppRunningControlManager;

    return-object v3

    .line 34
    .end local v1    # "greenKidBinder":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "system service died"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static matchRule(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "wakeType"    # I

    .prologue
    .line 87
    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v0

    .line 88
    .local v0, "appRunningControlManager":Lmiui/security/AppRunningControlManager;
    if-eqz v0, :cond_0

    .line 89
    invoke-direct {v0, p0, p1}, Lmiui/security/AppRunningControlManager;->matchRuleInner(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 91
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private matchRuleInner(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "wakeType"    # I

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/IAppRunningControlManager;->matchRule(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AppRunningControlManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getNotDisallowList()Ljava/util/List;
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
    .line 108
    :try_start_0
    iget-object v1, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v1}, Lmiui/security/IAppRunningControlManager;->getNotDisallowList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AppRunningControlManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v1, 0x0

    return-object v1
.end method

.method public setBlackListEnable(Z)V
    .locals 3
    .param p1, "isEnable"    # Z

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v1, p1}, Lmiui/security/IAppRunningControlManager;->setBlackListEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AppRunningControlManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V
    .locals 3
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/IAppRunningControlManager;->setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AppRunningControlManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    return-void
.end method
