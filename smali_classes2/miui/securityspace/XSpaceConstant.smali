.class public Lmiui/securityspace/XSpaceConstant;
.super Ljava/lang/Object;
.source "XSpaceConstant.java"


# static fields
.field public static final GMS_RELATED_APPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUIRED_APPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPECIAL_APPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    .line 16
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    .line 21
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.android.keychain"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.google.android.webview"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.google.android.packageinstaller"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.securitycore"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.analytics"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.rom"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.tencent.soter.soterserver"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    .line 31
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.android.chrome"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "com.android.packageinstaller.permission.ui.GrantPermissionsActivity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    const-string/jumbo v2, "com.android.packageinstaller.permission.ui.ManagePermissionsActivity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    const-string/jumbo v3, "com.google.android.packageinstaller"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, "componentListForXSpace":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "com.miui.xspace.receiver.MediaScannerReceiver"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const-string/jumbo v2, "com.miui.xspace.receiver.InstallShortcutReceiver"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    const-string/jumbo v3, "com.miui.securitycore"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.google.android.gsf"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_1

    .line 47
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.google.android.gsf.login"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
