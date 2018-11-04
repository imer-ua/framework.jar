.class public Lmiui/hareware/display/DisplayFeatureManager;
.super Ljava/lang/Object;
.source "DisplayFeatureManager.java"


# static fields
.field private static final COLOR_SERVICE_NAME:Ljava/lang/String; = "com.qti.snapdragon.sdk.display.IColorService"

.field public static final DEFALUT_GAMUT_MODE:I = 0x0

.field public static final DEFALUT_SCREEN_CABC:I = 0x1

.field public static final DEFALUT_SCREEN_COLOR:I = 0x2

.field public static final DEFAULT_DISPLAY_EYECARE_LEVEL:I = 0x0

.field public static final DEFAULT_SCREEN_SATURATION:I

.field private static final DISPLAY_FEATURE_SERVICE:Ljava/lang/String; = "DisplayFeatureControl"

.field public static final PROPERTY_ASSERTIVE_DISPLAY:Ljava/lang/String; = "persist.sys.ltm_enable"

.field public static final PROPERTY_DISPLAY_EYECARE:Ljava/lang/String; = "persist.sys.display_eyecare"

.field public static final PROPERTY_GAMUT_MODE:Ljava/lang/String; = "persist.sys.gamut_mode"

.field public static final PROPERTY_SCREEN_CABC:Ljava/lang/String; = "persist.sys.display_cabc"

.field public static final PROPERTY_SCREEN_COLOR:Ljava/lang/String; = "persist.sys.display_prefer"

.field public static final PROPERTY_SCREEN_SATURATION:Ljava/lang/String; = "persist.sys.display_ce"

.field public static final SCREEN_COLOR_COOL:I = 0x3

.field public static final SCREEN_COLOR_NATURE:I = 0x2

.field public static final SCREEN_COLOR_WARM:I = 0x1

.field public static final SCREEN_SATURATION_STANDARD:I = 0xa

.field public static final SCREEN_SATURATION_VIVID:I = 0xb

.field private static TAG:Ljava/lang/String; = null

.field private static final TRANSACTION_setActiveMode:I = 0x6

.field private static final TRANSACTION_setDefaultMode:I = 0xc

.field private static sInstance:Lmiui/hareware/display/DisplayFeatureManager;


# instance fields
.field private mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "DisplayFeatureManager"

    sput-object v0, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    .line 109
    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getDefaultScreenSaturation()I

    move-result v0

    sput v0, Lmiui/hareware/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v1, "DisplayFeatureControl"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 43
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lmiui/hareware/display/DisplayFeatureServiceProxy;

    invoke-direct {v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    .line 41
    :cond_0
    return-void
.end method

.method private static getDefaultScreenSaturation()I
    .locals 3

    .prologue
    .line 112
    const/16 v0, 0xa

    .line 113
    .local v0, "defaultSaturationMode":I
    const-string/jumbo v1, "is_hongmi"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/16 v0, 0xb

    .line 116
    :cond_0
    const-string/jumbo v1, "display_ce"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getInstance()Lmiui/hareware/display/DisplayFeatureManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lmiui/hareware/display/DisplayFeatureManager;

    invoke-direct {v0}, Lmiui/hareware/display/DisplayFeatureManager;-><init>()V

    sput-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    .line 38
    :cond_0
    sget-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    return-object v0
.end method

.method private setActiveMode(Landroid/os/IBinder;II)I
    .locals 5
    .param p1, "colorService"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "modeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 213
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 216
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {p1, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 223
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    return v2

    .line 222
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    throw v3
.end method

.method private setDefaultMode(Landroid/os/IBinder;II)I
    .locals 5
    .param p1, "colorService"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "modeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 233
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 236
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {p1, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 243
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 246
    return v2

    .line 242
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    .line 243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    throw v3
.end method


# virtual methods
.method public getColorPrefer()I
    .locals 2

    .prologue
    .line 70
    const-string/jumbo v0, "persist.sys.display_prefer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEyeCare()I
    .locals 2

    .prologue
    .line 99
    const-string/jumbo v0, "persist.sys.display_eyecare"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenCabc()I
    .locals 2

    .prologue
    .line 153
    const-string/jumbo v0, "persist.sys.display_cabc"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenGamut()I
    .locals 2

    .prologue
    .line 175
    const-string/jumbo v0, "persist.sys.gamut_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenSaturation()I
    .locals 2

    .prologue
    .line 131
    const-string/jumbo v0, "persist.sys.display_ce"

    sget v1, Lmiui/hareware/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAdEnable()Z
    .locals 2

    .prologue
    .line 197
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

    .line 186
    :try_start_0
    iget-object v2, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-virtual {v2, v3, v1, v4}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setAd(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_1
    :goto_0
    const-string/jumbo v1, "persist.sys.ltm_enable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set assertive display error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setColorPrefer(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setColorPrefer(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    const-string/jumbo v1, "persist.sys.display_prefer"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set color prefer error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEyeCare(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 82
    const/4 v2, -0x1

    .line 83
    .local v2, "ret":I
    :try_start_0
    iget-object v3, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setEyeCare(II)I

    move-result v2

    .line 86
    :cond_0
    const-string/jumbo v3, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 87
    .local v0, "colorService":Landroid/os/IBinder;
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 88
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p1}, Lmiui/hareware/display/DisplayFeatureManager;->setActiveMode(Landroid/os/IBinder;II)I

    .line 89
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p1}, Lmiui/hareware/display/DisplayFeatureManager;->setDefaultMode(Landroid/os/IBinder;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "colorService":Landroid/os/IBinder;
    :cond_1
    :goto_0
    const-string/jumbo v3, "persist.sys.display_eyecare"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "set eye care error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setScreenCabc(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setCABC(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    const-string/jumbo v1, "persist.sys.display_cabc"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set screen cabc error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setScreenGamut(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setGamutMode(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    const-string/jumbo v1, "persist.sys.gamut_mode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set screen gamut error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setScreenSaturation(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setCE(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    const-string/jumbo v1, "persist.sys.display_ce"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set screen ce error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
