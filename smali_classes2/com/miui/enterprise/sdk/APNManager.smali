.class public Lcom/miui/enterprise/sdk/APNManager;
.super Ljava/lang/Object;
.source "APNManager.java"


# static fields
.field public static final MODE_DEFAULT:I = 0x0

.field public static final MODE_RESTRICTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "APNManager"

.field private static volatile sInstance:Lcom/miui/enterprise/sdk/APNManager;


# instance fields
.field private mService:Lcom/miui/enterprise/IAPNManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "apn_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IAPNManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IAPNManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    .line 19
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/enterprise/sdk/APNManager;
    .locals 2

    .prologue
    const-class v1, Lcom/miui/enterprise/sdk/APNManager;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/APNManager;->sInstance:Lcom/miui/enterprise/sdk/APNManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/miui/enterprise/sdk/APNManager;

    invoke-direct {v0}, Lcom/miui/enterprise/sdk/APNManager;-><init>()V

    sput-object v0, Lcom/miui/enterprise/sdk/APNManager;->sInstance:Lcom/miui/enterprise/sdk/APNManager;

    .line 27
    :cond_0
    sget-object v0, Lcom/miui/enterprise/sdk/APNManager;->sInstance:Lcom/miui/enterprise/sdk/APNManager;
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
.method public activeAPN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IAPNManager;->activeAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public activeAPN(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IAPNManager;->activeAPN(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    const/4 v1, 0x0

    return v1
.end method

.method public addAPN(Lcom/miui/enterprise/sdk/APNConfig;)V
    .locals 3
    .param p1, "apnConfig"    # Lcom/miui/enterprise/sdk/APNConfig;

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IAPNManager;->addAPN(Lcom/miui/enterprise/sdk/APNConfig;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addAPN(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    .locals 3
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "apnConfig"    # Lcom/miui/enterprise/sdk/APNConfig;

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IAPNManager;->addAPNForNumeric(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteAPN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IAPNManager;->deleteAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteAPN(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IAPNManager;->deleteAPN(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    const/4 v1, 0x0

    return v1
.end method

.method public editAPN(Ljava/lang/String;Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    .locals 3
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/miui/enterprise/sdk/APNConfig;

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/miui/enterprise/IAPNManager;->editAPNForNumeric(Ljava/lang/String;Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public editAPN(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/miui/enterprise/sdk/APNConfig;

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IAPNManager;->editAPN(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    const/4 v1, 0x0

    return v1
.end method

.method public getAPN(Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IAPNManager;->getAPN(Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAPN(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;
    .locals 3
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IAPNManager;->getAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAPNActiveMode()I
    .locals 3

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1}, Lcom/miui/enterprise/IAPNManager;->getAPNActiveMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    const/4 v1, 0x0

    return v1
.end method

.method public getAPNList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/enterprise/sdk/APNConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1}, Lcom/miui/enterprise/IAPNManager;->getAPNList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAPNList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "numeric"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/enterprise/sdk/APNConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IAPNManager;->getAPNListForNumeric(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public resetAPN()Z
    .locals 3

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1}, Lcom/miui/enterprise/IAPNManager;->resetAPN()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    const/4 v1, 0x0

    return v1
.end method

.method public setAPNActiveMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IAPNManager;->setAPNActiveMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "APNManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
