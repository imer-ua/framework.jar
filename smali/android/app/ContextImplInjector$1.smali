.class final Landroid/app/ContextImplInjector$1;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "ContextImplInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ContextImplInjector;->registerMiuiServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Lmiui/security/SecurityManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/app/ContextImplInjector$1;->createService(Landroid/app/ContextImpl;)Lmiui/security/SecurityManager;

    move-result-object v0

    return-object v0
.end method

.method public createService(Landroid/app/ContextImpl;)Lmiui/security/SecurityManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    const/4 v3, 0x0

    .line 23
    const-string/jumbo v2, "security"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 24
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 25
    return-object v3

    .line 27
    :cond_0
    invoke-static {v0}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v1

    .line 28
    .local v1, "service":Lmiui/security/ISecurityManager;
    new-instance v2, Lmiui/security/SecurityManager;

    invoke-direct {v2, v1}, Lmiui/security/SecurityManager;-><init>(Lmiui/security/ISecurityManager;)V

    return-object v2
.end method
