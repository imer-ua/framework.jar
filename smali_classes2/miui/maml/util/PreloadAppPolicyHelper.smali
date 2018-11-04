.class public Lmiui/maml/util/PreloadAppPolicyHelper;
.super Ljava/lang/Object;
.source "PreloadAppPolicyHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 15
    new-instance v0, Lmiui/maml/util/PreloadAppPolicyHelper$1;

    invoke-direct {v0, p0, p2, p3}, Lmiui/maml/util/PreloadAppPolicyHelper$1;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 20
    const/4 v1, 0x1

    .line 14
    invoke-static {p0, p1, v0, v1}, Lmiui/content/pm/PreloadedAppPolicy;->installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver;I)Z

    move-result v0

    return v0
.end method
