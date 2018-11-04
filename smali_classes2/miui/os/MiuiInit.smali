.class public Lmiui/os/MiuiInit;
.super Ljava/lang/Object;
.source "MiuiInit.java"


# static fields
.field public static final ACTION_MIUI_INIT_COMPLETED:Ljava/lang/String; = "miui.intent.action.MIUI_INIT_COMPLETED"

.field public static final REGION:Ljava/lang/String; = "region"

.field public static final SERVICE_NAME:Ljava/lang/String; = "MiuiInit"

.field private static final TAG:Ljava/lang/String; = "MiuiInit"

.field private static sNeedAspectSettings:Z

.field private static sNeedAspectSettingsInited:Z

.field private static sService:Lmiui/os/IMiuiInit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doFactoryReset(Z)V
    .locals 3
    .param p0, "keepUserApps"    # Z

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->doFactoryReset(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    const-string/jumbo v2, "Occur RemoteException when removing preinstall app history file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAspectRatio(Ljava/lang/String;)F
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    .line 170
    if-eqz p0, :cond_0

    invoke-static {}, Lmiui/os/MiuiInit;->needAspectSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getAspectRatio(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 171
    :cond_0
    return v4

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Occur RemoteException when getAspectRatio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v4
.end method

.method public static getCustVariants()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1}, Lmiui/os/IMiuiInit;->getCustVariants()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    const-string/jumbo v2, "Occur RemoteException when fetch cust variants"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getDefaultAspectType(Ljava/lang/String;)I
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 183
    if-eqz p0, :cond_0

    invoke-static {}, Lmiui/os/MiuiInit;->needAspectSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getDefaultAspectType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 184
    :cond_0
    return v4

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Occur RemoteException when getDefaultAspectType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v4
.end method

.method public static getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    .line 102
    const-string/jumbo v2, "Occur RemoteException when checking preinstalled channel"

    .line 101
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public static getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    .line 121
    const-string/jumbo v2, "Occur RemoteException when checking preinstalled app path"

    .line 120
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public static getNotchConfig(Ljava/lang/String;)I
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 196
    if-eqz p0, :cond_0

    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v1, :cond_0

    .line 200
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getNotchConfig(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 197
    :cond_0
    return v4

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MiuiInit"

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Occur RemoteException when getNotchConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return v4
.end method

.method public static getPreinstalledAppVersion(Ljava/lang/String;)I
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    .line 88
    .local v1, "service":Lmiui/os/IMiuiInit;
    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getPreinstalledAppVersion(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 91
    .end local v1    # "service":Lmiui/os/IMiuiInit;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MiuiInit"

    const-string/jumbo v3, "Occur RemoteException when get preinstalled package version"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method private static declared-synchronized getService()Lmiui/os/IMiuiInit;
    .locals 3

    .prologue
    const-class v2, Lmiui/os/MiuiInit;

    monitor-enter v2

    .line 26
    :try_start_0
    sget-object v1, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;

    if-nez v1, :cond_0

    .line 27
    const-string/jumbo v1, "MiuiInit"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 28
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lmiui/os/IMiuiInit$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/os/IMiuiInit;

    move-result-object v1

    sput-object v1, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;

    .line 30
    :cond_0
    sget-object v1, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z
    .locals 5
    .param p0, "custVariant"    # Ljava/lang/String;
    .param p1, "obs"    # Lmiui/os/IMiuiInitObserver;

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, "ret":Z
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lmiui/os/IMiuiInit;->initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 43
    .end local v1    # "ret":Z
    :goto_0
    return v1

    .line 38
    .restart local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MiuiInit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Occur RemoteException when init cust environment for ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 40
    const-string/jumbo v4, "]"

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static installPreinstallApp()Z
    .locals 3

    .prologue
    .line 48
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1}, Lmiui/os/IMiuiInit;->installPreinstallApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    const/4 v1, 0x1

    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    const-string/jumbo v2, "Occur RemoteException when install preinstall app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v1, 0x0

    return v1
.end method

.method public static isPreinstalledPackage(Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    .line 76
    .local v1, "service":Lmiui/os/IMiuiInit;
    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->isPreinstalledPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 79
    .end local v1    # "service":Lmiui/os/IMiuiInit;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MiuiInit"

    const-string/jumbo v3, "Occur RemoteException when checking preinstalled package"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static isRestrictAspect(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 157
    if-eqz p0, :cond_0

    invoke-static {}, Lmiui/os/MiuiInit;->needAspectSettings()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v2

    invoke-interface {v2, p0}, Lmiui/os/IMiuiInit;->isRestrictAspect(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 158
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MiuiInit"

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Occur RemoteException when isRestrictAspect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v1
.end method

.method private static needAspectSettings()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    sget-boolean v3, Lmiui/os/MiuiInit;->sNeedAspectSettingsInited:Z

    if-nez v3, :cond_1

    .line 130
    const-string/jumbo v3, "qemu.hw.mainkeys"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "navBarOverride":Ljava/lang/String;
    const-string/jumbo v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    sput-boolean v1, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    .line 138
    :goto_0
    sget-boolean v3, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v3, :cond_4

    :cond_0
    :goto_1
    sput-boolean v1, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    .line 139
    sput-boolean v2, Lmiui/os/MiuiInit;->sNeedAspectSettingsInited:Z

    .line 141
    :cond_1
    sget-boolean v1, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    return v1

    .line 133
    :cond_2
    const-string/jumbo v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    sput-boolean v2, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    goto :goto_0

    .line 136
    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lmiui/os/MiuiInit;->sNeedAspectSettings:Z

    goto :goto_0

    :cond_4
    move v1, v2

    .line 138
    goto :goto_1
.end method

.method public static removeFromPreinstallList(Ljava/lang/String;)V
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->removeFromPreinstallList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    .line 112
    const-string/jumbo v2, "Occur RemoteException when removing from preinstall list"

    .line 111
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setNotchSpecialMode(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "special"    # Z

    .prologue
    .line 209
    if-eqz p0, :cond_0

    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lmiui/os/IMiuiInit;->setNotchSpecialMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 210
    :cond_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Occur RemoteException when setNotchSpecailMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setRestrictAspect(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "restrict"    # Z

    .prologue
    .line 145
    if-eqz p0, :cond_0

    invoke-static {}, Lmiui/os/MiuiInit;->needAspectSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lmiui/os/IMiuiInit;->setRestrictAspect(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 146
    :cond_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Occur RemoteException when setRestrictAspect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
