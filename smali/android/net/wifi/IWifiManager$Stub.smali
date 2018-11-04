.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x27

.field static final TRANSACTION_acquireWifiLock:I = 0x22

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x8

.field static final TRANSACTION_addPasspointManagementObject:I = 0x9

.field static final TRANSACTION_addToBlacklist:I = 0x2e

.field static final TRANSACTION_buildWifiConfig:I = 0x2c

.field static final TRANSACTION_clearBlacklist:I = 0x2f

.field static final TRANSACTION_deauthenticateNetwork:I = 0xd

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x3f

.field static final TRANSACTION_disableNetwork:I = 0x10

.field static final TRANSACTION_disconnect:I = 0x14

.field static final TRANSACTION_enableAggressiveHandover:I = 0x37

.field static final TRANSACTION_enableNetwork:I = 0xf

.field static final TRANSACTION_enableTdls:I = 0x32

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x33

.field static final TRANSACTION_enableVerboseLogging:I = 0x35

.field static final TRANSACTION_enableWifiConnectivityManager:I = 0x3d

.field static final TRANSACTION_factoryReset:I = 0x40

.field static final TRANSACTION_getAggressiveHandover:I = 0x38

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x3a

.field static final TRANSACTION_getConfigFile:I = 0x31

.field static final TRANSACTION_getConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getConnectionInfo:I = 0x17

.field static final TRANSACTION_getConnectionStatistics:I = 0x3e

.field static final TRANSACTION_getCountryCode:I = 0x1b

.field static final TRANSACTION_getCurrentNetwork:I = 0x41

.field static final TRANSACTION_getDhcpInfo:I = 0x20

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x3c

.field static final TRANSACTION_getFrequencyBand:I = 0x1d

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x7

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x5

.field static final TRANSACTION_getScanResults:I = 0x13

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x36

.field static final TRANSACTION_getWifiApConfiguration:I = 0x2b

.field static final TRANSACTION_getWifiApEnabledState:I = 0x2a

.field static final TRANSACTION_getWifiEnabledState:I = 0x19

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x30

.field static final TRANSACTION_getWifiStaSapConcurrency:I = 0x42

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x34

.field static final TRANSACTION_hasCarrierConfiguredNetworks:I = 0x6

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x25

.field static final TRANSACTION_isDualBandSupported:I = 0x1e

.field static final TRANSACTION_isMulticastEnabled:I = 0x26

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x21

.field static final TRANSACTION_matchProviderWithCurrentNetwork:I = 0xc

.field static final TRANSACTION_modifyPasspointManagementObject:I = 0xa

.field static final TRANSACTION_pingSupplicant:I = 0x11

.field static final TRANSACTION_queryPasspointIcon:I = 0xb

.field static final TRANSACTION_reassociate:I = 0x16

.field static final TRANSACTION_reconnect:I = 0x15

.field static final TRANSACTION_releaseMulticastLock:I = 0x28

.field static final TRANSACTION_releaseWifiLock:I = 0x24

.field static final TRANSACTION_removeNetwork:I = 0xe

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestActivityInfo:I = 0x3

.field static final TRANSACTION_saveConfiguration:I = 0x1f

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x39

.field static final TRANSACTION_setCountryCode:I = 0x1a

.field static final TRANSACTION_setEnableAutoJoinWhenAssociated:I = 0x3b

.field static final TRANSACTION_setFrequencyBand:I = 0x1c

.field static final TRANSACTION_setWifiApConfiguration:I = 0x2d

.field static final TRANSACTION_setWifiApEnabled:I = 0x29

.field static final TRANSACTION_setWifiEnabled:I = 0x18

.field static final TRANSACTION_startScan:I = 0x12

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 35
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 766
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v34

    return v34

    .line 47
    :sswitch_0
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/16 v34, 0x1

    return v34

    .line 52
    :sswitch_1
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v22

    .line 54
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/16 v34, 0x1

    return v34

    .line 60
    .end local v22    # "_result":I
    :sswitch_2
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v26

    .line 62
    .local v26, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v26, :cond_0

    .line 64
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/16 v34, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    :goto_0
    const/16 v34, 0x1

    return v34

    .line 68
    :cond_0
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v26    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_1

    .line 77
    sget-object v34, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ResultReceiver;

    .line 82
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/wifi/IWifiManager$Stub;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 83
    const/16 v34, 0x1

    return v34

    .line 80
    :cond_1
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_1

    .line 87
    .end local v11    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_4
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v23

    .line 89
    .local v23, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v23, :cond_2

    .line 91
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/16 v34, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    :goto_2
    const/16 v34, 0x1

    return v34

    .line 95
    :cond_2
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 101
    .end local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_5
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v23

    .line 103
    .restart local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v23, :cond_3

    .line 105
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/16 v34, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    :goto_3
    const/16 v34, 0x1

    return v34

    .line 109
    :cond_3
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 115
    .end local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_6
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->hasCarrierConfiguredNetworks()Z

    move-result v33

    .line 117
    .local v33, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v33, :cond_4

    const/16 v34, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/16 v34, 0x1

    return v34

    .line 118
    :cond_4
    const/16 v34, 0x0

    goto :goto_4

    .line 123
    .end local v33    # "_result":Z
    :sswitch_7
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_5

    .line 126
    sget-object v34, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 131
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 132
    .local v27, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v27, :cond_6

    .line 134
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/16 v34, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    :goto_6
    const/16 v34, 0x1

    return v34

    .line 129
    .end local v27    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_5

    .line 138
    .end local v5    # "_arg0":Landroid/net/wifi/ScanResult;
    .restart local v27    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 144
    .end local v27    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_8
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_7

    .line 147
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 152
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v22

    .line 153
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/16 v34, 0x1

    return v34

    .line 150
    .end local v22    # "_result":I
    :cond_7
    const/4 v9, 0x0

    .local v9, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_7

    .line 159
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_9
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 162
    .local v12, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->addPasspointManagementObject(Ljava/lang/String;)I

    move-result v22

    .line 163
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/16 v34, 0x1

    return v34

    .line 169
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":I
    :sswitch_a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 173
    .restart local v12    # "_arg0":Ljava/lang/String;
    sget-object v34, Landroid/net/wifi/PasspointManagementObjectDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 174
    .local v17, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->modifyPasspointManagementObject(Ljava/lang/String;Ljava/util/List;)I

    move-result v22

    .line 175
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/16 v34, 0x1

    return v34

    .line 181
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    .end local v22    # "_result":I
    :sswitch_b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 185
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 186
    .local v16, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->queryPasspointIcon(JLjava/lang/String;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/16 v34, 0x1

    return v34

    .line 192
    .end local v6    # "_arg0":J
    .end local v16    # "_arg1":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 195
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v22

    .line 196
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/16 v34, 0x1

    return v34

    .line 202
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":I
    :sswitch_d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 206
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_8

    const/16 v18, 0x1

    .line 207
    .local v18, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->deauthenticateNetwork(JZ)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    const/16 v34, 0x1

    return v34

    .line 206
    .end local v18    # "_arg1":Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_8

    .line 213
    .end local v6    # "_arg0":J
    :sswitch_e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 216
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v33

    .line 217
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v33, :cond_9

    const/16 v34, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/16 v34, 0x1

    return v34

    .line 218
    :cond_9
    const/16 v34, 0x0

    goto :goto_9

    .line 223
    .end local v4    # "_arg0":I
    .end local v33    # "_result":Z
    :sswitch_f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 227
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_a

    const/16 v18, 0x1

    .line 228
    .restart local v18    # "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v33

    .line 229
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v33, :cond_b

    const/16 v34, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/16 v34, 0x1

    return v34

    .line 227
    .end local v18    # "_arg1":Z
    .end local v33    # "_result":Z
    :cond_a
    const/16 v18, 0x0

    goto :goto_a

    .line 230
    .restart local v18    # "_arg1":Z
    .restart local v33    # "_result":Z
    :cond_b
    const/16 v34, 0x0

    goto :goto_b

    .line 235
    .end local v4    # "_arg0":I
    .end local v18    # "_arg1":Z
    .end local v33    # "_result":Z
    :sswitch_10
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 238
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v33

    .line 239
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v33, :cond_c

    const/16 v34, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/16 v34, 0x1

    return v34

    .line 240
    :cond_c
    const/16 v34, 0x0

    goto :goto_c

    .line 245
    .end local v4    # "_arg0":I
    .end local v33    # "_result":Z
    :sswitch_11
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v33

    .line 247
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v33, :cond_d

    const/16 v34, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/16 v34, 0x1

    return v34

    .line 248
    :cond_d
    const/16 v34, 0x0

    goto :goto_d

    .line 253
    .end local v33    # "_result":Z
    :sswitch_12
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_e

    .line 256
    sget-object v34, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanSettings;

    .line 262
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_f

    .line 263
    sget-object v34, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/WorkSource;

    .line 268
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    const/16 v34, 0x1

    return v34

    .line 259
    :cond_e
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_e

    .line 266
    .end local v8    # "_arg0":Landroid/net/wifi/ScanSettings;
    :cond_f
    const/4 v15, 0x0

    .local v15, "_arg1":Landroid/os/WorkSource;
    goto :goto_f

    .line 274
    .end local v15    # "_arg1":Landroid/os/WorkSource;
    :sswitch_13
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 277
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v32

    .line 278
    .local v32, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 280
    const/16 v34, 0x1

    return v34

    .line 284
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_14
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    const/16 v34, 0x1

    return v34

    .line 291
    :sswitch_15
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    const/16 v34, 0x1

    return v34

    .line 298
    :sswitch_16
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    const/16 v34, 0x1

    return v34

    .line 305
    :sswitch_17
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v29

    .line 307
    .local v29, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v29, :cond_10

    .line 309
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/16 v34, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 315
    :goto_10
    const/16 v34, 0x1

    return v34

    .line 313
    :cond_10
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 319
    .end local v29    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_18
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 323
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_11

    const/16 v18, 0x1

    .line 324
    .restart local v18    # "_arg1":Z
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Ljava/lang/String;Z)Z

    move-result v33

    .line 325
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    if-eqz v33, :cond_12

    const/16 v34, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/16 v34, 0x1

    return v34

    .line 323
    .end local v18    # "_arg1":Z
    .end local v33    # "_result":Z
    :cond_11
    const/16 v18, 0x0

    goto :goto_11

    .line 326
    .restart local v18    # "_arg1":Z
    .restart local v33    # "_result":Z
    :cond_12
    const/16 v34, 0x0

    goto :goto_12

    .line 331
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":Z
    .end local v33    # "_result":Z
    :sswitch_19
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v22

    .line 333
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    const/16 v34, 0x1

    return v34

    .line 339
    .end local v22    # "_result":I
    :sswitch_1a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 343
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_13

    const/16 v18, 0x1

    .line 344
    .restart local v18    # "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    const/16 v34, 0x1

    return v34

    .line 343
    .end local v18    # "_arg1":Z
    :cond_13
    const/16 v18, 0x0

    goto :goto_13

    .line 350
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v31

    .line 352
    .local v31, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    const/16 v34, 0x1

    return v34

    .line 358
    .end local v31    # "_result":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 362
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_14

    const/16 v18, 0x1

    .line 363
    .restart local v18    # "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    const/16 v34, 0x1

    return v34

    .line 362
    .end local v18    # "_arg1":Z
    :cond_14
    const/16 v18, 0x0

    goto :goto_14

    .line 369
    .end local v4    # "_arg0":I
    :sswitch_1d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v22

    .line 371
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/16 v34, 0x1

    return v34

    .line 377
    .end local v22    # "_result":I
    :sswitch_1e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v33

    .line 379
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v33, :cond_15

    const/16 v34, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    const/16 v34, 0x1

    return v34

    .line 380
    :cond_15
    const/16 v34, 0x0

    goto :goto_15

    .line 385
    .end local v33    # "_result":Z
    :sswitch_1f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v33

    .line 387
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v33, :cond_16

    const/16 v34, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    const/16 v34, 0x1

    return v34

    .line 388
    :cond_16
    const/16 v34, 0x0

    goto :goto_16

    .line 393
    .end local v33    # "_result":Z
    :sswitch_20
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v24

    .line 395
    .local v24, "_result":Landroid/net/DhcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v24, :cond_17

    .line 397
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    const/16 v34, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 403
    :goto_17
    const/16 v34, 0x1

    return v34

    .line 401
    :cond_17
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 407
    .end local v24    # "_result":Landroid/net/DhcpInfo;
    :sswitch_21
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v33

    .line 409
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    if-eqz v33, :cond_18

    const/16 v34, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    const/16 v34, 0x1

    return v34

    .line 410
    :cond_18
    const/16 v34, 0x0

    goto :goto_18

    .line 415
    .end local v33    # "_result":Z
    :sswitch_22
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 419
    .local v10, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 421
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 423
    .local v19, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_19

    .line 424
    sget-object v34, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/WorkSource;

    .line 429
    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v10, v14, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v33

    .line 430
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v33, :cond_1a

    const/16 v34, 0x1

    :goto_1a
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    const/16 v34, 0x1

    return v34

    .line 427
    .end local v33    # "_result":Z
    :cond_19
    const/16 v21, 0x0

    .local v21, "_arg3":Landroid/os/WorkSource;
    goto :goto_19

    .line 431
    .end local v21    # "_arg3":Landroid/os/WorkSource;
    .restart local v33    # "_result":Z
    :cond_1a
    const/16 v34, 0x0

    goto :goto_1a

    .line 436
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":I
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_23
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 440
    .restart local v10    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_1b

    .line 441
    sget-object v34, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/WorkSource;

    .line 446
    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/16 v34, 0x1

    return v34

    .line 444
    :cond_1b
    const/4 v15, 0x0

    .restart local v15    # "_arg1":Landroid/os/WorkSource;
    goto :goto_1b

    .line 452
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":Landroid/os/WorkSource;
    :sswitch_24
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 455
    .restart local v10    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v33

    .line 456
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    if-eqz v33, :cond_1c

    const/16 v34, 0x1

    :goto_1c
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/16 v34, 0x1

    return v34

    .line 457
    :cond_1c
    const/16 v34, 0x0

    goto :goto_1c

    .line 462
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v33    # "_result":Z
    :sswitch_25
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    const/16 v34, 0x1

    return v34

    .line 469
    :sswitch_26
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v33

    .line 471
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    if-eqz v33, :cond_1d

    const/16 v34, 0x1

    :goto_1d
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    const/16 v34, 0x1

    return v34

    .line 472
    :cond_1d
    const/16 v34, 0x0

    goto :goto_1d

    .line 477
    .end local v33    # "_result":Z
    :sswitch_27
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 481
    .restart local v10    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 482
    .restart local v16    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    const/16 v34, 0x1

    return v34

    .line 488
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    const/16 v34, 0x1

    return v34

    .line 495
    :sswitch_29
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_1e

    .line 498
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 504
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_1f

    const/16 v18, 0x1

    .line 505
    .restart local v18    # "_arg1":Z
    :goto_1f
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    const/16 v34, 0x1

    return v34

    .line 501
    .end local v18    # "_arg1":Z
    :cond_1e
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1e

    .line 504
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1f
    const/16 v18, 0x0

    goto :goto_1f

    .line 511
    :sswitch_2a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v22

    .line 513
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/16 v34, 0x1

    return v34

    .line 519
    .end local v22    # "_result":I
    :sswitch_2b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 521
    .restart local v27    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    if-eqz v27, :cond_20

    .line 523
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    const/16 v34, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 529
    :goto_20
    const/16 v34, 0x1

    return v34

    .line 527
    :cond_20
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 533
    .end local v27    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 537
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 539
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .line 540
    .local v20, "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 541
    .restart local v27    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    if-eqz v27, :cond_21

    .line 543
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    const/16 v34, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 549
    :goto_21
    const/16 v34, 0x1

    return v34

    .line 547
    :cond_21
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 553
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":[B
    .end local v27    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_22

    .line 556
    sget-object v34, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 561
    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    const/16 v34, 0x1

    return v34

    .line 559
    :cond_22
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_22

    .line 567
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 570
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    const/16 v34, 0x1

    return v34

    .line 576
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    const/16 v34, 0x1

    return v34

    .line 583
    :sswitch_30
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v30

    .line 585
    .local v30, "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    if-eqz v30, :cond_23

    .line 587
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    const/16 v34, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 593
    :goto_23
    const/16 v34, 0x1

    return v34

    .line 591
    :cond_23
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 597
    .end local v30    # "_result":Landroid/os/Messenger;
    :sswitch_31
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v31

    .line 599
    .restart local v31    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 601
    const/16 v34, 0x1

    return v34

    .line 605
    .end local v31    # "_result":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 609
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_24

    const/16 v18, 0x1

    .line 610
    .restart local v18    # "_arg1":Z
    :goto_24
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    const/16 v34, 0x1

    return v34

    .line 609
    .end local v18    # "_arg1":Z
    :cond_24
    const/16 v18, 0x0

    goto :goto_24

    .line 616
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 620
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_25

    const/16 v18, 0x1

    .line 621
    .restart local v18    # "_arg1":Z
    :goto_25
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 622
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    const/16 v34, 0x1

    return v34

    .line 620
    .end local v18    # "_arg1":Z
    :cond_25
    const/16 v18, 0x0

    goto :goto_25

    .line 627
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 630
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v31

    .line 631
    .restart local v31    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 633
    const/16 v34, 0x1

    return v34

    .line 637
    .end local v4    # "_arg0":I
    .end local v31    # "_result":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 640
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    const/16 v34, 0x1

    return v34

    .line 646
    .end local v4    # "_arg0":I
    :sswitch_36
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v22

    .line 648
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    const/16 v34, 0x1

    return v34

    .line 654
    .end local v22    # "_result":I
    :sswitch_37
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 657
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    const/16 v34, 0x1

    return v34

    .line 663
    .end local v4    # "_arg0":I
    :sswitch_38
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v22

    .line 665
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    const/16 v34, 0x1

    return v34

    .line 671
    .end local v22    # "_result":I
    :sswitch_39
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 674
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    .line 675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    const/16 v34, 0x1

    return v34

    .line 680
    .end local v4    # "_arg0":I
    :sswitch_3a
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v22

    .line 682
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    const/16 v34, 0x1

    return v34

    .line 688
    .end local v22    # "_result":I
    :sswitch_3b
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_26

    const/4 v13, 0x1

    .line 691
    .local v13, "_arg0":Z
    :goto_26
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->setEnableAutoJoinWhenAssociated(Z)Z

    move-result v33

    .line 692
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    if-eqz v33, :cond_27

    const/16 v34, 0x1

    :goto_27
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    const/16 v34, 0x1

    return v34

    .line 690
    .end local v13    # "_arg0":Z
    .end local v33    # "_result":Z
    :cond_26
    const/4 v13, 0x0

    goto :goto_26

    .line 693
    .restart local v13    # "_arg0":Z
    .restart local v33    # "_result":Z
    :cond_27
    const/16 v34, 0x0

    goto :goto_27

    .line 698
    .end local v13    # "_arg0":Z
    .end local v33    # "_result":Z
    :sswitch_3c
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getEnableAutoJoinWhenAssociated()Z

    move-result v33

    .line 700
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    if-eqz v33, :cond_28

    const/16 v34, 0x1

    :goto_28
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    const/16 v34, 0x1

    return v34

    .line 701
    :cond_28
    const/16 v34, 0x0

    goto :goto_28

    .line 706
    .end local v33    # "_result":Z
    :sswitch_3d
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_29

    const/4 v13, 0x1

    .line 709
    .restart local v13    # "_arg0":Z
    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->enableWifiConnectivityManager(Z)V

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    const/16 v34, 0x1

    return v34

    .line 708
    .end local v13    # "_arg0":Z
    :cond_29
    const/4 v13, 0x0

    goto :goto_29

    .line 715
    :sswitch_3e
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v28

    .line 717
    .local v28, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    if-eqz v28, :cond_2a

    .line 719
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    const/16 v34, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 725
    :goto_2a
    const/16 v34, 0x1

    return v34

    .line 723
    :cond_2a
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 729
    .end local v28    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_3f
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 732
    .restart local v12    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    const/16 v34, 0x1

    return v34

    .line 738
    .end local v12    # "_arg0":Ljava/lang/String;
    :sswitch_40
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset()V

    .line 740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    const/16 v34, 0x1

    return v34

    .line 745
    :sswitch_41
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v25

    .line 747
    .local v25, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    if-eqz v25, :cond_2b

    .line 749
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    const/16 v34, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 755
    :goto_2b
    const/16 v34, 0x1

    return v34

    .line 753
    :cond_2b
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 759
    .end local v25    # "_result":Landroid/net/Network;
    :sswitch_42
    const-string/jumbo v34, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStaSapConcurrency()Z

    move-result v33

    .line 761
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    if-eqz v33, :cond_2c

    const/16 v34, 0x1

    :goto_2c
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    const/16 v34, 0x1

    return v34

    .line 762
    :cond_2c
    const/16 v34, 0x0

    goto :goto_2c

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
