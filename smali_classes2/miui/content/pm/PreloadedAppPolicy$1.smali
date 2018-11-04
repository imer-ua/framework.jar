.class final Lmiui/content/pm/PreloadedAppPolicy$1;
.super Ljava/lang/Object;
.source "PreloadedAppPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/content/pm/PreloadedAppPolicy;->installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$flags:I

.field final synthetic val$observer:Landroid/content/pm/IPackageInstallObserver;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/Context;Landroid/content/pm/IPackageInstallObserver;)V
    .locals 0
    .param p1, "val$packageName"    # Ljava/lang/String;
    .param p2, "val$flags"    # I
    .param p3, "val$context"    # Landroid/content/Context;
    .param p4, "val$observer"    # Landroid/content/pm/IPackageInstallObserver;

    .prologue
    .line 109
    iput-object p1, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$packageName:Ljava/lang/String;

    iput p2, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$flags:I

    iput-object p3, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$observer:Landroid/content/pm/IPackageInstallObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 112
    move-object v0, p0

    .line 113
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-static {p2}, Lmiui/content/pm/IPreloadedAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/content/pm/IPreloadedAppManager;

    move-result-object v2

    .line 115
    .local v2, "manager":Lmiui/content/pm/IPreloadedAppManager;
    :try_start_0
    iget-object v3, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$packageName:Ljava/lang/String;

    new-instance v4, Lmiui/content/pm/PreloadedAppPolicy$1$1;

    iget-object v5, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$observer:Landroid/content/pm/IPackageInstallObserver;

    invoke-direct {v4, p0, v5, p0, v6}, Lmiui/content/pm/PreloadedAppPolicy$1$1;-><init>(Lmiui/content/pm/PreloadedAppPolicy$1;Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/content/pm/IPackageInstallObserver;)V

    .line 123
    iget v5, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$flags:I

    .line 115
    invoke-interface {v2, v3, v4, v5}, Lmiui/content/pm/IPreloadedAppManager;->reinstallPreloadedApp(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    const-class v3, Lmiui/content/pm/PreloadedAppPolicy;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    iget-object v3, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 131
    return-void
.end method
