.class public Lcom/xiaomi/joyose/JoyoseManager;
.super Ljava/lang/Object;
.source "JoyoseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "xiaomi.joyose"

.field private static js:Lcom/xiaomi/joyose/IJoyoseInterface;


# direct methods
.method static synthetic -set0(Lcom/xiaomi/joyose/IJoyoseInterface;)Lcom/xiaomi/joyose/IJoyoseInterface;
    .locals 0

    sput-object p0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkService()V
    .locals 0

    .prologue
    .line 51
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->getService()Lcom/xiaomi/joyose/IJoyoseInterface;

    .line 50
    return-void
.end method

.method public static getAllSteps([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/joyose/Step;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 140
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 141
    .local v1, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/joyose/Step;>;"
    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v2, :cond_0

    .line 143
    :try_start_0
    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v2, p0, p1, p2, p3}, Lcom/xiaomi/joyose/IJoyoseInterface;->getAllSteps([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 148
    :cond_0
    :goto_0
    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getService()Lcom/xiaomi/joyose/IJoyoseInterface;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 35
    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-nez v2, :cond_0

    .line 36
    const-string/jumbo v2, "xiaomi.joyose"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IJoyoseInterface;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    .line 38
    :try_start_0
    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v2, :cond_0

    .line 39
    new-instance v0, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;

    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-direct {v0, v2}, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;-><init>(Lcom/xiaomi/joyose/IJoyoseInterface;)V

    .line 40
    .local v0, "death":Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;
    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v2}, Lcom/xiaomi/joyose/IJoyoseInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object v2

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    sput-object v4, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    goto :goto_0
.end method

.method public static handleGameBoosterForOneway(ILjava/lang/String;)V
    .locals 2
    .param p0, "cmd"    # I
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 92
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v1, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->handleGameBoosterForOneway(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static handleGameBoosterForSync(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cmd"    # I
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "ret":Ljava/lang/String;
    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v2, :cond_0

    .line 106
    :try_start_0
    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v2, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->handleGameBoosterForSync(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 111
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 107
    .restart local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static predictAppBucketLevel(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 117
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_0

    .line 119
    :try_start_0
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v1, p0}, Lcom/xiaomi/joyose/IJoyoseInterface;->predictAppBucketLevel(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static predictAppsBucketLevel(Ljava/util/List;I)V
    .locals 2
    .param p1, "id"    # I
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
    .line 127
    .local p0, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 128
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_0

    .line 130
    :try_start_0
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v1, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->predictAppsBucketLevel(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerGameEngineListener(ILcom/xiaomi/joyose/IGameEngineCallback;)V
    .locals 2
    .param p0, "mask"    # I
    .param p1, "callback"    # Lcom/xiaomi/joyose/IGameEngineCallback;

    .prologue
    .line 66
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 67
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_0

    .line 69
    :try_start_0
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v1, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->registerGameEngineListener(ILcom/xiaomi/joyose/IGameEngineCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static unRegisterGameEngineListener(Lcom/xiaomi/joyose/IGameEngineCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/xiaomi/joyose/IGameEngineCallback;

    .prologue
    .line 80
    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    .line 81
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v1, p0}, Lcom/xiaomi/joyose/IJoyoseInterface;->unRegisterGameEngineListener(Lcom/xiaomi/joyose/IGameEngineCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
