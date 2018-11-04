.class public Landroid/bluetooth/BluetoothLeScannerInjector;
.super Ljava/lang/Object;
.source "BluetoothLeScannerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothLeScannerInjector"

.field private static final sLeScanStatisticsClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    sput-object v0, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanupLeScanStatistics()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 88
    :cond_0
    return-void
.end method

.method public static isLeScanAllowed()Z
    .locals 5

    .prologue
    .line 36
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 37
    .local v2, "uid":I
    const/4 v0, 0x1

    .line 40
    .local v0, "allow":Z
    :try_start_0
    const-string/jumbo v4, "whetstone.activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 39
    invoke-static {v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v3

    .line 41
    .local v3, "ws":Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    if-eqz v3, :cond_0

    .line 42
    invoke-interface {v3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy;->isLeScanAllowed(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 48
    .end local v0    # "allow":Z
    .end local v3    # "ws":Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    :cond_0
    :goto_0
    return v0

    .line 44
    .restart local v0    # "allow":Z
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static startLeScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 12
    .param p0, "clientIf"    # I
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/os/WorkSource;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local p4, "resultStorages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    .line 55
    .local v10, "uid":I
    new-instance v1, Landroid/bluetooth/BleScanWrapper;

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BleScanWrapper;-><init>(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;)V

    .line 56
    .local v1, "bleScanWrapper":Landroid/bluetooth/BleScanWrapper;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v8, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "uid"

    invoke-virtual {v8, v2, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string/jumbo v2, "BleScanWrapper"

    invoke-virtual {v8, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    const-string/jumbo v2, "IBinder"

    move-object/from16 v0, p6

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 61
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v11

    .line 62
    .local v11, "ws":Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    if-eqz v11, :cond_0

    .line 63
    invoke-interface {v11}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v2

    invoke-interface {v2, v8}, Lcom/miui/whetstone/IPowerKeeperPolicy;->startLeScan(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "bleScanWrapper":Landroid/bluetooth/BleScanWrapper;
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v10    # "uid":I
    .end local v11    # "ws":Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v9

    .line 66
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static startLeScanStatistics(Landroid/bluetooth/IBluetoothManager;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 8
    .param p0, "btManager"    # Landroid/bluetooth/IBluetoothManager;
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    const/4 v7, 0x0

    .line 95
    const-string/jumbo v4, "BluetoothLeScannerInjector"

    const-string/jumbo v5, "startLeScanStatistics()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-nez p1, :cond_0

    .line 97
    const-string/jumbo v4, "BluetoothLeScannerInjector"

    const-string/jumbo v5, "startLeScanStatistics: null callback"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v7

    .line 101
    :cond_0
    sget-object v5, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    monitor-enter v5

    .line 103
    :try_start_0
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 104
    .local v1, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v1, :cond_1

    monitor-exit v5

    .line 106
    return v7

    .line 109
    :cond_1
    :try_start_1
    new-instance v2, Landroid/bluetooth/BluetoothLeScannerInjector$1;

    invoke-direct {v2, p1}, Landroid/bluetooth/BluetoothLeScannerInjector$1;-><init>(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 122
    .local v2, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    new-instance v3, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;

    invoke-direct {v3, v1, v2}, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;-><init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/le/ScanCallback;)V

    .line 123
    .local v3, "wrapper":Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->startBleScanStatistics()V

    .line 124
    sget-object v4, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    const/4 v4, 0x1

    monitor-exit v5

    return v4

    .line 127
    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v2    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    .end local v3    # "wrapper":Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "BluetoothLeScannerInjector"

    const-string/jumbo v6, ""

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 131
    return v7

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static stopLeScan(ILandroid/os/IBinder;)V
    .locals 11
    .param p0, "clientIf"    # I
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 72
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    .line 73
    .local v9, "uid":I
    new-instance v0, Landroid/bluetooth/BleScanWrapper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BleScanWrapper;-><init>(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;)V

    .line 74
    .local v0, "bleScanWrapper":Landroid/bluetooth/BleScanWrapper;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v7, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "uid"

    invoke-virtual {v7, v1, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string/jumbo v1, "BleScanWrapper"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 77
    const-string/jumbo v1, "IBinder"

    invoke-virtual {v7, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 79
    const-string/jumbo v1, "whetstone.activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 78
    invoke-static {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v10

    .line 80
    .local v10, "ws":Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    if-eqz v10, :cond_0

    .line 81
    invoke-interface {v10}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v1

    invoke-interface {v1, v7}, Lcom/miui/whetstone/IPowerKeeperPolicy;->stopLeScan(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "bleScanWrapper":Landroid/bluetooth/BleScanWrapper;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v9    # "uid":I
    .end local v10    # "ws":Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v8

    .line 84
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static stopLeScanStatistics(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 4
    .param p0, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    .line 135
    const-string/jumbo v1, "BluetoothLeScannerInjector"

    const-string/jumbo v2, "stopLeScanStatistics()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v2, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    monitor-enter v2

    .line 138
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;

    .line 139
    .local v0, "wrapper":Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    if-nez v0, :cond_0

    .line 140
    const-string/jumbo v1, "BluetoothLeScannerInjector"

    const-string/jumbo v3, "no ble scan statistics callback found."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 141
    return-void

    .line 143
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->stopBleScanStatistics()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 134
    return-void

    .line 136
    .end local v0    # "wrapper":Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
