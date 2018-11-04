.class Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWhetstoneActivityManager.java"

# interfaces
.implements Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 354
    return-void
.end method


# virtual methods
.method public addAppToServiceControlWhitelist(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 786
    .local p1, "listPkg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 791
    iget-object v2, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 792
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 784
    return-void

    .line 794
    :catchall_0
    move-exception v2

    .line 795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 794
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bindWhetstoneService(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "client"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 469
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 471
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 473
    iget-object v2, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 474
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 466
    return-void

    .line 476
    :catchall_0
    move-exception v2

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 476
    throw v2
.end method

.method public checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "threshold"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 552
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 556
    iget-object v1, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 548
    return-void

    .line 558
    :catchall_0
    move-exception v1

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 558
    throw v1
.end method

.method public checkIfPackageIsLocked(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 697
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 700
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 702
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 703
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 704
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 707
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 710
    return v2

    .line 704
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 706
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 706
    throw v3
.end method

.method public checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 715
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 718
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 722
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 723
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 726
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 729
    return v2

    .line 723
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 725
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 726
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 725
    throw v3
.end method

.method public clearDeadAppFromNative()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 652
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 654
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 655
    iget-object v2, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 649
    return-void

    .line 658
    :catchall_0
    move-exception v2

    .line 659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 658
    throw v2
.end method

.method public distoryActivity(I)Z
    .locals 6
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 451
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 454
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 461
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 464
    return v2

    .line 458
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 460
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    throw v3
.end method

.method public getAndroidCachedEmptyProcessMemory()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 519
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 522
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 523
    iget-object v4, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 525
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 528
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 531
    return-wide v2

    .line 527
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 527
    throw v4
.end method

.method public getBackgroundAPPS()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 390
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 393
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 394
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 395
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 399
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 402
    return-object v2

    .line 398
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 398
    throw v3
.end method

.method public getConnProviderNames(Ljava/lang/String;ILjava/util/List;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 837
    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 838
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 841
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 845
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 847
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 848
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 854
    return v2

    .line 847
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 850
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 850
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    const-string/jumbo v0, "com.miui.whetstone.server.IWhetstoneActivityManager"

    return-object v0
.end method

.method public getPackageNamebyPid(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 369
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 372
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 379
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 382
    return-object v2

    .line 378
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    throw v3
.end method

.method public getPartialWakeLockHoldByUid(I)I
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 634
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 637
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 640
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 641
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 644
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 647
    return v2

    .line 643
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 643
    throw v3
.end method

.method public getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 617
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 620
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 621
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 622
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 623
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPowerKeeperPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 626
    .local v2, "_result":Lcom/miui/whetstone/IPowerKeeperPolicy;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 629
    return-object v2

    .line 625
    .end local v2    # "_result":Lcom/miui/whetstone/IPowerKeeperPolicy;
    :catchall_0
    move-exception v3

    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 625
    throw v3
.end method

.method public getProcessReceiverState(I)Z
    .locals 6
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 749
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 752
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 755
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 759
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 762
    return v2

    .line 756
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 758
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 758
    throw v3
.end method

.method public getSystemPid()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 484
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 487
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 488
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 493
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    return v2

    .line 492
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 492
    throw v3
.end method

.method public isProcessExecutingServices(I)Z
    .locals 6
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 767
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 770
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 773
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 774
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 777
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 780
    return v2

    .line 774
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 776
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    throw v3
.end method

.method public putUidFrozenState(II)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 565
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 568
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 573
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 576
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 579
    return v2

    .line 573
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 575
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 575
    throw v3
.end method

.method public removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 802
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 804
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 806
    iget-object v2, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 799
    return-void

    .line 809
    :catchall_0
    move-exception v2

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 809
    throw v2
.end method

.method public removeTaskById(IZ)Z
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 816
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 817
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 820
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 825
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 828
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 831
    return v2

    .line 825
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 827
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 827
    throw v3
.end method

.method public scheduleStopService(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 426
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 429
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    if-eqz p2, :cond_0

    .line 432
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 438
    :goto_0
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 443
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 446
    return v2

    .line 436
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v3

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 442
    throw v3

    .line 440
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public scheduleTrimMemory(II)Z
    .locals 6
    .param p1, "pid"    # I
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 407
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 418
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    return v2

    .line 415
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 417
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 417
    throw v3
.end method

.method public setPerformanceComponents([Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "name"    # [Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 501
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 504
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 505
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 506
    iget-object v3, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 511
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    return v2

    .line 508
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 510
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 510
    throw v3
.end method

.method public setWhetstonePackageInfo(Ljava/util/List;Z)V
    .locals 5
    .param p2, "isAppend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, "info":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/strategy/WhetstonePackageInfo;>;"
    const/4 v1, 0x1

    .line 858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 860
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 862
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    iget-object v1, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 856
    return-void

    .line 862
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 865
    :catchall_0
    move-exception v1

    .line 866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 865
    throw v1
.end method

.method public updateApplicationByLockedState(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "locked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 584
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 586
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    iget-object v2, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 590
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 581
    return-void

    .line 592
    :catchall_0
    move-exception v2

    .line 593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 592
    throw v2
.end method

.method public updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "locked"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 600
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 602
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object v2, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 607
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 597
    return-void

    .line 609
    :catchall_0
    move-exception v2

    .line 610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    throw v2
.end method

.method public updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 535
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 536
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 538
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 540
    iget-object v2, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 541
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    return-void

    .line 543
    :catchall_0
    move-exception v2

    .line 544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 543
    throw v2
.end method

.method public updateFrameworkCommonConfig(Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 734
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 738
    iget-object v2, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 731
    return-void

    .line 741
    :catchall_0
    move-exception v2

    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 741
    throw v2
.end method

.method public updateUserLockedAppList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 665
    .local p1, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 666
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 670
    iget-object v2, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 671
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 663
    return-void

    .line 673
    :catchall_0
    move-exception v2

    .line 674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    throw v2
.end method

.method public updateUserLockedAppListWithUserId(Ljava/util/List;I)V
    .locals 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 680
    .local p1, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 681
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 683
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 685
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    iget-object v2, p0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 687
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 678
    return-void

    .line 689
    :catchall_0
    move-exception v2

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 689
    throw v2
.end method
