.class public final Landroid/bluetooth/BluetoothPbapClient;
.super Ljava/lang/Object;
.source "BluetoothPbapClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothPbapClient$1;,
        Landroid/bluetooth/BluetoothPbapClient$2;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = false

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapClient"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothPbapClient;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/IBluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/bluetooth/BluetoothPbapClient;)Z
    .locals 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->doBind()Z

    move-result v0

    return v0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v2, Landroid/bluetooth/BluetoothPbapClient$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothPbapClient$1;-><init>(Landroid/bluetooth/BluetoothPbapClient;)V

    .line 55
    iput-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 291
    new-instance v2, Landroid/bluetooth/BluetoothPbapClient$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothPbapClient$2;-><init>(Landroid/bluetooth/BluetoothPbapClient;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    .line 97
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Landroid/bluetooth/BluetoothPbapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 99
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 100
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 101
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 103
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->doBind()Z

    .line 93
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private doBind()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothPbapClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 114
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 115
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    .line 116
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 115
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const/4 v2, 0x1

    return v2

    .line 117
    :cond_0
    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not bind to Bluetooth PBAP Client Service with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v5
.end method

.method private isEnabled()Z
    .locals 3

    .prologue
    .line 317
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 318
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 319
    const/4 v1, 0x1

    return v1

    .line 321
    :cond_0
    const-string/jumbo v1, "Bluetooth is Not enabled"

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->log(Ljava/lang/String;)V

    .line 322
    const/4 v1, 0x0

    return v1
.end method

.method private static isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 326
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 313
    const-string/jumbo v0, "BluetoothPbapClient"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 139
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 141
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :try_start_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    .line 150
    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 151
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_1
    :try_start_5
    monitor-exit v4

    .line 157
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 137
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v3, "BluetoothPbapClient"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 152
    .restart local v1    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :catch_1
    move-exception v2

    .line 153
    .local v2, "re":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v3, "BluetoothPbapClient"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 147
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit v4

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 173
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 174
    .local v1, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPbapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v4

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v1, :cond_1

    .line 183
    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    return v4
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 199
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 200
    .local v1, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPbapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    const/4 v2, 0x1

    return v2

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v4

    .line 209
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v1, :cond_1

    .line 210
    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    return v4
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPbapClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    return-void

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 126
    throw v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 227
    .local v1, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    :try_start_0
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothPbapClient;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 235
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v1, :cond_1

    .line 236
    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 276
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 277
    .local v1, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPbapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v4

    .line 285
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v1, :cond_1

    .line 286
    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_1
    return v4
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 4
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 252
    .local v1, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPbapClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v1, :cond_1

    .line 261
    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 378
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 379
    .local v1, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPbapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return v4

    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v1, :cond_1

    .line 388
    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    return v4
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    const/4 v4, 0x0

    .line 344
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 345
    .local v1, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 345
    if-eqz v2, :cond_1

    .line 347
    if-eqz p2, :cond_0

    .line 348
    const/16 v2, 0x64

    if-eq p2, v2, :cond_0

    .line 349
    return v4

    .line 352
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothPbapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return v4

    .line 358
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    if-nez v1, :cond_2

    .line 359
    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_2
    return v4
.end method
