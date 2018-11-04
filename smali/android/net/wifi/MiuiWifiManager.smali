.class public Landroid/net/wifi/MiuiWifiManager;
.super Ljava/lang/Object;
.source "MiuiWifiManager.java"


# static fields
.field private static final BASE:I = 0x25fa0

.field public static final CMD_GET_CONNECTED_STATIONS:I = 0x25faa

.field public static final CMD_GET_OBSERVED_ACCESSPOINTS:I = 0x25fa3

.field public static final CMD_IGNORE_OBSERVED_AP:I = 0x25fa7

.field public static final CMD_SET_OBSERVED_ACCESSPOINTS:I = 0x25fa2

.field public static final CMD_SET_POWER_SAVE_ENABLED:I = 0x25fa9

.field public static final CMD_SET_SAR_LIMIT:I = 0x25fa8

.field public static final CMD_SET_WIFI_EXPLICITED:I = 0x25fa5

.field public static final CMD_SET_WIRELESS_CONNECT_MODE:I = 0x25fa4

.field public static final CMD_VERIFY_PRE_SHARED_KEY:I = 0x25fa6

.field public static final EXTRA_APS:Ljava/lang/String; = "extra_aps"

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_CONFIG:Ljava/lang/String; = "config"

.field public static final EXTRA_KEY:Ljava/lang/String; = "key"

.field public static final EXTRA_SSID:Ljava/lang/String; = "ssid"

.field public static final EXTRA_STATIONS:Ljava/lang/String; = "stations"

.field public static final FAILED:I = 0x2

.field public static final GET_SUPPLICANT_CONFIGURATION:I = 0x25fa1

.field private static final MAX_RSSI:I = -0x41

.field private static final MIN_RSSI:I = -0x64

.field public static final OBSERVED_ACCESSPOINTS_CHANGED:Ljava/lang/String; = "android.net.wifi.observed_accesspionts_changed"

.field public static final OBSERVED_OPENAPS_CHANGED:Ljava/lang/String; = "android.net.wifi.observed_open_accesspionts_changed"

.field public static final SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiWifiManager"

.field public static final WPS_DEVICE_GUEST:Ljava/lang/String; = "guest"

.field public static final WPS_DEVICE_XIAOMI:Ljava/lang/String; = "xiaomi"

.field private static sInstance:Landroid/net/wifi/MiuiWifiManager;


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    :try_start_0
    const-string/jumbo v3, "wifi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    .line 116
    .local v1, "service":Landroid/net/wifi/IWifiManager;
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "MiuiWifiManager"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "workThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 118
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 119
    iget-object v3, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 120
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v5

    const/4 v6, 0x0

    .line 119
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v1    # "service":Landroid/net/wifi/IWifiManager;
    .end local v2    # "workThread":Landroid/os/HandlerThread;
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MiuiWifiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "build WifiConfigForSupplicant failed exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static calculateSignalLevel(II)I
    .locals 3
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    .line 83
    const/16 v1, -0x64

    if-gt p0, v1, :cond_0

    .line 84
    const/4 v1, 0x0

    return v1

    .line 85
    :cond_0
    const/16 v1, -0x41

    if-lt p0, v1, :cond_1

    .line 86
    add-int/lit8 v1, p1, -0x1

    return v1

    .line 89
    :cond_1
    add-int/lit8 v1, p1, -0x1

    int-to-float v0, v1

    .line 90
    .local v0, "outputRange":F
    add-int/lit8 v1, p0, 0x64

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 88
    const/high16 v2, 0x420c0000    # 35.0f

    .line 90
    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static enablePowerSave(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .prologue
    .line 238
    const-string/jumbo v1, "MiuiWifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Enable power save: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 240
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x25fa9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 241
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 242
    invoke-static {}, Landroid/net/wifi/MiuiWifiManager;->getInstance()Landroid/net/wifi/MiuiWifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/MiuiWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    .line 237
    return-void

    .line 241
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Landroid/net/wifi/MiuiWifiManager;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Landroid/net/wifi/MiuiWifiManager;->sInstance:Landroid/net/wifi/MiuiWifiManager;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/net/wifi/MiuiWifiManager;

    invoke-direct {v0}, Landroid/net/wifi/MiuiWifiManager;-><init>()V

    sput-object v0, Landroid/net/wifi/MiuiWifiManager;->sInstance:Landroid/net/wifi/MiuiWifiManager;

    .line 130
    :cond_0
    sget-object v0, Landroid/net/wifi/MiuiWifiManager;->sInstance:Landroid/net/wifi/MiuiWifiManager;

    return-object v0
.end method

.method public static ignoreApsForScanObserver(Ljava/util/ArrayList;Z)V
    .locals 5
    .param p1, "ignore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "bssids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "MiuiWifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignore observed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 217
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x25fa7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "bssid"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 220
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 221
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 222
    invoke-static {}, Landroid/net/wifi/MiuiWifiManager;->getInstance()Landroid/net/wifi/MiuiWifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/MiuiWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    .line 214
    return-void

    .line 221
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMiWifi()Z
    .locals 6

    .prologue
    .line 100
    :try_start_0
    const-string/jumbo v4, "wifi"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    .line 101
    .local v1, "service":Landroid/net/wifi/IWifiManager;
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 102
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getVendorInfo()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "vendor":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v4, "XIAOMI_ROUTER"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "miwifi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    :cond_0
    const/4 v4, 0x1

    return v4

    .line 107
    .end local v2    # "vendor":Ljava/lang/String;
    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_0
    move-exception v0

    .line 109
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public static setSARLimit(I)V
    .locals 4
    .param p0, "set"    # I

    .prologue
    .line 229
    const-string/jumbo v1, "MiuiWifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set SAR limit to SET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 231
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x25fa8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 232
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 233
    invoke-static {}, Landroid/net/wifi/MiuiWifiManager;->getInstance()Landroid/net/wifi/MiuiWifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/MiuiWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    .line 228
    return-void
.end method

.method public static verifyPreSharedKey(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 6
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "preSharedKey"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string/jumbo v4, "MiuiWifiManager"

    const-string/jumbo v5, "Verify shared key"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_0

    .line 195
    const-string/jumbo v4, "MiuiWifiManager"

    const-string/jumbo v5, "Cannot verify shared key in api lower than 23"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v4, 0x0

    return v4

    .line 199
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "config"

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 201
    const-string/jumbo v4, "key"

    invoke-virtual {v0, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 203
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 204
    const v4, 0x25fa6

    iput v4, v1, Landroid/os/Message;->what:I

    .line 205
    invoke-static {}, Landroid/net/wifi/MiuiWifiManager;->getInstance()Landroid/net/wifi/MiuiWifiManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/wifi/MiuiWifiManager;->sendSyncMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 206
    .local v2, "msgRusult":Landroid/os/Message;
    iget v4, v2, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    .line 207
    .local v3, "result":Z
    :goto_0
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 208
    return v3

    .line 206
    .end local v3    # "result":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "result":Z
    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 133
    return-void

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 138
    throw v0
.end method

.method public getObservedAccessPionts()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 157
    .local v1, "msg":Landroid/os/Message;
    const v4, 0x25fa3

    iput v4, v1, Landroid/os/Message;->what:I

    .line 158
    iget-object v4, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 159
    .local v2, "msgRusult":Landroid/os/Message;
    const/4 v3, 0x0

    .line 160
    .local v3, "observAps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 161
    .local v0, "bundle":Landroid/os/Bundle;
    iget v4, v2, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    if-eqz v0, :cond_0

    .line 162
    const-string/jumbo v4, "extra_aps"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 164
    .end local v3    # "observAps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 165
    return-object v3
.end method

.method public sendAsyncMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 174
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 173
    return-void
.end method

.method public sendSyncMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 178
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public setCompatibleMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 170
    iget-object v1, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x25fa4

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 169
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNetworkExplicited()V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x25fa5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 185
    invoke-virtual {p0, v0}, Landroid/net/wifi/MiuiWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    .line 182
    return-void
.end method

.method public setObservedAccessPionts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "observedAPs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "extra_aps"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 148
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 149
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x25fa2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 150
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 151
    invoke-virtual {p0, v1}, Landroid/net/wifi/MiuiWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    .line 144
    return-void
.end method
