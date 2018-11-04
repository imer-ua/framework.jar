.class public Lorg/ifaa/android/manager/IFAAManagerImpl;
.super Lorg/ifaa/android/manager/IFAAManagerV3;
.source "IFAAManagerImpl.java"


# static fields
.field private static final CODE_PROCESS_CMD:I = 0x1

.field private static final DEBUG:Z = true

.field private static final IFAA_TYPE_FINGER:I = 0x1

.field private static final IFAA_TYPE_IRIS:I = 0x2

.field private static final IFAA_TYPE_SENSOR_FOD:I = 0x10

.field private static volatile INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl; = null

.field private static final INTERFACE_DESCRIPTOR:Ljava/lang/String; = "xiaomi.MlipayService"

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.xiaomi.mlipayservice"

.field private static final TAG:Ljava/lang/String; = "IfaaManagerImpl"

.field private static final mFingerActName:Ljava/lang/String; = "com.android.settings.NewFingerprintActivity"

.field private static final mFingerPackName:Ljava/lang/String; = "com.android.settings"

.field private static final seperate:Ljava/lang/String; = ","


# instance fields
.field private mDevModel:Ljava/lang/String;

.field private mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManagerV3;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/ifaa/android/manager/IFAAManagerV3;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lorg/ifaa/android/manager/IFAAManagerImpl;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerImpl;

    invoke-direct {v0}, Lorg/ifaa/android/manager/IFAAManagerImpl;-><init>()V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 43
    :cond_1
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/IFAAManagerImpl;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initExtString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 173
    const-string/jumbo v1, ""

    .line 174
    .local v1, "extStr":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 175
    .local v3, "obj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 176
    .local v2, "keyInfo":Lorg/json/JSONObject;
    const-string/jumbo v7, ""

    .line 177
    .local v7, "xy":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 178
    .local v6, "wh":Ljava/lang/String;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_0

    .line 179
    const-string/jumbo v8, "persist.vendor.sys.fp.fod.location.X_Y"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 180
    const-string/jumbo v8, "persist.vendor.sys.fp.fod.size.width_height"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 186
    :goto_0
    :try_start_0
    invoke-direct {p0, v7}, Lorg/ifaa/android/manager/IFAAManagerImpl;->validateVal(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v6}, Lorg/ifaa/android/manager/IFAAManagerImpl;->validateVal(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 187
    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "splitXy":[Ljava/lang/String;
    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "splitWh":[Ljava/lang/String;
    const-string/jumbo v8, "startX"

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    const-string/jumbo v8, "startY"

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    const-string/jumbo v8, "width"

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 192
    const-string/jumbo v8, "height"

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 193
    const-string/jumbo v8, "navConflict"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 194
    const-string/jumbo v8, "type"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    const-string/jumbo v8, "fullView"

    invoke-virtual {v3, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 203
    .end local v4    # "splitWh":[Ljava/lang/String;
    .end local v5    # "splitXy":[Ljava/lang/String;
    :goto_1
    return-object v1

    .line 182
    :cond_0
    const-string/jumbo v8, "persist.sys.fp.fod.location.X_Y"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 183
    const-string/jumbo v8, "persist.sys.fp.fod.size.width_height"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 198
    :cond_1
    :try_start_1
    const-string/jumbo v8, "IfaaManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "initExtString invalidate, xy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " wh:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "IfaaManagerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception , xy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " wh:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private validateVal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    return v0

    .line 210
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 98
    const-string/jumbo v1, "finger_alipay_ifaa_model"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "miuiFeature":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    .line 105
    .end local v0    # "miuiFeature":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v1, "IfaaManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceModel devcieModel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    return-object v1

    .line 102
    .restart local v0    # "miuiFeature":Ljava/lang/String;
    :cond_2
    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExtInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "authType"    # I
    .param p2, "keyExtInfo"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string/jumbo v0, "IfaaManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getExtInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManagerImpl;->initExtString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBIOTypes(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, "res":I
    const/4 v1, 0x0

    .line 52
    .local v1, "ifaaProp":I
    const-string/jumbo v0, ""

    .line 53
    .local v0, "fpVendor":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_1

    .line 54
    const-string/jumbo v3, "persist.vendor.sys.pay.ifaa"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 55
    const-string/jumbo v3, "persist.vendor.sys.fp.vendor"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    const-string/jumbo v3, "none"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    and-int/lit8 v2, v1, 0x2

    .line 65
    :goto_1
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sget-boolean v3, Lorg/ifaa/android/manager/IFAAManagerImpl;->sIsFod:Z

    if-eqz v3, :cond_0

    .line 66
    or-int/lit8 v2, v2, 0x10

    .line 68
    :cond_0
    const-string/jumbo v3, "IfaaManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSupportBIOTypes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 69
    sget-boolean v5, Lorg/ifaa/android/manager/IFAAManagerImpl;->sIsFod:Z

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 69
    const-string/jumbo v5, " "

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 69
    const-string/jumbo v5, " res:"

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return v2

    .line 57
    :cond_1
    const-string/jumbo v3, "persist.sys.ifaa"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 58
    const-string/jumbo v3, "persist.sys.fp.vendor"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_2
    and-int/lit8 v2, v1, 0x3

    goto :goto_1
.end method

.method public getVersion()I
    .locals 3

    .prologue
    .line 114
    const-string/jumbo v0, "IfaaManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVersion sdk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ifaaVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/ifaa/android/manager/IFAAManagerImpl;->sIfaaVer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->sIfaaVer:I

    return v0
.end method

.method public processCmdV2(Landroid/content/Context;[B)[B
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # [B

    .prologue
    const/4 v6, 0x0

    .line 122
    const-string/jumbo v3, "IfaaManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processCmdV2 sdk:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IBinder;

    if-nez v3, :cond_0

    .line 124
    const-string/jumbo v3, "com.xiaomi.mlipayservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IBinder;

    .line 126
    :cond_0
    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IBinder;

    if-nez v3, :cond_1

    .line 127
    const-string/jumbo v3, "IfaaManagerImpl"

    const-string/jumbo v4, "processCmdV2, service found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    const-string/jumbo v3, "IfaaManagerImpl"

    const-string/jumbo v4, "processCmdV2, return null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-object v6

    .line 129
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 130
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 132
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "xiaomi.MlipayService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 134
    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 135
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 135
    return-object v3

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v3, "IfaaManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processCmdV2 transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 138
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 138
    throw v3
.end method

.method public setExtInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "authType"    # I
    .param p2, "keyExtInfo"    # Ljava/lang/String;
    .param p3, "valExtInfo"    # Ljava/lang/String;

    .prologue
    .line 167
    return-void
.end method

.method public startBIOManager(Landroid/content/Context;I)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authType"    # I

    .prologue
    .line 81
    const/4 v1, -0x1

    .line 82
    .local v1, "res":I
    const/4 v2, 0x1

    if-ne v2, p2, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.NewFingerprintActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    const/4 v1, 0x0

    .line 89
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v2, "IfaaManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBIOManager authType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v1
.end method
