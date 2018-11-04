.class public Lmiui/app/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/WifiApEnabler$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApEnabler"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDisabledByAirplane:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mOpen:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusChanging:Z

.field private mToggleManager:Lmiui/app/ToggleManager;

.field private mWaitForWifiStateChange:Z

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lmiui/app/WifiApEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    return v0
.end method

.method static synthetic -wrap0(Lmiui/app/WifiApEnabler;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/app/WifiApEnabler;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/app/WifiApEnabler;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateAirplaneMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/ToggleManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toggleManager"    # Lmiui/app/ToggleManager;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lmiui/app/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lmiui/app/WifiApEnabler$1;-><init>(Lmiui/app/WifiApEnabler;)V

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 72
    const-string/jumbo v0, "connectivity"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 74
    iput-object p2, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    .line 75
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 78
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateAirplaneMode()V

    .line 84
    invoke-virtual {p0}, Lmiui/app/WifiApEnabler;->isWifiApOn()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 69
    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    packed-switch p1, :pswitch_data_0

    .line 182
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 183
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    .line 185
    :cond_0
    :goto_0
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    .line 156
    return-void

    .line 159
    :pswitch_0
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 160
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_0

    .line 167
    :pswitch_1
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 169
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_0

    .line 172
    :pswitch_2
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 173
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_0

    .line 176
    :pswitch_3
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 177
    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    if-nez v0, :cond_0

    .line 178
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 222
    packed-switch p1, :pswitch_data_0

    .line 221
    :goto_0
    return-void

    .line 225
    :pswitch_0
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    .line 226
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    .line 227
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initWifiTethering()V
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 235
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x1109004a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v2, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v1, :cond_1

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    :goto_0
    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 233
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-void

    .line 239
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setSoftapEnabledWithConnectivityManager(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 109
    const-string/jumbo v1, "WifiApEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSoftapEnabledWithConnectivityManager() enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "result":Z
    if-eqz p1, :cond_1

    .line 112
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-static {v1, v4, v2}, Lmiui/app/ConnectivityManagerReflector;->startTethering(Landroid/net/ConnectivityManager;IZ)Z

    move-result v0

    .line 117
    .local v0, "result":Z
    :goto_0
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    .line 119
    if-nez v0, :cond_0

    .line 120
    const-string/jumbo v1, "WifiApEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSoftapEnabledWithConnectivityManager() enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    return-void

    .line 114
    .local v0, "result":Z
    :cond_1
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v1, v4}, Lmiui/app/ConnectivityManagerReflector;->stopTethering(Landroid/net/ConnectivityManager;I)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method private setSoftapEnabledWithWifiManager(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/16 v6, 0x17

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 125
    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 130
    .local v2, "wifiState":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v6, :cond_1

    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 131
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 132
    :cond_0
    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 133
    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    :cond_1
    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3, p1}, Lmiui/app/CompatibilityP;->setWifiApEnabled(Landroid/net/wifi/WifiManager;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    iput-boolean v4, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    .line 139
    iput-boolean p1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    .line 140
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    .line 146
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v6, :cond_3

    if-eqz p1, :cond_4

    .line 124
    :cond_3
    :goto_0
    return-void

    .line 147
    :cond_4
    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 148
    .local v1, "wifiSavedState":I
    if-ne v1, v4, :cond_3

    .line 149
    iput-boolean v4, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    .line 150
    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 151
    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateAirplaneMode()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 93
    const-string/jumbo v2, "airplane_mode_on"

    .line 92
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    .line 94
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    .line 91
    return-void
.end method

.method private updateToggle()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/app/WifiApEnabler;->updateWifiApToggle(Z)V

    .line 188
    return-void
.end method


# virtual methods
.method isWifiApDisabled()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isWifiApOn()Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSoftapEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->initWifiTethering()V

    .line 101
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 102
    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->setSoftapEnabledWithWifiManager(Z)V

    .line 97
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->setSoftapEnabledWithConnectivityManager(Z)V

    goto :goto_0
.end method

.method public toggleWifiAp()V
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x18

    invoke-static {v0}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    if-eqz v0, :cond_1

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/app/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    return-void
.end method

.method updateWifiApToggle(Z)V
    .locals 3
    .param p1, "updateMiDrop"    # Z

    .prologue
    const/16 v2, 0x18

    .line 193
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    iget-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    invoke-virtual {v0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 194
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    :goto_0
    invoke-virtual {v1, v2, v0}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 195
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    if-eqz v0, :cond_2

    .line 196
    const v0, 0x110200ce

    .line 195
    :goto_1
    invoke-virtual {v1, v2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 198
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    .line 192
    :cond_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    :cond_2
    const v0, 0x110200cd

    goto :goto_1
.end method
