.class public Lmiui/hardware/display/DisplayFeatureManager;
.super Ljava/lang/Object;
.source "DisplayFeatureManager.java"


# static fields
.field public static final DEFALUT_GAMUT_MODE:I = 0x0

.field public static final DEFALUT_SCREEN_CABC:I = 0x1

.field public static final DEFALUT_SCREEN_COLOR:I = 0x2

.field public static final DEFAULT_DISPLAY_EYECARE_LEVEL:I = 0x0

.field public static final DEFAULT_SCREEN_SATURATION:I

.field private static final DISPLAY_FEATURE_SERVICE:Ljava/lang/String; = "DisplayFeatureControl"

.field public static final EXT_COLOR_PROC_STATE:I = 0xf

.field public static final PROPERTY_ASSERTIVE_DISPLAY:Ljava/lang/String; = "persist.sys.ltm_enable"

.field public static final PROPERTY_DISPLAY_EYECARE:Ljava/lang/String; = "persist.sys.display_eyecare"

.field public static final PROPERTY_GAMUT_MODE:Ljava/lang/String; = "persist.sys.gamut_mode"

.field public static final PROPERTY_SCREEN_CABC:Ljava/lang/String; = "persist.sys.display_cabc"

.field public static final PROPERTY_SCREEN_COLOR:Ljava/lang/String; = "persist.sys.display_prefer"

.field public static final PROPERTY_SCREEN_SATURATION:Ljava/lang/String; = "persist.sys.display_ce"

.field public static final SCREEN_ADAPT:I = 0x0

.field public static final SCREEN_COLOR_COOL:I = 0x3

.field public static final SCREEN_COLOR_NATURE:I = 0x2

.field public static final SCREEN_COLOR_WARM:I = 0x1

.field public static final SCREEN_ENHANCE:I = 0x1

.field public static final SCREEN_EYECARE:I = 0x3

.field public static final SCREEN_MONOCHROME:I = 0x4

.field public static final SCREEN_NIGHTLIGHT:I = 0x9

.field public static final SCREEN_SATURATION_STANDARD:I = 0xa

.field public static final SCREEN_SATURATION_VIVID:I = 0xb

.field public static final SCREEN_STANDARD:I = 0x2

.field public static final SCREEN_SUNLIGHT:I = 0x8

.field private static final SUPPORT_SET_FEATURE:Z

.field private static TAG:Ljava/lang/String;

.field private static volatile sInstance:Lmiui/hardware/display/DisplayFeatureManager;


# instance fields
.field private mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mLock:Ljava/lang/Object;

.field private mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/hardware/display/DisplayFeatureManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/hardware/display/DisplayFeatureManager;Lmiui/hardware/display/DisplayFeatureServiceProxy;)Lmiui/hardware/display/DisplayFeatureServiceProxy;
    .locals 0

    iput-object p1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 27
    const-string/jumbo v1, "DisplayFeatureManager"

    sput-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "support_screen_effect"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lmiui/hardware/display/DisplayFeatureManager;->SUPPORT_SET_FEATURE:Z

    .line 200
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getDefaultScreenSaturation()I

    move-result v0

    sput v0, Lmiui/hardware/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    .line 26
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    .line 68
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initServiceDeathRecipient()V

    .line 69
    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initProxyLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 67
    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getDefaultScreenSaturation()I
    .locals 3

    .prologue
    .line 203
    const/16 v0, 0xa

    .line 204
    .local v0, "defaultSaturationMode":I
    const-string/jumbo v1, "is_hongmi"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const/16 v0, 0xb

    .line 207
    :cond_0
    const-string/jumbo v1, "display_ce"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getInstance()Lmiui/hardware/display/DisplayFeatureManager;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    if-nez v0, :cond_1

    .line 58
    const-class v1, Lmiui/hardware/display/DisplayFeatureManager;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager;

    invoke-direct {v0}, Lmiui/hardware/display/DisplayFeatureManager;-><init>()V

    sput-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 64
    :cond_1
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initProxyLocked()V
    .locals 4

    .prologue
    .line 123
    :try_start_0
    const-string/jumbo v2, "DisplayFeatureControl"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 124
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 125
    iget-object v2, p0, Lmiui/hardware/display/DisplayFeatureManager;->mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 126
    new-instance v2, Lmiui/hardware/display/DisplayFeatureServiceProxy;

    invoke-direct {v2, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private initServiceDeathRecipient()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager$1;

    invoke-direct {v0, p0}, Lmiui/hardware/display/DisplayFeatureManager$1;-><init>(Lmiui/hardware/display/DisplayFeatureManager;)V

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 134
    return-void
.end method


# virtual methods
.method public getColorPrefer()I
    .locals 2

    .prologue
    .line 167
    const-string/jumbo v0, "persist.sys.display_prefer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEyeCare()I
    .locals 2

    .prologue
    .line 190
    const-string/jumbo v0, "persist.sys.display_eyecare"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenCabc()I
    .locals 2

    .prologue
    .line 244
    const-string/jumbo v0, "persist.sys.display_cabc"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenGamut()I
    .locals 2

    .prologue
    .line 266
    const-string/jumbo v0, "persist.sys.gamut_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenSaturation()I
    .locals 2

    .prologue
    .line 222
    const-string/jumbo v0, "persist.sys.display_ce"

    sget v1, Lmiui/hardware/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAdEnable()Z
    .locals 2

    .prologue
    .line 288
    const-string/jumbo v0, "persist.sys.ltm_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAdEnable(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 277
    :try_start_0
    iget-object v2, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-virtual {v2, v3, v1, v4}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->setAd(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_1
    :goto_0
    const-string/jumbo v1, "persist.sys.ltm_enable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set assertive display error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setColorPrefer(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->setColorPrefer(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    const-string/jumbo v1, "persist.sys.display_prefer"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set color prefer error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEyeCare(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->setEyeCare(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    const-string/jumbo v1, "persist.sys.display_eyecare"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set eye care error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScreenCabc(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 234
    :try_start_0
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->setCABC(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    :goto_0
    const-string/jumbo v1, "persist.sys.display_cabc"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set screen cabc error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScreenEffect(II)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " setScreenEffect mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-boolean v1, Lmiui/hardware/display/DisplayFeatureManager;->SUPPORT_SET_FEATURE:Z

    if-eqz v1, :cond_1

    .line 78
    iget-object v2, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 79
    :try_start_0
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-nez v1, :cond_0

    .line 80
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initProxyLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-virtual {v1, v3, p1, p2, v4}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->setFeature(IIII)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    .line 75
    :goto_1
    return-void

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 88
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 90
    :pswitch_0
    invoke-virtual {p0, v4}, Lmiui/hardware/display/DisplayFeatureManager;->setEyeCare(I)V

    .line 91
    invoke-virtual {p0, p2}, Lmiui/hardware/display/DisplayFeatureManager;->setColorPrefer(I)V

    .line 92
    invoke-virtual {p0, v4}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenGamut(I)V

    .line 93
    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_SATURATION:I

    invoke-virtual {p0, v1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenSaturation(I)V

    .line 94
    invoke-virtual {p0, v5}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenCabc(I)V

    .line 95
    invoke-virtual {p0, v5}, Lmiui/hardware/display/DisplayFeatureManager;->setAdEnable(Z)V

    goto :goto_1

    .line 98
    :pswitch_1
    invoke-virtual {p0, v4}, Lmiui/hardware/display/DisplayFeatureManager;->setEyeCare(I)V

    .line 99
    invoke-virtual {p0, p2}, Lmiui/hardware/display/DisplayFeatureManager;->setColorPrefer(I)V

    .line 100
    invoke-virtual {p0, v4}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenGamut(I)V

    .line 101
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenSaturation(I)V

    .line 102
    invoke-virtual {p0, v4}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenCabc(I)V

    .line 103
    invoke-virtual {p0, v4}, Lmiui/hardware/display/DisplayFeatureManager;->setAdEnable(Z)V

    goto :goto_1

    .line 106
    :pswitch_2
    invoke-virtual {p0, v4}, Lmiui/hardware/display/DisplayFeatureManager;->setEyeCare(I)V

    .line 107
    invoke-virtual {p0, p2}, Lmiui/hardware/display/DisplayFeatureManager;->setColorPrefer(I)V

    .line 108
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenSaturation(I)V

    .line 109
    invoke-virtual {p0, v5}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenGamut(I)V

    .line 110
    invoke-virtual {p0, v4}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenCabc(I)V

    .line 111
    invoke-virtual {p0, v4}, Lmiui/hardware/display/DisplayFeatureManager;->setAdEnable(Z)V

    goto :goto_1

    .line 114
    :pswitch_3
    invoke-virtual {p0, p2}, Lmiui/hardware/display/DisplayFeatureManager;->setEyeCare(I)V

    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setScreenGamut(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->setGamutMode(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    const-string/jumbo v1, "persist.sys.gamut_mode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set screen gamut error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScreenSaturation(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->setCE(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    const-string/jumbo v1, "persist.sys.display_ce"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set screen ce error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
