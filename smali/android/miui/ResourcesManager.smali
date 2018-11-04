.class public Landroid/miui/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field public static final FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

.field public static final FRAMEWORK_RES_PATH:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field public static final MIUI_FRAMEWORK_RES_DATA_PATH_1:Ljava/lang/String; = "/data/app/com.miui.system-1.apk"

.field public static final MIUI_FRAMEWORK_RES_DATA_PATH_2:Ljava/lang/String; = "/data/app/com.miui.system-2.apk"

.field public static final MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

.field public static final MIUI_SDK_RES_DATA_PATH_1:Ljava/lang/String; = "/data/app/com.miui.core-1.apk"

.field public static final MIUI_SDK_RES_DATA_PATH_2:Ljava/lang/String; = "/data/app/com.miui.core-2.apk"

.field public static final MIUI_SDK_RES_PATH:Ljava/lang/String;

.field private static final VERSION_ABOVE_5:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    .line 23
    sget-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_1

    .line 24
    const-string/jumbo v0, "/system/app/miui/miui.apk"

    .line 23
    :goto_1
    sput-object v0, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    .line 31
    sget-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_2

    .line 32
    const-string/jumbo v0, "/system/app/miuisystem/miuisystem.apk"

    .line 31
    :goto_2
    sput-object v0, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    .line 39
    sget-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_3

    .line 40
    const-string/jumbo v0, "/system/framework/framework-ext-res/framework-ext-res.apk"

    .line 39
    :goto_3
    sput-object v0, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    .line 17
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 25
    :cond_1
    const-string/jumbo v0, "/system/app/miui.apk"

    goto :goto_1

    .line 33
    :cond_2
    const-string/jumbo v0, "/system/app/miuisystem.apk"

    goto :goto_2

    .line 41
    :cond_3
    const-string/jumbo v0, "/system/framework/framework-ext-res.apk"

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSystemAssets(Landroid/content/res/AssetManager;)V
    .locals 7
    .param p0, "am"    # Landroid/content/res/AssetManager;

    .prologue
    const/4 v6, 0x0

    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 51
    .local v0, "myUid":I
    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 58
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_0
    const-string/jumbo v2, "getResourceName"

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p0, v2, v3, v4}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 60
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/app/com.miui.core-1.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    const-string/jumbo v2, "/data/app/com.miui.core-1.apk"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 68
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/app/com.miui.system-1.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 69
    const-string/jumbo v2, "/data/app/com.miui.system-1.apk"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 76
    :goto_1
    sget-object v2, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 77
    if-eqz v0, :cond_1

    .line 78
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 46
    :cond_1
    return-void

    .line 62
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/app/com.miui.core-2.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    const-string/jumbo v2, "/data/app/com.miui.core-2.apk"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_3
    sget-object v2, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_4
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/app/com.miui.system-2.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 71
    const-string/jumbo v2, "/data/app/com.miui.system-2.apk"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_1

    .line 73
    :cond_5
    sget-object v2, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static belongToMiuiFrameworkThemePath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiExtFrameworkPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiSystemSdkPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiSdkPath(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static initMiuiResource(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 87
    instance-of v0, p0, Landroid/content/res/MiuiResources;

    if-eqz v0, :cond_0

    .line 88
    nop

    nop

    .end local p0    # "res":Landroid/content/res/Resources;
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public static isMiuiExtFrameworkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-object v0, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMiuiSdkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v0, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/data/app/com.miui.core-1.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/data/app/com.miui.core-2.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMiuiSystemSdkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/data/app/com.miui.system-1.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/data/app/com.miui.system-2.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
