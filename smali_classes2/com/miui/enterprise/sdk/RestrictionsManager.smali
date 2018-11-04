.class public Lcom/miui/enterprise/sdk/RestrictionsManager;
.super Ljava/lang/Object;
.source "RestrictionsManager.java"


# static fields
.field public static final AIRPLANE_STATE:Ljava/lang/String; = "airplane_state"

.field public static final BLUETOOTH_STATE:Ljava/lang/String; = "bluetooth_state"

.field public static final CLOSE:I = 0x3

.field public static final DISABLE:I = 0x0

.field public static final DISABLE_ACCELEROMETER:Ljava/lang/String; = "disable_accelerometer"

.field public static final DISALLOW_AUTO_SYNC:Ljava/lang/String; = "disallow_auto_sync"

.field public static final DISALLOW_BACKUP:Ljava/lang/String; = "disallow_backup"

.field public static final DISALLOW_CAMERA:Ljava/lang/String; = "disallow_camera"

.field public static final DISALLOW_CHANGE_LANGUAGE:Ljava/lang/String; = "disallow_change_language"

.field public static final DISALLOW_FACTORYRESET:Ljava/lang/String; = "disallow_factoryreset"

.field public static final DISALLOW_FINGERPRINT:Ljava/lang/String; = "disallow_fingerprint"

.field public static final DISALLOW_IMEIREAD:Ljava/lang/String; = "disallow_imeiread"

.field public static final DISALLOW_MICROPHONE:Ljava/lang/String; = "disallow_microphone"

.field public static final DISALLOW_MTP:Ljava/lang/String; = "disallow_mtp"

.field public static final DISALLOW_OTG:Ljava/lang/String; = "disallow_otg"

.field public static final DISALLOW_SAFE_MODE:Ljava/lang/String; = "disallow_safe_mode"

.field public static final DISALLOW_SCREENCAPTURE:Ljava/lang/String; = "disallow_screencapture"

.field public static final DISALLOW_SDCARD:Ljava/lang/String; = "disallow_sdcard"

.field public static final DISALLOW_TETHER:Ljava/lang/String; = "disallow_tether"

.field public static final DISALLOW_TIMESET:Ljava/lang/String; = "disallow_timeset"

.field public static final DISALLOW_USBDEBUG:Ljava/lang/String; = "disallow_usbdebug"

.field public static final DISALLOW_USB_DEVICE:Ljava/lang/String; = "disable_usb_device"

.field public static final DISALLOW_VPN:Ljava/lang/String; = "disallow_vpn"

.field public static final ENABLE:I = 0x1

.field public static final FORCE_OPEN:I = 0x4

.field public static final GPS_STATE:Ljava/lang/String; = "gps_state"

.field public static final NFC_STATE:Ljava/lang/String; = "nfc_state"

.field public static final OPEN:I = 0x2

.field public static final WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field private static volatile sInstance:Lcom/miui/enterprise/sdk/RestrictionsManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mService:Lcom/miui/enterprise/IRestrictionsManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, "RestrictionsManager"

    iput-object v0, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    .line 240
    const-string/jumbo v0, "restrictions_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IRestrictionsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IRestrictionsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    .line 239
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/enterprise/sdk/RestrictionsManager;
    .locals 2

    .prologue
    const-class v1, Lcom/miui/enterprise/sdk/RestrictionsManager;

    monitor-enter v1

    .line 244
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/RestrictionsManager;->sInstance:Lcom/miui/enterprise/sdk/RestrictionsManager;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/miui/enterprise/sdk/RestrictionsManager;

    invoke-direct {v0}, Lcom/miui/enterprise/sdk/RestrictionsManager;-><init>()V

    sput-object v0, Lcom/miui/enterprise/sdk/RestrictionsManager;->sInstance:Lcom/miui/enterprise/sdk/RestrictionsManager;

    .line 247
    :cond_0
    sget-object v0, Lcom/miui/enterprise/sdk/RestrictionsManager;->sInstance:Lcom/miui/enterprise/sdk/RestrictionsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getControlStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/RestrictionsManager;->getControlStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getControlStatus(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IRestrictionsManager;->getControlStatus(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v1, 0x1

    return v1
.end method

.method public hasRestriction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/RestrictionsManager;->hasRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasRestriction(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IRestrictionsManager;->hasRestriction(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v1, 0x0

    return v1
.end method

.method public setControlStatus(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 251
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/RestrictionsManager;->setControlStatus(Ljava/lang/String;II)V

    .line 250
    return-void
.end method

.method public setControlStatus(Ljava/lang/String;II)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userId"    # I

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/enterprise/IRestrictionsManager;->setControlStatus(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRestriction(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 263
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/RestrictionsManager;->setRestriction(Ljava/lang/String;ZI)V

    .line 262
    return-void
.end method

.method public setRestriction(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/enterprise/IRestrictionsManager;->setRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
