.class public final Landroid/bluetooth/BluetoothA2dpSink;
.super Ljava/lang/Object;
.source "BluetoothA2dpSink.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothA2dpSink$1;,
        Landroid/bluetooth/BluetoothA2dpSink$2;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_CONFIG_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.action.AUDIO_CONFIG_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_PLAYING_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.action.PLAYING_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final EXTRA_AUDIO_CONFIG:Ljava/lang/String; = "android.bluetooth.a2dp-sink.profile.extra.AUDIO_CONFIG"

.field public static final STATE_NOT_PLAYING:I = 0xb

.field public static final STATE_PLAYING:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpSink"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothA2dpSink;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothA2dpSink;Landroid/bluetooth/IBluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v2, Landroid/bluetooth/BluetoothA2dpSink$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothA2dpSink$1;-><init>(Landroid/bluetooth/BluetoothA2dpSink;)V

    .line 130
    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 483
    new-instance v2, Landroid/bluetooth/BluetoothA2dpSink$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothA2dpSink$2;-><init>(Landroid/bluetooth/BluetoothA2dpSink;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    .line 164
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 166
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 167
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 168
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 170
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dpSink;->doBind()Z

    .line 163
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothA2dpSink"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 507
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
    .line 511
    const-string/jumbo v0, "BluetoothA2dpSink"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 465
    packed-switch p0, :pswitch_data_0

    .line 479
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<unknown state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 467
    :pswitch_1
    const-string/jumbo v0, "disconnected"

    return-object v0

    .line 469
    :pswitch_2
    const-string/jumbo v0, "connecting"

    return-object v0

    .line 471
    :pswitch_3
    const-string/jumbo v0, "connected"

    return-object v0

    .line 473
    :pswitch_4
    const-string/jumbo v0, "disconnecting"

    return-object v0

    .line 475
    :pswitch_5
    const-string/jumbo v0, "playing"

    return-object v0

    .line 477
    :pswitch_6
    const-string/jumbo v0, "not playing"

    return-object v0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method close()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 192
    iput-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 193
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 194
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 196
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    .line 203
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 205
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    .line 206
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v4

    .line 191
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BluetoothA2dpSink"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 208
    .local v2, "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "BluetoothA2dpSink"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 202
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dpSink;->log(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    .line 242
    .local v1, "service":Landroid/bluetooth/IBluetoothA2dpSink;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothA2dpSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v5

    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v2, "BluetoothA2dpSink"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_1
    return v5
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disconnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dpSink;->log(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    .line 283
    .local v1, "service":Landroid/bluetooth/IBluetoothA2dpSink;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothA2dpSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v5

    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v2, "BluetoothA2dpSink"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    return v5
.end method

.method doBind()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothA2dpSink;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 182
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 183
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dpSink;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink;->mConnection:Landroid/content/ServiceConnection;

    .line 184
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 183
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const/4 v2, 0x1

    return v2

    .line 185
    :cond_0
    const-string/jumbo v2, "BluetoothA2dpSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not bind to Bluetooth A2DP Service with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v5
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dpSink;->close()V

    .line 214
    return-void
.end method

.method public getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    .line 362
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    .line 363
    .local v1, "service":Landroid/bluetooth/IBluetoothA2dpSink;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothA2dpSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-object v5

    .line 371
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v2, "BluetoothA2dpSink"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_1
    return-object v5
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 5
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
    .line 300
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    .line 301
    .local v1, "service":Landroid/bluetooth/IBluetoothA2dpSink;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    :try_start_0
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothA2dpSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 309
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v2, "BluetoothA2dpSink"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    .line 336
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    .line 337
    .local v1, "service":Landroid/bluetooth/IBluetoothA2dpSink;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothA2dpSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return v5

    .line 345
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v2, "BluetoothA2dpSink"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_1
    return v5
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 5
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
    .line 318
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    .line 319
    .local v1, "service":Landroid/bluetooth/IBluetoothA2dpSink;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothA2dpSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 327
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v2, "BluetoothA2dpSink"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    .line 424
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    .line 425
    .local v1, "service":Landroid/bluetooth/IBluetoothA2dpSink;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothA2dpSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return v5

    .line 433
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v2, "BluetoothA2dpSink"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_1
    return v5
.end method

.method public isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    .line 445
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    .line 446
    .local v1, "service":Landroid/bluetooth/IBluetoothA2dpSink;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dpSink;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothA2dpSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return v5

    .line 454
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v2, "BluetoothA2dpSink"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_1
    return v5
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    const/4 v5, 0x0

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPriority("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dpSink;->log(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink;->mService:Landroid/bluetooth/IBluetoothA2dpSink;

    .line 393
    .local v1, "service":Landroid/bluetooth/IBluetoothA2dpSink;
    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothA2dpSink;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothA2dpSink;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    if-eqz p2, :cond_0

    .line 395
    const/16 v2, 0x64

    if-eq p2, v2, :cond_0

    .line 396
    return v5

    .line 399
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothA2dpSink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return v5

    .line 405
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    if-nez v1, :cond_2

    const-string/jumbo v2, "BluetoothA2dpSink"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_2
    return v5
.end method
