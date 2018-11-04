.class Landroid/app/ContextImplInjector;
.super Ljava/lang/Object;
.source "ContextImplInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static registerMiuiServices()V
    .locals 3

    .prologue
    .line 19
    const-string/jumbo v0, "security"

    const-class v1, Lmiui/security/SecurityManager;

    .line 20
    new-instance v2, Landroid/app/ContextImplInjector$1;

    invoke-direct {v2}, Landroid/app/ContextImplInjector$1;-><init>()V

    .line 19
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 33
    const-string/jumbo v0, "locationpolicy"

    const-class v1, Landroid/location/LocationPolicyManager;

    .line 34
    new-instance v2, Landroid/app/ContextImplInjector$2;

    invoke-direct {v2}, Landroid/app/ContextImplInjector$2;-><init>()V

    .line 33
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 18
    return-void
.end method
