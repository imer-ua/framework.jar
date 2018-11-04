.class public Lcom/miui/enterprise/sdk/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field public static final RESTRICTION_MODE_BLACK_LIST:I = 0x2

.field public static final RESTRICTION_MODE_DEFAULT:I = 0x0

.field public static final RESTRICTION_MODE_WHITE_LIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceManager"

.field private static final VERSION:Ljava/lang/String; = "MIUI-ENT-3.0"

.field private static volatile sInstance:Lcom/miui/enterprise/sdk/DeviceManager;


# instance fields
.field private mService:Lcom/miui/enterprise/IDeviceManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, "device_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/enterprise/sdk/DeviceManager;
    .locals 2

    .prologue
    const-class v1, Lcom/miui/enterprise/sdk/DeviceManager;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/DeviceManager;->sInstance:Lcom/miui/enterprise/sdk/DeviceManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/miui/enterprise/sdk/DeviceManager;

    invoke-direct {v0}, Lcom/miui/enterprise/sdk/DeviceManager;-><init>()V

    sput-object v0, Lcom/miui/enterprise/sdk/DeviceManager;->sInstance:Lcom/miui/enterprise/sdk/DeviceManager;

    .line 37
    :cond_0
    sget-object v0, Lcom/miui/enterprise/sdk/DeviceManager;->sInstance:Lcom/miui/enterprise/sdk/DeviceManager;
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
.method public deviceReboot()V
    .locals 3

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v1}, Lcom/miui/enterprise/IDeviceManager;->deviceReboot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DeviceManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deviceShutDown()V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v1}, Lcom/miui/enterprise/IDeviceManager;->deviceShutDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DeviceManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public formatSdCard()V
    .locals 3

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v1}, Lcom/miui/enterprise/IDeviceManager;->formatSdCard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DeviceManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "MIUI-ENT-3.0"

    return-object v0
.end method

.method public getUrlBlackList()Ljava/util/List;
    .locals 1
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
    .line 118
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->getUrlBlackList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrlBlackList(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IDeviceManager;->getUrlBlackList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DeviceManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUrlWhiteList()Ljava/util/List;
    .locals 1
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
    .line 105
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->getUrlWhiteList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrlWhiteList(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IDeviceManager;->getUrlWhiteList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DeviceManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    const/4 v1, 0x0

    return-object v1
.end method

.method public isDeviceRoot()Z
    .locals 3

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v1}, Lcom/miui/enterprise/IDeviceManager;->isDeviceRoot()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DeviceManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    const/4 v1, 0x0

    return v1
.end method

.method public recoveryFactory(Z)V
    .locals 3
    .param p1, "formatSdcard"    # Z

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IDeviceManager;->recoveryFactory(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DeviceManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBootAnimation(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 152
    :try_start_0
    invoke-static {p1}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verifyPlatformSign(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    const-string/jumbo v3, "DeviceManager"

    const-string/jumbo v4, "Failed to verify sign, abort set bootanimation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return v5

    .line 156
    :cond_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 157
    .local v2, "pip":[Landroid/os/ParcelFileDescriptor;
    iget-object v3, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-interface {v3, v4}, Lcom/miui/enterprise/IDeviceManager;->setBootAnimation(Landroid/os/ParcelFileDescriptor;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 159
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 160
    return v5

    .line 162
    :cond_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/miui/enterprise/sdk/DeviceManager$1;

    invoke-direct {v4, p0, v2, p1}, Lcom/miui/enterprise/sdk/DeviceManager$1;-><init>(Lcom/miui/enterprise/sdk/DeviceManager;[Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return v6

    .line 197
    .end local v2    # "pip":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "DeviceManager"

    const-string/jumbo v4, "something wrong"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return v5

    .line 195
    :catch_1
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DeviceManager"

    const-string/jumbo v4, "Remote service has died"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBrowserRestriction(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 131
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->setBrowserRestriction(II)V

    .line 130
    return-void
.end method

.method public setBrowserRestriction(II)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IDeviceManager;->setBrowserRestriction(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DeviceManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUrlBlackList(Ljava/util/List;)V
    .locals 1
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
    .line 93
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->setUrlBlackList(Ljava/util/List;I)V

    .line 92
    return-void
.end method

.method public setUrlBlackList(Ljava/util/List;I)V
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IDeviceManager;->setUrlBlackList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DeviceManager"

    const-string/jumbo v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUrlWhiteList(Ljava/util/List;)V
    .locals 1
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
    .line 81
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->setUrlWhiteList(Ljava/util/List;I)V

    .line 80
    return-void
.end method

.method public setUrlWhiteList(Ljava/util/List;I)V
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IDeviceManager;->setUrlWhiteList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DeviceManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
