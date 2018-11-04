.class public Lmiui/app/CompatibilityP;
.super Ljava/lang/Object;
.source "CompatibilityP.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTemporaryScreenAutoBrightness(F)V
    .locals 3
    .param p0, "valf"    # F

    .prologue
    .line 20
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 21
    .local v1, "power":Landroid/os/IPowerManager;
    invoke-interface {v1, p0}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .end local v1    # "power":Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static setTemporaryScreenBrightness(I)V
    .locals 3
    .param p0, "brightnessValue"    # I

    .prologue
    .line 11
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 12
    .local v1, "power":Landroid/os/IPowerManager;
    invoke-interface {v1, p0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .end local v1    # "power":Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static setWifiApEnabled(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "enable"    # Z

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    return v0
.end method
