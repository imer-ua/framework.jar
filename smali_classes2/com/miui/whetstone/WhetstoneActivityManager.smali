.class public abstract Lcom/miui/whetstone/WhetstoneActivityManager;
.super Ljava/lang/Object;
.source "WhetstoneActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "whetstone.activity"

.field private static ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# direct methods
.method static synthetic -set0(Lcom/miui/whetstone/server/IWhetstoneActivityManager;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    .locals 0

    sput-object p0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAppToServiceControlWhitelist(Ljava/util/List;)V
    .locals 2
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
    .line 75
    .local p0, "listPkg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 76
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->addAppToServiceControlWhitelist(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static bindWhetstoneService(Landroid/os/IBinder;)V
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 196
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 197
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 199
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->bindWhetstoneService(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "threshold"    # J

    .prologue
    .line 172
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 173
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 175
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkIfPackageIsLocked(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 137
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 139
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->checkIfPackageIsLocked(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static checkIfPackageIsLocked(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 148
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 149
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static checkService()V
    .locals 0

    .prologue
    .line 58
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->getService()Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .line 57
    return-void
.end method

.method public static clearDeadAppFromNative()V
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 185
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 187
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->clearDeadAppFromNative()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 189
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAndroidCachedEmptyProcessMemory()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 100
    const-wide/16 v2, 0x0

    .line 101
    .local v2, "totoalMemory":J
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 103
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getAndroidCachedEmptyProcessMemory()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 108
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getConnProviderNames(Ljava/lang/String;ILjava/util/List;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 298
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 299
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 301
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getConnProviderNames(Ljava/lang/String;ILjava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getPackageNamebyPid(I)Ljava/lang/String;
    .locals 3
    .param p0, "callingPid"    # I

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 209
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 211
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPackageNamebyPid(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 216
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 212
    .restart local v1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getService()Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    .locals 4

    .prologue
    .line 43
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-nez v2, :cond_0

    .line 44
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .line 46
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 47
    new-instance v0, Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;

    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-direct {v0, v2}, Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/server/IWhetstoneActivityManager;)V

    .line 48
    .local v0, "death":Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-object v2

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSystemPid()I
    .locals 3

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, "ret":I
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 248
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 250
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getSystemPid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 88
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeTaskById(IZ)Z
    .locals 4
    .param p0, "taskId"    # I
    .param p1, "killProcess"    # Z

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 280
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 282
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->removeTaskById(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 287
    .end local v1    # "ret":Z
    :cond_0
    :goto_0
    return v1

    .line 283
    .restart local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static scheduleDestoryActivities(I)Z
    .locals 3
    .param p0, "pid"    # I

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 235
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 237
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->distoryActivity(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 242
    .end local v1    # "ret":Z
    :cond_0
    :goto_0
    return v1

    .line 238
    .restart local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static scheduleTrimMemory(II)Z
    .locals 3
    .param p0, "pid"    # I
    .param p1, "level"    # I

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 222
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 224
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->scheduleTrimMemory(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    return v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static setWhetstonePackageInfo(Ljava/util/List;Z)V
    .locals 3
    .param p1, "isAppend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "info":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/strategy/WhetstonePackageInfo;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 316
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 318
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->setWhetstonePackageInfo(Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .locals 2
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
    .line 112
    .local p0, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 113
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateApplicationsMemoryThreshold(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateFrameworkCommonConfig(Ljava/lang/String;)V
    .locals 2
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 260
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 262
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateFrameworkCommonConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateUserLockedAppList(Ljava/util/List;)V
    .locals 2
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
    .line 124
    .local p0, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 125
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 127
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateUserLockedAppList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateUserLockedAppList(Ljava/util/List;I)V
    .locals 2
    .param p1, "userId"    # I
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
    .line 160
    .local p0, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 161
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 163
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateUserLockedAppListWithUserId(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public setPerformanceComponents([Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "names"    # [Landroid/content/ComponentName;

    .prologue
    .line 62
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 66
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->setPerformanceComponents([Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    .end local v1    # "ret":Z
    :cond_0
    :goto_0
    return v1

    .line 67
    .restart local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
