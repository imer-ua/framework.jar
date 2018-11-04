.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_addUserKeyAuth:I = 0x47

.field static final TRANSACTION_benchmark:I = 0x3c

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_clearPassword:I = 0x26

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_createUserKey:I = 0x3e

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_destroyUserKey:I = 0x3f

.field static final TRANSACTION_destroyUserStorage:I = 0x44

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_encryptWipeStorage:I = 0x49

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_fixPermissionsSecureContainer:I = 0x22

.field static final TRANSACTION_fixateNewestUserKeyAuth:I = 0x48

.field static final TRANSACTION_forgetAllVolumes:I = 0x39

.field static final TRANSACTION_forgetVolume:I = 0x38

.field static final TRANSACTION_format:I = 0x32

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getDisks:I = 0x2d

.field static final TRANSACTION_getEncryptionState:I = 0x20

.field static final TRANSACTION_getField:I = 0x28

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPassword:I = 0x25

.field static final TRANSACTION_getPasswordType:I = 0x24

.field static final TRANSACTION_getPrimaryStorageUuid:I = 0x3a

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x1f

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeRecords:I = 0x2f

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_getVolumes:I = 0x2e

.field static final TRANSACTION_isConvertibleToFBE:I = 0x45

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_isUserKeyUnlocked:I = 0x42

.field static final TRANSACTION_lastMaintenance:I = 0x2a

.field static final TRANSACTION_lockUserKey:I = 0x41

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_mount:I = 0x30

.field static final TRANSACTION_mountAppFuse:I = 0x46

.field static final TRANSACTION_mountCIFS:I = 0x4a

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_partitionMixed:I = 0x35

.field static final TRANSACTION_partitionPrivate:I = 0x34

.field static final TRANSACTION_partitionPublic:I = 0x33

.field static final TRANSACTION_prepareUserStorage:I = 0x43

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_resizeSecureContainer:I = 0x29

.field static final TRANSACTION_runMaintenance:I = 0x2b

.field static final TRANSACTION_setDebugFlags:I = 0x3d

.field static final TRANSACTION_setField:I = 0x27

.field static final TRANSACTION_setPrimaryStorageUuid:I = 0x3b

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_setVolumeNickname:I = 0x36

.field static final TRANSACTION_setVolumeUserFlags:I = 0x37

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unlockUserKey:I = 0x40

.field static final TRANSACTION_unmount:I = 0x31

.field static final TRANSACTION_unmountCIFS:I = 0x4b

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x21

.field static final TRANSACTION_waitForAsecScan:I = 0x2c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1597
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1598
    const-string/jumbo v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1597
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 1586
    if-nez p0, :cond_0

    .line 1587
    return-object v1

    .line 1589
    :cond_0
    const-string/jumbo v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1590
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 1591
    check-cast v0, Landroid/os/storage/IMountService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 1593
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IMountService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1602
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 78
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
    .line 1608
    sparse-switch p1, :sswitch_data_0

    .line 2269
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 1610
    :sswitch_0
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1611
    const/4 v6, 0x1

    return v6

    .line 1614
    :sswitch_1
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v45

    .line 1617
    .local v45, "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1619
    const/4 v6, 0x1

    return v6

    .line 1622
    .end local v45    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v45

    .line 1625
    .restart local v45    # "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1627
    const/4 v6, 0x1

    return v6

    .line 1630
    .end local v45    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1631
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v63

    .line 1632
    .local v63, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    if-eqz v63, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1634
    const/4 v6, 0x1

    return v6

    .line 1633
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1637
    .end local v63    # "result":Z
    :sswitch_4
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v33, 0x1

    .line 1640
    .local v33, "enable":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 1641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    const/4 v6, 0x1

    return v6

    .line 1639
    .end local v33    # "enable":Z
    :cond_1
    const/16 v33, 0x0

    goto :goto_1

    .line 1645
    :sswitch_5
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1646
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v63

    .line 1647
    .restart local v63    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    if-eqz v63, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1649
    const/4 v6, 0x1

    return v6

    .line 1648
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 1652
    .end local v63    # "result":Z
    :sswitch_6
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 1655
    .local v46, "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v65

    .line 1656
    .local v65, "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1657
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1658
    const/4 v6, 0x1

    return v6

    .line 1661
    .end local v46    # "mountPoint":Ljava/lang/String;
    .end local v65    # "resultCode":I
    :sswitch_7
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 1664
    .restart local v46    # "mountPoint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    const/16 v38, 0x1

    .line 1665
    .local v38, "force":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    const/16 v58, 0x1

    .line 1666
    .local v58, "removeEncrypt":Z
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v38

    move/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 1667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    const/4 v6, 0x1

    return v6

    .line 1664
    .end local v38    # "force":Z
    .end local v58    # "removeEncrypt":Z
    :cond_3
    const/16 v38, 0x0

    .restart local v38    # "force":Z
    goto :goto_3

    .line 1665
    :cond_4
    const/16 v58, 0x0

    goto :goto_4

    .line 1671
    .end local v38    # "force":Z
    .end local v46    # "mountPoint":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 1674
    .restart local v46    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v59

    .line 1675
    .local v59, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1676
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    const/4 v6, 0x1

    return v6

    .line 1680
    .end local v46    # "mountPoint":Ljava/lang/String;
    .end local v59    # "result":I
    :sswitch_9
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 1683
    .local v54, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v55

    .line 1684
    .local v55, "pids":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1685
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1686
    const/4 v6, 0x1

    return v6

    .line 1689
    .end local v54    # "path":Ljava/lang/String;
    .end local v55    # "pids":[I
    :sswitch_a
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 1692
    .restart local v46    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 1693
    .local v68, "state":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1694
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1695
    const/4 v6, 0x1

    return v6

    .line 1698
    .end local v46    # "mountPoint":Ljava/lang/String;
    .end local v68    # "state":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1702
    .local v7, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1704
    .local v8, "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1706
    .local v9, "fstype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1708
    .local v10, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1710
    .local v11, "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v12, 0x1

    .local v12, "external":Z
    :goto_5
    move-object/from16 v6, p0

    .line 1711
    invoke-virtual/range {v6 .. v12}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v65

    .line 1713
    .restart local v65    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1714
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1715
    const/4 v6, 0x1

    return v6

    .line 1710
    .end local v12    # "external":Z
    .end local v65    # "resultCode":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    .line 1718
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "sizeMb":I
    .end local v9    # "fstype":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "ownerUid":I
    :sswitch_c
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1721
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v65

    .line 1722
    .restart local v65    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1723
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1724
    const/4 v6, 0x1

    return v6

    .line 1727
    .end local v7    # "id":Ljava/lang/String;
    .end local v65    # "resultCode":I
    :sswitch_d
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1731
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v38, 0x1

    .line 1732
    .local v38, "force":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v7, v1}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v65

    .line 1733
    .restart local v65    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1734
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1735
    const/4 v6, 0x1

    return v6

    .line 1731
    .end local v38    # "force":Z
    .end local v65    # "resultCode":I
    :cond_6
    const/16 v38, 0x0

    goto :goto_6

    .line 1738
    .end local v7    # "id":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1742
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1744
    .restart local v10    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1746
    .restart local v11    # "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    const/16 v57, 0x1

    .line 1747
    .local v57, "readOnly":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v7, v10, v11, v1}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v65

    .line 1748
    .restart local v65    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1749
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1750
    const/4 v6, 0x1

    return v6

    .line 1746
    .end local v57    # "readOnly":Z
    .end local v65    # "resultCode":I
    :cond_7
    const/16 v57, 0x0

    goto :goto_7

    .line 1753
    .end local v7    # "id":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "ownerUid":I
    :sswitch_f
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1757
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    const/16 v38, 0x1

    .line 1758
    .restart local v38    # "force":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v7, v1}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v65

    .line 1759
    .restart local v65    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1760
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1761
    const/4 v6, 0x1

    return v6

    .line 1757
    .end local v38    # "force":Z
    .end local v65    # "resultCode":I
    :cond_8
    const/16 v38, 0x0

    goto :goto_8

    .line 1764
    .end local v7    # "id":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1767
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v69

    .line 1768
    .local v69, "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1769
    if-eqz v69, :cond_9

    const/4 v6, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1770
    const/4 v6, 0x1

    return v6

    .line 1769
    :cond_9
    const/4 v6, 0x0

    goto :goto_9

    .line 1773
    .end local v7    # "id":Ljava/lang/String;
    .end local v69    # "status":Z
    :sswitch_11
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .line 1777
    .local v52, "oldId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 1778
    .local v49, "newId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v65

    .line 1779
    .restart local v65    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1780
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1781
    const/4 v6, 0x1

    return v6

    .line 1784
    .end local v49    # "newId":Ljava/lang/String;
    .end local v52    # "oldId":Ljava/lang/String;
    .end local v65    # "resultCode":I
    :sswitch_12
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1787
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1788
    .restart local v54    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1790
    const/4 v6, 0x1

    return v6

    .line 1793
    .end local v7    # "id":Ljava/lang/String;
    .end local v54    # "path":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1794
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v41

    .line 1795
    .local v41, "ids":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1796
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1797
    const/4 v6, 0x1

    return v6

    .line 1800
    .end local v41    # "ids":[Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v51

    .line 1804
    .local v51, "observer":Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1805
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1806
    const/4 v6, 0x1

    return v6

    .line 1809
    .end local v51    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :sswitch_15
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1810
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1812
    const/4 v6, 0x1

    return v6

    .line 1815
    :sswitch_16
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1817
    .local v14, "rawPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1818
    .local v15, "canonicalPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1820
    .restart local v10    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v17

    .line 1822
    .local v17, "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "nonce":I
    move-object/from16 v13, p0

    move-object/from16 v16, v10

    .line 1823
    invoke-virtual/range {v13 .. v18}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1825
    const/4 v6, 0x1

    return v6

    .line 1828
    .end local v10    # "key":Ljava/lang/String;
    .end local v14    # "rawPath":Ljava/lang/String;
    .end local v15    # "canonicalPath":Ljava/lang/String;
    .end local v17    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v18    # "nonce":I
    :sswitch_17
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1832
    .local v37, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    const/16 v38, 0x1

    .line 1834
    .local v38, "force":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v17

    .line 1836
    .restart local v17    # "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1837
    .restart local v18    # "nonce":I
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    move-object/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1838
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1839
    const/4 v6, 0x1

    return v6

    .line 1832
    .end local v17    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v18    # "nonce":I
    .end local v38    # "force":Z
    :cond_a
    const/16 v38, 0x0

    .restart local v38    # "force":Z
    goto :goto_a

    .line 1842
    .end local v37    # "filename":Ljava/lang/String;
    .end local v38    # "force":Z
    :sswitch_18
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1845
    .restart local v37    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v69

    .line 1846
    .restart local v69    # "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1847
    if-eqz v69, :cond_b

    const/4 v6, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1848
    const/4 v6, 0x1

    return v6

    .line 1847
    :cond_b
    const/4 v6, 0x0

    goto :goto_b

    .line 1851
    .end local v37    # "filename":Ljava/lang/String;
    .end local v69    # "status":Z
    :sswitch_19
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1854
    .restart local v37    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1855
    .local v47, "mountedPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1856
    move-object/from16 v0, p3

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1857
    const/4 v6, 0x1

    return v6

    .line 1860
    .end local v37    # "filename":Ljava/lang/String;
    .end local v47    # "mountedPath":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1861
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    move-result v32

    .line 1862
    .local v32, "emulated":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1863
    if-eqz v32, :cond_c

    const/4 v6, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1864
    const/4 v6, 0x1

    return v6

    .line 1863
    :cond_c
    const/4 v6, 0x0

    goto :goto_c

    .line 1867
    .end local v32    # "emulated":Z
    :sswitch_1b
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1869
    .local v22, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    move-result v59

    .line 1870
    .restart local v59    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1871
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1872
    const/4 v6, 0x1

    return v6

    .line 1875
    .end local v22    # "password":Ljava/lang/String;
    .end local v59    # "result":I
    :sswitch_1c
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 1877
    .local v71, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1878
    .restart local v22    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v71

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptStorage(ILjava/lang/String;)I

    move-result v59

    .line 1879
    .restart local v59    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1880
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1881
    const/4 v6, 0x1

    return v6

    .line 1884
    .end local v22    # "password":Ljava/lang/String;
    .end local v59    # "result":I
    .end local v71    # "type":I
    :sswitch_1d
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 1886
    .restart local v71    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1887
    .restart local v22    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v71

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptWipeStorage(ILjava/lang/String;)I

    move-result v59

    .line 1888
    .restart local v59    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1889
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1890
    const/4 v6, 0x1

    return v6

    .line 1893
    .end local v22    # "password":Ljava/lang/String;
    .end local v59    # "result":I
    .end local v71    # "type":I
    :sswitch_1e
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 1895
    .restart local v71    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1896
    .restart local v22    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v71

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(ILjava/lang/String;)I

    move-result v59

    .line 1897
    .restart local v59    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1898
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1899
    const/4 v6, 0x1

    return v6

    .line 1902
    .end local v22    # "password":Ljava/lang/String;
    .end local v59    # "result":I
    .end local v71    # "type":I
    :sswitch_1f
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1904
    .local v72, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 1905
    .local v53, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 1906
    .local v26, "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    move-object/from16 v2, v53

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v64

    .line 1907
    .local v64, "result":[Landroid/os/storage/StorageVolume;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v64

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1909
    const/4 v6, 0x1

    return v6

    .line 1912
    .end local v26    # "_flags":I
    .end local v53    # "packageName":Ljava/lang/String;
    .end local v64    # "result":[Landroid/os/storage/StorageVolume;
    .end local v72    # "uid":I
    :sswitch_20
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1915
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1916
    .restart local v54    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1917
    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1918
    const/4 v6, 0x1

    return v6

    .line 1921
    .end local v7    # "id":Ljava/lang/String;
    .end local v54    # "path":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1922
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    move-result v59

    .line 1923
    .restart local v59    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1925
    const/4 v6, 0x1

    return v6

    .line 1928
    .end local v59    # "result":I
    :sswitch_22
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1932
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1934
    .local v40, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1935
    .restart local v37    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v37

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/storage/IMountService$Stub;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v65

    .line 1936
    .restart local v65    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1937
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    const/4 v6, 0x1

    return v6

    .line 1941
    .end local v7    # "id":Ljava/lang/String;
    .end local v37    # "filename":Ljava/lang/String;
    .end local v40    # "gid":I
    .end local v65    # "resultCode":I
    :sswitch_23
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1942
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1943
    .local v28, "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 1944
    .restart local v54    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I

    move-result v59

    .line 1945
    .restart local v59    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1946
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1947
    const/4 v6, 0x1

    return v6

    .line 1950
    .end local v28    # "callingPkg":Ljava/lang/String;
    .end local v54    # "path":Ljava/lang/String;
    .end local v59    # "result":I
    :sswitch_24
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1951
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPasswordType()I

    move-result v59

    .line 1952
    .restart local v59    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1953
    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1954
    const/4 v6, 0x1

    return v6

    .line 1957
    .end local v59    # "result":I
    :sswitch_25
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1958
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPassword()Ljava/lang/String;

    move-result-object v62

    .line 1959
    .local v62, "result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1960
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1961
    const/4 v6, 0x1

    return v6

    .line 1964
    .end local v62    # "result":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1965
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->clearPassword()V

    .line 1966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    const/4 v6, 0x1

    return v6

    .line 1970
    :sswitch_27
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 1972
    .local v36, "field":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1973
    .local v29, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1975
    const/4 v6, 0x1

    return v6

    .line 1978
    .end local v29    # "contents":Ljava/lang/String;
    .end local v36    # "field":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 1980
    .restart local v36    # "field":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1981
    .restart local v29    # "contents":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1982
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1983
    const/4 v6, 0x1

    return v6

    .line 1986
    .end local v29    # "contents":Ljava/lang/String;
    .end local v36    # "field":Ljava/lang/String;
    :sswitch_29
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1987
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isConvertibleToFBE()Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v65, 0x1

    .line 1988
    .restart local v65    # "resultCode":I
    :goto_d
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1989
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1990
    const/4 v6, 0x1

    return v6

    .line 1987
    .end local v65    # "resultCode":I
    :cond_d
    const/16 v65, 0x0

    .restart local v65    # "resultCode":I
    goto :goto_d

    .line 1993
    .end local v65    # "resultCode":I
    :sswitch_2a
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1995
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1997
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1999
    .restart local v8    # "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2000
    .restart local v10    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/storage/IMountService$Stub;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v65

    .line 2001
    .restart local v65    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2002
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2003
    const/4 v6, 0x1

    return v6

    .line 2006
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "sizeMb":I
    .end local v10    # "key":Ljava/lang/String;
    .end local v65    # "resultCode":I
    :sswitch_2b
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2007
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->lastMaintenance()J

    move-result-wide v42

    .line 2008
    .local v42, "lastMaintenance":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2009
    move-object/from16 v0, p3

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2010
    const/4 v6, 0x1

    return v6

    .line 2013
    .end local v42    # "lastMaintenance":J
    :sswitch_2c
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2014
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->runMaintenance()V

    .line 2015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2016
    const/4 v6, 0x1

    return v6

    .line 2019
    :sswitch_2d
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2020
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->waitForAsecScan()V

    .line 2021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2022
    const/4 v6, 0x1

    return v6

    .line 2025
    :sswitch_2e
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2026
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v31

    .line 2027
    .local v31, "disks":[Landroid/os/storage/DiskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2028
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2029
    const/4 v6, 0x1

    return v6

    .line 2032
    .end local v31    # "disks":[Landroid/os/storage/DiskInfo;
    :sswitch_2f
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 2034
    .restart local v26    # "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v76

    .line 2035
    .local v76, "volumes":[Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2036
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v76

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2037
    const/4 v6, 0x1

    return v6

    .line 2040
    .end local v26    # "_flags":I
    .end local v76    # "volumes":[Landroid/os/storage/VolumeInfo;
    :sswitch_30
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 2042
    .restart local v26    # "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v77

    .line 2043
    .local v77, "volumes":[Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2044
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2045
    const/4 v6, 0x1

    return v6

    .line 2048
    .end local v26    # "_flags":I
    .end local v77    # "volumes":[Landroid/os/storage/VolumeRecord;
    :sswitch_31
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 2050
    .local v74, "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mount(Ljava/lang/String;)V

    .line 2051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2052
    const/4 v6, 0x1

    return v6

    .line 2055
    .end local v74    # "volId":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 2057
    .restart local v74    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unmount(Ljava/lang/String;)V

    .line 2058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2059
    const/4 v6, 0x1

    return v6

    .line 2062
    .end local v74    # "volId":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 2064
    .restart local v74    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->format(Ljava/lang/String;)V

    .line 2065
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2066
    const/4 v6, 0x1

    return v6

    .line 2069
    .end local v74    # "volId":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2070
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 2071
    .restart local v74    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->benchmark(Ljava/lang/String;)J

    move-result-wide v60

    .line 2072
    .local v60, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2073
    move-object/from16 v0, p3

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2074
    const/4 v6, 0x1

    return v6

    .line 2077
    .end local v60    # "res":J
    .end local v74    # "volId":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 2079
    .local v30, "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPublic(Ljava/lang/String;)V

    .line 2080
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2081
    const/4 v6, 0x1

    return v6

    .line 2084
    .end local v30    # "diskId":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 2086
    .restart local v30    # "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPrivate(Ljava/lang/String;)V

    .line 2087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2088
    const/4 v6, 0x1

    return v6

    .line 2091
    .end local v30    # "diskId":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 2093
    .restart local v30    # "diskId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 2094
    .local v56, "ratio":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->partitionMixed(Ljava/lang/String;I)V

    .line 2095
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2096
    const/4 v6, 0x1

    return v6

    .line 2099
    .end local v30    # "diskId":Ljava/lang/String;
    .end local v56    # "ratio":I
    :sswitch_38
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 2101
    .restart local v74    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    .line 2102
    .local v50, "nickname":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2104
    const/4 v6, 0x1

    return v6

    .line 2107
    .end local v50    # "nickname":Ljava/lang/String;
    .end local v74    # "volId":Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 2109
    .restart local v74    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 2110
    .restart local v26    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2111
    .local v27, "_mask":I
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->setVolumeUserFlags(Ljava/lang/String;II)V

    .line 2112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2113
    const/4 v6, 0x1

    return v6

    .line 2116
    .end local v26    # "_flags":I
    .end local v27    # "_mask":I
    .end local v74    # "volId":Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 2118
    .local v39, "fsUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->forgetVolume(Ljava/lang/String;)V

    .line 2119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2120
    const/4 v6, 0x1

    return v6

    .line 2123
    .end local v39    # "fsUuid":Ljava/lang/String;
    :sswitch_3b
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2124
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->forgetAllVolumes()V

    .line 2125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2126
    const/4 v6, 0x1

    return v6

    .line 2129
    :sswitch_3c
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 2131
    .restart local v26    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 2132
    .restart local v27    # "_mask":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setDebugFlags(II)V

    .line 2133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2134
    const/4 v6, 0x1

    return v6

    .line 2137
    .end local v26    # "_flags":I
    .end local v27    # "_mask":I
    :sswitch_3d
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2138
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v75

    .line 2139
    .local v75, "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2140
    move-object/from16 v0, p3

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2141
    const/4 v6, 0x1

    return v6

    .line 2144
    .end local v75    # "volumeUuid":Ljava/lang/String;
    :sswitch_3e
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 2147
    .restart local v75    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2146
    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v44

    .line 2148
    .local v44, "listener":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 2149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2150
    const/4 v6, 0x1

    return v6

    .line 2153
    .end local v44    # "listener":Landroid/content/pm/IPackageMoveObserver;
    .end local v75    # "volumeUuid":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v73

    .line 2155
    .local v73, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 2156
    .local v67, "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    const/16 v34, 0x1

    .line 2157
    .local v34, "ephemeral":Z
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v73

    move/from16 v2, v67

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->createUserKey(IIZ)V

    .line 2158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2159
    const/4 v6, 0x1

    return v6

    .line 2156
    .end local v34    # "ephemeral":Z
    :cond_e
    const/16 v34, 0x0

    goto :goto_e

    .line 2162
    .end local v67    # "serialNumber":I
    .end local v73    # "userId":I
    :sswitch_40
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v73

    .line 2164
    .restart local v73    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->destroyUserKey(I)V

    .line 2165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2166
    const/4 v6, 0x1

    return v6

    .line 2169
    .end local v73    # "userId":I
    :sswitch_41
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v73

    .line 2171
    .restart local v73    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 2172
    .restart local v67    # "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v70

    .line 2173
    .local v70, "token":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v66

    .line 2174
    .local v66, "secret":[B
    move-object/from16 v0, p0

    move/from16 v1, v73

    move/from16 v2, v67

    move-object/from16 v3, v70

    move-object/from16 v4, v66

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->addUserKeyAuth(II[B[B)V

    .line 2175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2176
    const/4 v6, 0x1

    return v6

    .line 2179
    .end local v66    # "secret":[B
    .end local v67    # "serialNumber":I
    .end local v70    # "token":[B
    .end local v73    # "userId":I
    :sswitch_42
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v73

    .line 2181
    .restart local v73    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->fixateNewestUserKeyAuth(I)V

    .line 2182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2183
    const/4 v6, 0x1

    return v6

    .line 2186
    .end local v73    # "userId":I
    :sswitch_43
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v73

    .line 2188
    .restart local v73    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 2189
    .restart local v67    # "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v70

    .line 2190
    .restart local v70    # "token":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v66

    .line 2191
    .restart local v66    # "secret":[B
    move-object/from16 v0, p0

    move/from16 v1, v73

    move/from16 v2, v67

    move-object/from16 v3, v70

    move-object/from16 v4, v66

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->unlockUserKey(II[B[B)V

    .line 2192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2193
    const/4 v6, 0x1

    return v6

    .line 2196
    .end local v66    # "secret":[B
    .end local v67    # "serialNumber":I
    .end local v70    # "token":[B
    .end local v73    # "userId":I
    :sswitch_44
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v73

    .line 2198
    .restart local v73    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->lockUserKey(I)V

    .line 2199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2200
    const/4 v6, 0x1

    return v6

    .line 2203
    .end local v73    # "userId":I
    :sswitch_45
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v73

    .line 2205
    .restart local v73    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isUserKeyUnlocked(I)Z

    move-result v63

    .line 2206
    .restart local v63    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2207
    if-eqz v63, :cond_f

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2208
    const/4 v6, 0x1

    return v6

    .line 2207
    :cond_f
    const/4 v6, 0x0

    goto :goto_f

    .line 2211
    .end local v63    # "result":Z
    .end local v73    # "userId":I
    :sswitch_46
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 2213
    .restart local v75    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v73

    .line 2214
    .restart local v73    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 2215
    .restart local v67    # "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 2216
    .restart local v26    # "_flags":I
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move/from16 v2, v73

    move/from16 v3, v67

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->prepareUserStorage(Ljava/lang/String;III)V

    .line 2217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2218
    const/4 v6, 0x1

    return v6

    .line 2221
    .end local v26    # "_flags":I
    .end local v67    # "serialNumber":I
    .end local v73    # "userId":I
    .end local v75    # "volumeUuid":Ljava/lang/String;
    :sswitch_47
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 2223
    .restart local v75    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v73

    .line 2224
    .restart local v73    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 2225
    .restart local v26    # "_flags":I
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move/from16 v2, v73

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    .line 2226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2227
    const/4 v6, 0x1

    return v6

    .line 2230
    .end local v26    # "_flags":I
    .end local v73    # "userId":I
    .end local v75    # "volumeUuid":Ljava/lang/String;
    :sswitch_48
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    .line 2232
    .local v48, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountAppFuse(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v35

    .line 2233
    .local v35, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2234
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2235
    const/4 v6, 0x1

    return v6

    .line 2239
    .end local v35    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v48    # "name":Ljava/lang/String;
    :sswitch_49
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2243
    .local v20, "ip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 2245
    .local v21, "user":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 2247
    .restart local v22    # "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2249
    .local v23, "remotepath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 2251
    .local v24, "localpath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .local v25, "options":Ljava/lang/String;
    move-object/from16 v19, p0

    .line 2252
    invoke-virtual/range {v19 .. v25}, Landroid/os/storage/IMountService$Stub;->mountCIFS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v65

    .line 2253
    .restart local v65    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2254
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2255
    const/4 v6, 0x1

    return v6

    .line 2258
    .end local v20    # "ip":Ljava/lang/String;
    .end local v21    # "user":Ljava/lang/String;
    .end local v22    # "password":Ljava/lang/String;
    .end local v23    # "remotepath":Ljava/lang/String;
    .end local v24    # "localpath":Ljava/lang/String;
    .end local v25    # "options":Ljava/lang/String;
    .end local v65    # "resultCode":I
    :sswitch_4a
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 2261
    .restart local v46    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unmountCIFS(Ljava/lang/String;)I

    move-result v65

    .line 2262
    .restart local v65    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2263
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2264
    const/4 v6, 0x1

    return v6

    .line 1608
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
        0x1d -> :sswitch_1e
        0x1e -> :sswitch_1f
        0x1f -> :sswitch_20
        0x20 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_2a
        0x2a -> :sswitch_2b
        0x2b -> :sswitch_2c
        0x2c -> :sswitch_2d
        0x2d -> :sswitch_2e
        0x2e -> :sswitch_2f
        0x2f -> :sswitch_30
        0x30 -> :sswitch_31
        0x31 -> :sswitch_32
        0x32 -> :sswitch_33
        0x33 -> :sswitch_35
        0x34 -> :sswitch_36
        0x35 -> :sswitch_37
        0x36 -> :sswitch_38
        0x37 -> :sswitch_39
        0x38 -> :sswitch_3a
        0x39 -> :sswitch_3b
        0x3a -> :sswitch_3d
        0x3b -> :sswitch_3e
        0x3c -> :sswitch_34
        0x3d -> :sswitch_3c
        0x3e -> :sswitch_3f
        0x3f -> :sswitch_40
        0x40 -> :sswitch_43
        0x41 -> :sswitch_44
        0x42 -> :sswitch_45
        0x43 -> :sswitch_46
        0x44 -> :sswitch_47
        0x45 -> :sswitch_29
        0x46 -> :sswitch_48
        0x47 -> :sswitch_41
        0x48 -> :sswitch_42
        0x49 -> :sswitch_1d
        0x4a -> :sswitch_49
        0x4b -> :sswitch_4a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
