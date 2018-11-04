.class final Lmiui/maml/util/PreloadAppPolicyHelper$1;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PreloadAppPolicyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/util/PreloadAppPolicyHelper;->installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p3, "val$bundle"    # Landroid/os/Bundle;

    .prologue
    .line 15
    iput-object p1, p0, Lmiui/maml/util/PreloadAppPolicyHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/maml/util/PreloadAppPolicyHelper$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lmiui/maml/util/PreloadAppPolicyHelper$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lmiui/maml/util/PreloadAppPolicyHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lmiui/maml/util/PreloadAppPolicyHelper$1;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/util/PreloadAppPolicyHelper$1;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 17
    return-void
.end method
