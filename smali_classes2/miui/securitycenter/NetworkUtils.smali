.class public Lmiui/securitycenter/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OverLayUtil"

.field private static mNMService:Landroid/os/INetworkManagementService;

.field private static mSystemServiceClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdjustedNetworkStatsTethering()Landroid/net/NetworkStats;
    .locals 10

    .prologue
    .line 165
    const/4 v4, 0x0

    .line 168
    .local v4, "networkStatsTethering":Landroid/net/NetworkStats;
    :try_start_0
    sget-object v6, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    if-nez v6, :cond_0

    .line 169
    const-string/jumbo v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    sput-object v6, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    .line 172
    :cond_0
    sget-object v6, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v4

    .line 173
    .local v4, "networkStatsTethering":Landroid/net/NetworkStats;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkStats;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    if-lez v6, :cond_2

    .line 175
    :try_start_1
    sget-object v6, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    if-nez v6, :cond_1

    .line 176
    const-string/jumbo v6, "SYSTEMSERVERCLASSPATH"

    invoke-static {v6}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "systemServerClasspath":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 178
    new-instance v6, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v6, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 184
    .end local v5    # "systemServerClasspath":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v6, "com.android.server.NetPluginDelegate"

    sget-object v7, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 186
    .local v3, "netPluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "getTetherStats"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/net/NetworkStats;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 187
    const-class v8, Landroid/net/NetworkStats;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Landroid/net/NetworkStats;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 186
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 188
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "netPluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    return-object v4

    .line 180
    .restart local v5    # "systemServerClasspath":Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    sput-object v6, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 189
    .end local v5    # "systemServerClasspath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_1

    .line 191
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v6, "OverLayUtil"

    const-string/jumbo v7, "an exception occurred!!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 195
    :catch_2
    move-exception v1

    .line 196
    .end local v4    # "networkStatsTethering":Landroid/net/NetworkStats;
    const-string/jumbo v6, "OverLayUtil"

    const-string/jumbo v7, "an exception occurred!!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getMobileIface(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-string/jumbo v3, "connectivity"

    .line 109
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 111
    .local v1, "cm":Landroid/net/IConnectivityManager;
    const/4 v0, 0x0

    .line 113
    .local v0, "activeLink":Landroid/net/LinkProperties;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v3}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    .end local v0    # "activeLink":Landroid/net/LinkProperties;
    :goto_0
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 114
    .restart local v0    # "activeLink":Landroid/net/LinkProperties;
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v0    # "activeLink":Landroid/net/LinkProperties;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v3, ""

    return-object v3
.end method

.method public static getNetworkStatsTethering()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v4, 0x0

    .line 204
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lmiui/securitycenter/NetworkUtils;->getAdjustedNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v3

    .line 205
    .local v3, "networkStatsTethering":Landroid/net/NetworkStats;
    const/4 v0, 0x0

    .line 206
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz v3, :cond_0

    .line 207
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 209
    invoke-virtual {v3, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 210
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v2, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "uid"

    iget v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string/jumbo v5, "iface"

    iget-object v6, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string/jumbo v5, "rxBytes"

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string/jumbo v5, "txBytes"

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string/jumbo v5, "tag"

    iget v6, v0, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v1    # "i":I
    .end local v2    # "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    return-object v4
.end method

.method public static isVpnConnected()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 151
    :try_start_0
    const-string/jumbo v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 150
    invoke-static {v5}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 153
    .local v2, "service":Landroid/net/IConnectivityManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 154
    .local v3, "userId":I
    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 156
    .local v1, "mConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 157
    .end local v1    # "mConfig":Lcom/android/internal/net/VpnConfig;
    .end local v3    # "userId":I
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OverLayUtil"

    const-string/jumbo v6, "isVpnConnected"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    return v4
.end method

.method public static saveWifiConfiguration(Landroid/content/Context;Ljava/net/InetAddress;Landroid/net/wifi/WifiConfiguration;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dns"    # Ljava/net/InetAddress;
    .param p2, "wifiConf"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 48
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 49
    :cond_0
    const-string/jumbo v8, "OverLayUtil"

    const-string/jumbo v9, "saveWifiConfiguration:  invalidate parameter!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 48
    :cond_1
    if-eqz p2, :cond_0

    .line 53
    const-string/jumbo v8, "wifi"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 54
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v7, :cond_2

    .line 55
    return-void

    .line 58
    :cond_2
    const/4 v4, 0x0

    .line 59
    .local v4, "isModified":Z
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v8

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v8, v9, :cond_7

    .line 60
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 61
    .local v0, "config":Landroid/net/StaticIpConfiguration;
    const/4 v5, 0x0

    .line 62
    .local v5, "oldDns":Ljava/net/InetAddress;
    iget-object v8, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 63
    iget-object v8, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "oldDns":Ljava/net/InetAddress;
    check-cast v5, Ljava/net/InetAddress;

    .line 65
    :cond_3
    iget-object v8, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 66
    iget-object v8, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    if-eqz v5, :cond_4

    .line 68
    iget-object v8, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_4
    const/4 v4, 0x1

    .line 93
    .end local v0    # "config":Landroid/net/StaticIpConfiguration;
    :cond_5
    :goto_0
    if-eqz v4, :cond_6

    .line 94
    new-instance v8, Lmiui/securitycenter/NetworkUtils$1;

    invoke-direct {v8}, Lmiui/securitycenter/NetworkUtils$1;-><init>()V

    invoke-virtual {v7, p2, v8}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 47
    :cond_6
    return-void

    .line 71
    :cond_7
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v8

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v8, v9, :cond_5

    .line 72
    new-instance v6, Landroid/net/StaticIpConfiguration;

    invoke-direct {v6}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 74
    .local v6, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 75
    .local v1, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v1, :cond_8

    .line 76
    iget v8, v1, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v8}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    .line 77
    .local v3, "ipAddress":Ljava/net/InetAddress;
    new-instance v8, Landroid/net/LinkAddress;

    iget v9, v1, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v9}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v9

    invoke-direct {v8, v3, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v8, v6, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 78
    iget v8, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v8}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v8

    iput-object v8, v6, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 79
    iget-object v8, v6, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :try_start_0
    iget-object v8, v6, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    iget v9, v1, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v9}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    new-instance v8, Landroid/net/IpConfiguration;

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v10, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-direct {v8, v9, v10, v6, v11}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    .line 86
    invoke-virtual {p2, v8}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 90
    .end local v3    # "ipAddress":Ljava/net/InetAddress;
    :cond_8
    const/4 v4, 0x1

    goto :goto_0

    .line 82
    .restart local v3    # "ipAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    iget-object v8, v6, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    const-string/jumbo v9, "8.8.8.8"

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static setMobileDataState(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mobileDataEnabled"    # Z

    .prologue
    .line 42
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 43
    .local v0, "telephonyService":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 41
    return-void
.end method

.method public static vpnPrepareAndAuthorize(Ljava/lang/String;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string/jumbo v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 135
    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 139
    .local v1, "service":Landroid/net/IConnectivityManager;
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 140
    .local v2, "userId":I
    const/4 v3, 0x0

    invoke-interface {v1, v3, p0, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    const/4 v3, 0x1

    invoke-interface {v1, p0, v2, v3}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2    # "userId":I
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "OverLayUtil"

    const-string/jumbo v4, "prepareAndAuthorize"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
