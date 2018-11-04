.class public Lmiui/content/pm/PreloadedAppPolicy;
.super Ljava/lang/Object;
.source "PreloadedAppPolicy.java"


# static fields
.field private static sAllowDisableSystemApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sProtectedDataApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final INSTALL_FLAG_NEED_CONFIRM:I

.field public final INSTALL_FLAG_SHOW_TOAST:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sAllowDisableSystemApps:Ljava/util/ArrayList;

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    .line 58
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.facemoji.lite.xiaomi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.kikaoem.xiaomi.qisiemoji.inputmethod"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.midrop"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.pass"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.scanner"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "pro.burgerz.miweather8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.compass"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.calculator"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.screenrecorder"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.cleanmaster"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.midrive"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.duokan.reader"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mfashiongallery.emag"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.virtualsim"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.gamecenter.pad"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.drivemode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sAllowDisableSystemApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sAllowDisableSystemApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.voip"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sAllowDisableSystemApps:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.yellowpage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lmiui/content/pm/PreloadedAppPolicy;->INSTALL_FLAG_NEED_CONFIRM:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lmiui/content/pm/PreloadedAppPolicy;->INSTALL_FLAG_SHOW_TOAST:I

    .line 22
    return-void
.end method

.method public static installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.xiaomi.market.PreloadedDataAppInstallService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.xiaomi.market"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 105
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    :cond_0
    return v3

    .line 100
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    return v3

    .line 109
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    new-instance v2, Lmiui/content/pm/PreloadedAppPolicy$1;

    invoke-direct {v2, p1, p3, p0, p2}, Lmiui/content/pm/PreloadedAppPolicy$1;-><init>(Ljava/lang/String;ILandroid/content/Context;Landroid/content/pm/IPackageInstallObserver;)V

    invoke-virtual {p0, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 134
    return v4
.end method

.method public static isAllowDisableSystemApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 86
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sAllowDisableSystemApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 74
    sget-object v0, Lmiui/content/pm/PreloadedAppPolicy;->sProtectedDataApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
