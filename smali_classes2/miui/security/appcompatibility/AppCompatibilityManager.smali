.class public Lmiui/security/appcompatibility/AppCompatibilityManager;
.super Ljava/lang/Object;
.source "AppCompatibilityManager.java"


# static fields
.field public static final ACTION_BROADCAST_APPCOMPATIBILITY_UPDATE:Ljava/lang/String; = "com.miui.action.appcompatibility.update"

.field public static final DEVICE_NAME:Ljava/lang/String;

.field private static final INTENT_ACTION_SHOW_DIALOG_FOR_APPSTORE:Ljava/lang/String; = "com.miui.appcompatibility.LaunchDialog.appstore"

.field private static final INTENT_ACTION_SHOW_DIALOG_FOR_LAUNCHER:Ljava/lang/String; = "com.miui.appcompatibility.LaunchDialog.launcher"

.field private static final INTENT_EXTRA_APPNAME:Ljava/lang/String; = "app_name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lmiui/security/appcompatibility/AppCompatibilityManager;->DEVICE_NAME:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppErrorTipsDialogIntentForApptore(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "appname"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.appcompatibility.LaunchDialog.appstore"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    const-string/jumbo v1, "app_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :cond_0
    return-object v0
.end method

.method public static getAppErrorTipsDialogIntentForLauncher(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "appname"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.appcompatibility.LaunchDialog.launcher"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    const-string/jumbo v1, "app_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    :cond_0
    return-object v0
.end method

.method public static getIncompatibleAppList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0}, Lmiui/security/appcompatibility/AppCompatibilityManager;->getSecurityManager(Landroid/content/Context;)Lmiui/security/SecurityManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/security/SecurityManager;->getIncompatibleAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getSecurityManager(Landroid/content/Context;)Lmiui/security/SecurityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    return-object v0
.end method

.method public static isAppCompatible(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0}, Lmiui/security/appcompatibility/AppCompatibilityManager;->getSecurityManager(Landroid/content/Context;)Lmiui/security/SecurityManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/security/SecurityManager;->getIncompatibleAppList()Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkgname$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    .local v1, "pkgname":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const/4 v3, 0x0

    return v3

    .line 57
    .end local v1    # "pkgname":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static setIncompatibleAppList(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 37
    invoke-static {p0}, Lmiui/security/appcompatibility/AppCompatibilityManager;->getSecurityManager(Landroid/content/Context;)Lmiui/security/SecurityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/SecurityManager;->setIncompatibleAppList(Ljava/util/List;)V

    .line 35
    :cond_0
    return-void
.end method
