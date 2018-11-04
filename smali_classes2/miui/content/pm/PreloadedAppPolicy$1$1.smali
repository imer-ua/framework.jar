.class Lmiui/content/pm/PreloadedAppPolicy$1$1;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PreloadedAppPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/content/pm/PreloadedAppPolicy$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/content/pm/PreloadedAppPolicy$1;

.field final synthetic val$conn:Landroid/content/ServiceConnection;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$observer:Landroid/content/pm/IPackageInstallObserver;


# direct methods
.method constructor <init>(Lmiui/content/pm/PreloadedAppPolicy$1;Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/content/pm/IPackageInstallObserver;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/content/pm/PreloadedAppPolicy$1;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$conn"    # Landroid/content/ServiceConnection;
    .param p4, "val$observer"    # Landroid/content/pm/IPackageInstallObserver;

    .prologue
    .line 115
    iput-object p1, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->this$1:Lmiui/content/pm/PreloadedAppPolicy$1;

    iput-object p2, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$conn:Landroid/content/ServiceConnection;

    iput-object p4, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$observer:Landroid/content/pm/IPackageInstallObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 119
    iget-object v0, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$observer:Landroid/content/pm/IPackageInstallObserver;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lmiui/content/pm/PreloadedAppPolicy$1$1;->val$observer:Landroid/content/pm/IPackageInstallObserver;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V

    .line 117
    :cond_0
    return-void
.end method
