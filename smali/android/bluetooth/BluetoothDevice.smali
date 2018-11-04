.class public final Landroid/bluetooth/BluetoothDevice;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothDevice$1;,
        Landroid/bluetooth/BluetoothDevice$2;
    }
.end annotation


# static fields
.field public static final ACCESS_ALLOWED:I = 0x1

.field public static final ACCESS_REJECTED:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field public static final ACTION_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_CONNECTED"

.field public static final ACTION_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECTED"

.field public static final ACTION_ACL_DISCONNECT_REQUESTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

.field public static final ACTION_ALIAS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.ALIAS_CHANGED"

.field public static final ACTION_BOND_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.BOND_STATE_CHANGED"

.field public static final ACTION_CLASS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.CLASS_CHANGED"

.field public static final ACTION_CONNECTION_ACCESS_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

.field public static final ACTION_CONNECTION_ACCESS_REPLY:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

.field public static final ACTION_CONNECTION_ACCESS_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

.field public static final ACTION_DISAPPEARED:Ljava/lang/String; = "android.bluetooth.device.action.DISAPPEARED"

.field public static final ACTION_FOUND:Ljava/lang/String; = "android.bluetooth.device.action.FOUND"

.field public static final ACTION_MAS_INSTANCE:Ljava/lang/String; = "android.bluetooth.device.action.MAS_INSTANCE"

.field public static final ACTION_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_CHANGED"

.field public static final ACTION_NAME_FAILED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_FAILED"

.field public static final ACTION_PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"

.field public static final ACTION_PAIRING_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_REQUEST"

.field public static final ACTION_SDP_RECORD:Ljava/lang/String; = "android.bluetooth.device.action.SDP_RECORD"

.field public static final ACTION_UUID:Ljava/lang/String; = "android.bluetooth.device.action.UUID"

.field public static final BOND_BONDED:I = 0xc

.field public static final BOND_BONDING:I = 0xb

.field public static final BOND_NONE:I = 0xa

.field public static final BOND_SUCCESS:I = 0x0

.field public static final CONNECTION_ACCESS_NO:I = 0x2

.field public static final CONNECTION_ACCESS_YES:I = 0x1

.field private static final CONNECTION_STATE_CONNECTED:I = 0x1

.field private static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field private static final CONNECTION_STATE_ENCRYPTED_BREDR:I = 0x2

.field private static final CONNECTION_STATE_ENCRYPTED_LE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final DEVICE_TYPE_CLASSIC:I = 0x1

.field public static final DEVICE_TYPE_DUAL:I = 0x3

.field public static final DEVICE_TYPE_LE:I = 0x2

.field public static final DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_ACCESS_REQUEST_TYPE:Ljava/lang/String; = "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

.field public static final EXTRA_ALWAYS_ALLOWED:Ljava/lang/String; = "android.bluetooth.device.extra.ALWAYS_ALLOWED"

.field public static final EXTRA_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.BOND_STATE"

.field public static final EXTRA_CLASS:Ljava/lang/String; = "android.bluetooth.device.extra.CLASS"

.field public static final EXTRA_CLASS_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.CLASS_NAME"

.field public static final EXTRA_CONNECTION_ACCESS_RESULT:Ljava/lang/String; = "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "android.bluetooth.device.extra.DEVICE"

.field public static final EXTRA_MAS_INSTANCE:Ljava/lang/String; = "android.bluetooth.device.extra.MAS_INSTANCE"

.field public static final EXTRA_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.NAME"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.PACKAGE_NAME"

.field public static final EXTRA_PAIRING_KEY:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_KEY"

.field public static final EXTRA_PAIRING_VARIANT:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_VARIANT"

.field public static final EXTRA_PREVIOUS_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.bluetooth.device.extra.REASON"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "android.bluetooth.device.extra.RSSI"

.field public static final EXTRA_SDP_RECORD:Ljava/lang/String; = "android.bluetooth.device.extra.SDP_RECORD"

.field public static final EXTRA_SDP_SEARCH_STATUS:Ljava/lang/String; = "android.bluetooth.device.extra.SDP_SEARCH_STATUS"

.field public static final EXTRA_UUID:Ljava/lang/String; = "android.bluetooth.device.extra.UUID"

.field public static final PAIRING_VARIANT_CONSENT:I = 0x3

.field public static final PAIRING_VARIANT_DISPLAY_PASSKEY:I = 0x4

.field public static final PAIRING_VARIANT_DISPLAY_PIN:I = 0x5

.field public static final PAIRING_VARIANT_OOB_CONSENT:I = 0x6

.field public static final PAIRING_VARIANT_PASSKEY:I = 0x1

.field public static final PAIRING_VARIANT_PASSKEY_CONFIRMATION:I = 0x2

.field public static final PAIRING_VARIANT_PIN:I = 0x0

.field public static final PAIRING_VARIANT_PIN_16_DIGITS:I = 0x7

.field public static final REQUEST_TYPE_MESSAGE_ACCESS:I = 0x3

.field public static final REQUEST_TYPE_PHONEBOOK_ACCESS:I = 0x2

.field public static final REQUEST_TYPE_PROFILE_CONNECTION:I = 0x1

.field public static final REQUEST_TYPE_SIM_ACCESS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothDevice"

.field public static final TRANSPORT_AUTO:I = 0x0

.field public static final TRANSPORT_BREDR:I = 0x1

.field public static final TRANSPORT_LE:I = 0x2

.field public static final UNBOND_REASON_AUTH_CANCELED:I = 0x3

.field public static final UNBOND_REASON_AUTH_FAILED:I = 0x1

.field public static final UNBOND_REASON_AUTH_REJECTED:I = 0x2

.field public static final UNBOND_REASON_AUTH_TIMEOUT:I = 0x6

.field public static final UNBOND_REASON_DISCOVERY_IN_PROGRESS:I = 0x5

.field public static final UNBOND_REASON_REMOTE_AUTH_CANCELED:I = 0x8

.field public static final UNBOND_REASON_REMOTE_DEVICE_DOWN:I = 0x4

.field public static final UNBOND_REASON_REMOVED:I = 0x9

.field public static final UNBOND_REASON_REPEATED_ATTEMPTS:I = 0x7

.field static mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private static volatile sService:Landroid/bluetooth/IBluetooth;


# instance fields
.field private final mAddress:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/bluetooth/IBluetooth;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0

    sput-object p0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 618
    new-instance v0, Landroid/bluetooth/BluetoothDevice$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDevice$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothDevice;->mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 690
    new-instance v0, Landroid/bluetooth/BluetoothDevice$2;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDevice$2;-><init>()V

    .line 689
    sput-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 72
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    .line 652
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid Bluetooth address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    .line 650
    return-void
.end method

.method public static convertPinToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1588
    if-nez p0, :cond_0

    .line 1589
    return-object v4

    .line 1593
    :cond_0
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1598
    .local v0, "pinBytes":[B
    array-length v2, v0

    if-lez v2, :cond_1

    array-length v2, v0

    const/16 v3, 0x10

    if-le v2, v3, :cond_2

    .line 1599
    :cond_1
    return-object v4

    .line 1594
    .end local v0    # "pinBytes":[B
    :catch_0
    move-exception v1

    .line 1595
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "UTF-8 not supported?!?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    return-object v4

    .line 1601
    .end local v1    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "pinBytes":[B
    :cond_2
    return-object v0
.end method

.method static getService()Landroid/bluetooth/IBluetooth;
    .locals 3

    .prologue
    .line 609
    const-class v2, Landroid/bluetooth/BluetoothDevice;

    monitor-enter v2

    .line 610
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 611
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 612
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    sput-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 615
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    return-object v1

    .line 609
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public cancelBondProcess()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 943
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 944
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 945
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled. Cannot cancel Remote Device bond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return v5

    .line 949
    :cond_0
    :try_start_0
    const-string/jumbo v2, "BluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelBondProcess() for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 950
    const-string/jumbo v4, " called by pid: "

    .line 949
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 950
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 949
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 951
    const-string/jumbo v4, " tid: "

    .line 949
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 951
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    .line 949
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 953
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 954
    return v5
.end method

.method public cancelPairingUserInput()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1220
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1221
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 1222
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled. Cannot create pairing user input"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    return v4

    .line 1226
    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1227
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    return v4
.end method

.method public connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    .line 1618
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method public connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p4, "transport"    # I

    .prologue
    const/4 v7, 0x0

    .line 1640
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1641
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v4

    .line 1643
    .local v4, "managerService":Landroid/bluetooth/IBluetoothManager;
    :try_start_0
    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    .line 1644
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v3, :cond_0

    .line 1646
    return-object v7

    .line 1648
    :cond_0
    new-instance v2, Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v2, v3, p0, p4}, Landroid/bluetooth/BluetoothGatt;-><init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothDevice;I)V

    .line 1649
    .local v2, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5, p3}, Landroid/bluetooth/BluetoothGatt;->connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    return-object v2

    .line 1651
    .end local v2    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "BluetoothDevice"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1652
    return-object v7
.end method

.method public createBond()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 833
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 834
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 835
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled. Cannot create bond to Remote Device"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    return v5

    .line 839
    :cond_0
    :try_start_0
    const-string/jumbo v2, "BluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createBond() for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 840
    const-string/jumbo v4, " called by pid: "

    .line 839
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 840
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 839
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 841
    const-string/jumbo v4, " tid: "

    .line 839
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 841
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    .line 839
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/bluetooth/IBluetooth;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 843
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 844
    return v5
.end method

.method public createBond(I)Z
    .locals 6
    .param p1, "transport"    # I

    .prologue
    const/4 v5, 0x0

    .line 864
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 865
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 866
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled. Cannot create bond to Remote Device"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return v5

    .line 869
    :cond_0
    if-ltz p1, :cond_1

    const/4 v2, 0x2

    if-le p1, v2, :cond_2

    .line 871
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not a valid Bluetooth transport"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 874
    :cond_2
    :try_start_0
    const-string/jumbo v2, "BluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createBond() for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 875
    const-string/jumbo v4, " called by pid: "

    .line 874
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 875
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 874
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 876
    const-string/jumbo v4, " tid: "

    .line 874
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 876
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    .line 874
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 878
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    return v5
.end method

.method public createBondOutOfBand(ILandroid/bluetooth/OobData;)Z
    .locals 5
    .param p1, "transport"    # I
    .param p2, "oobData"    # Landroid/bluetooth/OobData;

    .prologue
    const/4 v4, 0x0

    .line 902
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 903
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 904
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled, createBondOutOfBand failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return v4

    .line 908
    :cond_0
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/bluetooth/IBluetooth;->createBondOutOfBand(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 909
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    return v4
.end method

.method public createInsecureL2capSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1451
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x3

    const/4 v2, -0x1

    .line 1452
    const/4 v7, 0x0

    move v4, v3

    move-object v5, p0

    move v6, p1

    .line 1451
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createInsecureRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1551
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1552
    const-string/jumbo v0, "BluetoothDevice"

    const-string/jumbo v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1555
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1556
    const/4 v7, 0x0

    move v4, v3

    move-object v5, p0

    move v6, p1

    .line 1555
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1527
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1528
    const-string/jumbo v0, "BluetoothDevice"

    const-string/jumbo v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1531
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    .line 1532
    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1531
    const/4 v1, 0x1

    move v4, v3

    move-object v5, p0

    move v6, v2

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createL2capSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1430
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x3

    const/4 v2, -0x1

    .line 1431
    const/4 v7, 0x0

    move v4, v3

    move-object v5, p0

    move v6, p1

    .line 1430
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1396
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    const-string/jumbo v0, "BluetoothDevice"

    const-string/jumbo v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1400
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, -0x1

    .line 1401
    const/4 v7, 0x0

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, p1

    .line 1400
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1488
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1489
    const-string/jumbo v0, "BluetoothDevice"

    const-string/jumbo v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1493
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    .line 1494
    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, v2

    .line 1493
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createScoSocket()Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1571
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1572
    const-string/jumbo v0, "BluetoothDevice"

    const-string/jumbo v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1575
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x2

    const/4 v7, 0x0

    move v4, v3

    move-object v5, p0

    move v6, v2

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 661
    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 664
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fetchUuidsWithSdp()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1115
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1116
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1117
    :cond_0
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled. Cannot fetchUuidsWithSdp"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    return v4

    .line 1121
    :cond_1
    :try_start_0
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1122
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1123
    return v4
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 770
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 771
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 772
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled. Cannot get Remote Device Alias"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-object v4

    .line 776
    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 777
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    return-object v4
.end method

.method public getAliasName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 815
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 817
    :cond_0
    return-object v0
.end method

.method public getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1060
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1061
    .local v2, "service":Landroid/bluetooth/IBluetooth;
    if-nez v2, :cond_0

    .line 1062
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, "BT not enabled. Cannot get Bluetooth Class"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    return-object v5

    .line 1066
    :cond_0
    :try_start_0
    invoke-interface {v2, p0}, Landroid/bluetooth/IBluetooth;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 1067
    .local v0, "classInt":I
    const/high16 v3, -0x1000000

    if-ne v0, v3, :cond_1

    return-object v5

    .line 1068
    :cond_1
    new-instance v3, Landroid/bluetooth/BluetoothClass;

    invoke-direct {v3, v0}, Landroid/bluetooth/BluetoothClass;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1069
    .end local v0    # "classInt":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    return-object v5
.end method

.method public getBondState()I
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 994
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 995
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 996
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled. Cannot get bond state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return v4

    .line 1000
    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getBondState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1004
    return v4
.end method

.method public getMessageAccessPermission()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1297
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1298
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 1299
    return v4

    .line 1302
    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1306
    return v4
.end method

.method public getName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 725
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 726
    .local v2, "service":Landroid/bluetooth/IBluetooth;
    if-nez v2, :cond_0

    .line 727
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, "BT not enabled. Cannot get Remote Device name"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-object v5

    .line 731
    :cond_0
    :try_start_0
    invoke-interface {v2, p0}, Landroid/bluetooth/IBluetooth;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 733
    const-string/jumbo v3, "[\\t\\n\\r]+"

    const-string/jumbo v4, " "

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 735
    :cond_1
    return-object v5

    .line 736
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    return-object v5
.end method

.method public getPhonebookAccessPermission()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1257
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1258
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 1259
    return v4

    .line 1262
    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1266
    return v4
.end method

.method public getSimAccessPermission()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1337
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1338
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 1339
    return v4

    .line 1342
    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1346
    return v4
.end method

.method public getType()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 751
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 752
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 753
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled. Cannot get Remote Device type"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return v4

    .line 757
    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 758
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    return v4
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1087
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1088
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1089
    :cond_0
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled. Cannot get remote device Uuids"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return-object v4

    .line 1093
    :cond_1
    :try_start_0
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1094
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    return-object v4
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBluetoothDock()Z
    .locals 1

    .prologue
    .line 1238
    const/4 v0, 0x0

    return v0
.end method

.method isBluetoothEnabled()Z
    .locals 3

    .prologue
    .line 1242
    const/4 v1, 0x0

    .line 1243
    .local v1, "ret":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1244
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1245
    const/4 v1, 0x1

    .line 1247
    :cond_0
    return v1
.end method

.method public isConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1016
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1017
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 1019
    return v2

    .line 1022
    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothDevice"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1025
    return v2
.end method

.method public isEncrypted()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1039
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1040
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 1042
    return v3

    .line 1045
    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-le v4, v2, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v4, ""

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1048
    return v3
.end method

.method public removeBond()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 968
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 969
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 970
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled. Cannot remove Remote Device bond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return v5

    .line 974
    :cond_0
    :try_start_0
    const-string/jumbo v2, "BluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeBond() for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 975
    const-string/jumbo v4, " called by pid: "

    .line 974
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 975
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 974
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 976
    const-string/jumbo v4, " tid: "

    .line 974
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 976
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    .line 974
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    invoke-interface {v1, p0}, Landroid/bluetooth/IBluetooth;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 978
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    return v5
.end method

.method public sdpSearch(Landroid/os/ParcelUuid;)Z
    .locals 5
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    const/4 v4, 0x0

    .line 1148
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1149
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 1150
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled. Cannot query remote device sdp records"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return v4

    .line 1154
    :cond_0
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1155
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1156
    return v4
.end method

.method public setAlias(Ljava/lang/String;)Z
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 792
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 793
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 794
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled. Cannot set Remote Device name"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return v4

    .line 798
    :cond_0
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 799
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    return v4
.end method

.method public setDeviceOutOfBandData([B[B)Z
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "randomizer"    # [B

    .prologue
    .line 932
    const/4 v0, 0x0

    return v0
.end method

.method public setMessageAccessPermission(I)Z
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 1318
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1319
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 1320
    return v4

    .line 1323
    :cond_0
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1327
    return v4
.end method

.method public setPairingConfirmation(Z)Z
    .locals 5
    .param p1, "confirm"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1197
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1198
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 1199
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled. Cannot set pairing confirmation"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    return v4

    .line 1203
    :cond_0
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1204
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1205
    return v4
.end method

.method public setPasskey(I)Z
    .locals 1
    .param p1, "passkey"    # I

    .prologue
    .line 1185
    const/4 v0, 0x0

    return v0
.end method

.method public setPhonebookAccessPermission(I)Z
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 1278
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1279
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 1280
    return v4

    .line 1283
    :cond_0
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1287
    return v4
.end method

.method public setPin([B)Z
    .locals 5
    .param p1, "pin"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1167
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1168
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 1169
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, "BT not enabled. Cannot set Remote Device pin"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    return v4

    .line 1173
    :cond_0
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x1

    invoke-interface {v1, p0, v3, v2, p1}, Landroid/bluetooth/IBluetooth;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1174
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1175
    return v4
.end method

.method public setRemoteOutOfBandData()Z
    .locals 1

    .prologue
    .line 1215
    const/4 v0, 0x0

    return v0
.end method

.method public setSimAccessPermission(I)Z
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 1358
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1359
    .local v1, "service":Landroid/bluetooth/IBluetooth;
    if-nez v1, :cond_0

    .line 1360
    return v4

    .line 1363
    :cond_0
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/bluetooth/IBluetooth;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothDevice"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1367
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 700
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 699
    return-void
.end method
