.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;
    }
.end annotation


# static fields
.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final CAMERA_TYPE_ALL:I = 0x1

.field private static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_a

    .line 698
    const/4 v10, 0x0

    .line 699
    .local v10, "numCameras":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2

    .line 700
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v3, "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 704
    return-object v3

    .line 708
    :cond_0
    const/16 v17, 0x1

    :try_start_0
    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/hardware/ICameraService;->getNumberOfCameras(I)I

    move-result v10

    .line 713
    const/4 v6, 0x0

    .line 714
    .local v6, "exposeAuxCamera":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v13

    .line 715
    .local v13, "packageName":Ljava/lang/String;
    const-string/jumbo v17, "camera.aux.packagelist"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 716
    .local v11, "packageList":Ljava/lang/String;
    const-string/jumbo v17, "camera.aux.packagelist2"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 717
    .local v12, "packageList2":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_3

    .line 718
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 719
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 721
    :cond_1
    new-instance v14, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 722
    .local v14, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v14, v11}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 723
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "str$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 724
    .local v15, "str":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_2

    .line 725
    const/4 v6, 0x1

    .line 730
    .end local v14    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v15    # "str":Ljava/lang/String;
    .end local v16    # "str$iterator":Ljava/util/Iterator;
    :cond_3
    if-nez v6, :cond_4

    const/16 v17, 0x2

    move/from16 v0, v17

    if-le v10, v0, :cond_4

    .line 731
    const/4 v10, 0x2

    .line 741
    .end local v6    # "exposeAuxCamera":Z
    .end local v11    # "packageList":Ljava/lang/String;
    .end local v12    # "packageList2":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_4
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v10, :cond_9

    .line 744
    const/4 v9, 0x0

    .line 746
    .local v9, "isDeviceSupported":Z
    :try_start_1
    invoke-interface {v2, v7}, Landroid/hardware/ICameraService;->getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v8

    .line 747
    .local v8, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v17

    if-nez v17, :cond_6

    .line 748
    const/4 v9, 0x1

    .line 767
    .end local v8    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_5
    :goto_2
    if-eqz v9, :cond_8

    .line 768
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 736
    .end local v7    # "i":I
    .end local v9    # "isDeviceSupported":Z
    :catch_0
    move-exception v4

    .line 738
    .local v4, "e":Landroid/os/RemoteException;
    return-object v3

    .line 734
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 735
    .local v5, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 750
    .end local v5    # "e":Landroid/os/ServiceSpecificException;
    .restart local v7    # "i":I
    .restart local v8    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v9    # "isDeviceSupported":Z
    :cond_6
    :try_start_2
    new-instance v17, Ljava/lang/AssertionError;

    const-string/jumbo v18, "Expected to get non-empty characteristics"

    invoke-direct/range {v17 .. v18}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v17
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 752
    .end local v8    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_2
    move-exception v5

    .line 757
    .restart local v5    # "e":Landroid/os/ServiceSpecificException;
    iget v0, v5, Landroid/os/ServiceSpecificException;->errorCode:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 758
    iget v0, v5, Landroid/os/ServiceSpecificException;->errorCode:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 759
    :cond_7
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 761
    .end local v5    # "e":Landroid/os/ServiceSpecificException;
    :catch_3
    move-exception v4

    .line 763
    .restart local v4    # "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 764
    return-object v3

    .line 770
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_8
    const-string/jumbo v17, "CameraManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error querying camera device "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " for listing."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 774
    .end local v9    # "isDeviceSupported":Z
    :cond_9
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    .line 776
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .end local v3    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .end local v10    # "numCameras":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    return-object v17
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;
    .locals 18
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 308
    .local v6, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v7, 0x0

    .line 310
    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 312
    const/4 v5, 0x0

    .line 315
    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_0
    new-instance v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v8, v0, v1, v2, v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 321
    .local v8, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 325
    .local v3, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    .line 332
    .local v12, "id":I
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 334
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v14

    invoke-virtual {v14}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v4

    .line 335
    .local v4, "cameraService":Landroid/hardware/ICameraService;
    if-nez v4, :cond_0

    .line 336
    new-instance v14, Landroid/os/ServiceSpecificException;

    .line 338
    const-string/jumbo v16, "Camera service is currently unavailable"

    .line 337
    const/16 v17, 0x4

    .line 336
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    .end local v4    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v10

    .line 348
    .local v10, "e":Landroid/os/ServiceSpecificException;
    :try_start_3
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ne v14, v0, :cond_3

    .line 349
    new-instance v14, Ljava/lang/AssertionError;

    const-string/jumbo v16, "Should\'ve gone down the shim path"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    .end local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v8    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v10    # "e":Landroid/os/ServiceSpecificException;
    .end local v12    # "id":I
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 326
    .restart local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v8    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :catch_1
    move-exception v11

    .line 327
    .local v11, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Expected cameraId to be numeric, but it was: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 341
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v12    # "id":I
    :cond_0
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v14

    .line 340
    move/from16 v0, p4

    invoke-interface {v4, v3, v12, v14, v0}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 384
    .end local v4    # "cameraService":Landroid/hardware/ICameraService;
    .end local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {v8, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 385
    move-object v7, v8

    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    monitor-exit v15

    .line 388
    return-object v8

    .line 344
    .restart local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    :cond_2
    :try_start_7
    const-string/jumbo v14, "CameraManager"

    const-string/jumbo v16, "Using legacy camera HAL."

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {v3, v12}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    :try_end_7
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v5

    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    goto :goto_0

    .line 370
    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :catch_2
    move-exception v9

    .line 372
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_8
    new-instance v13, Landroid/os/ServiceSpecificException;

    .line 374
    const-string/jumbo v14, "Camera service is currently unavailable"

    .line 373
    const/16 v16, 0x4

    .line 372
    move/from16 v0, v16

    invoke-direct {v13, v0, v14}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 375
    .local v13, "sse":Landroid/os/ServiceSpecificException;
    invoke-virtual {v8, v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 376
    invoke-static {v13}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 350
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v13    # "sse":Landroid/os/ServiceSpecificException;
    .restart local v10    # "e":Landroid/os/ServiceSpecificException;
    :cond_3
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 351
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v14, v0, :cond_6

    .line 358
    :cond_4
    invoke-virtual {v8, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 360
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x6

    move/from16 v0, v16

    if-eq v14, v0, :cond_5

    .line 361
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v14, v0, :cond_7

    .line 364
    :cond_5
    :goto_1
    invoke-static {v10}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 352
    :cond_6
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x6

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 353
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 354
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 368
    invoke-static {v10}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 362
    :cond_7
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v14, v0, :cond_1

    goto :goto_1
.end method

.method private supportsCamera2ApiLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 786
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I

    .prologue
    const/4 v4, 0x0

    .line 797
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 808
    .local v2, "id":I
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 810
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_0

    return v4

    .line 812
    :cond_0
    invoke-interface {v0, v2, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 813
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v1

    .line 816
    .local v1, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public static throwAsPublicException(Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 648
    instance-of v3, p0, Landroid/os/ServiceSpecificException;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 649
    check-cast v0, Landroid/os/ServiceSpecificException;

    .line 650
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const/4 v2, 0x3

    .line 651
    .local v2, "reason":I
    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v3, :pswitch_data_0

    .line 675
    :pswitch_0
    const/4 v2, 0x3

    .line 677
    :goto_0
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 653
    :pswitch_1
    const/4 v2, 0x2

    .line 654
    goto :goto_0

    .line 656
    :pswitch_2
    const/4 v2, 0x1

    .line 657
    goto :goto_0

    .line 659
    :pswitch_3
    const/4 v2, 0x4

    .line 660
    goto :goto_0

    .line 662
    :pswitch_4
    const/4 v2, 0x5

    .line 663
    goto :goto_0

    .line 665
    :pswitch_5
    const/16 v2, 0x3e8

    .line 666
    goto :goto_0

    .line 669
    :pswitch_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 671
    :pswitch_7
    new-instance v3, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 678
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "reason":I
    :cond_0
    instance-of v3, p0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_1

    .line 679
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    .line 680
    const-string/jumbo v4, "Camera service has died unexpectedly"

    .line 679
    const/4 v5, 0x2

    invoke-direct {v3, v5, v4, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 682
    :cond_1
    instance-of v3, p0, Landroid/os/RemoteException;

    if-eqz v3, :cond_2

    .line 683
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v3, v4, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 685
    :cond_2
    instance-of v3, p0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    move-object v1, p0

    .line 686
    check-cast v1, Ljava/lang/RuntimeException;

    .line 687
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 647
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    return-void

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 18
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v2, 0x0

    .line 223
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 224
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 225
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "Camera id %s does not match any currently connected camera device"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 226
    const/16 v17, 0x0

    aput-object p1, v16, v17

    .line 225
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 229
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 236
    .local v7, "id":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v13

    invoke-virtual {v13}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 237
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    if-nez v1, :cond_1

    .line 238
    new-instance v13, Landroid/hardware/camera2/CameraAccessException;

    .line 239
    const-string/jumbo v15, "Camera service is currently unavailable"

    .line 238
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-direct {v13, v0, v15}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v13

    .line 241
    :cond_1
    const/4 v10, 0x0

    .line 242
    .local v10, "isCtsV":Z
    new-instance v13, Ljava/lang/Throwable;

    invoke-direct {v13}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v13}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    .line 243
    .local v12, "stackElements":[Ljava/lang/StackTraceElement;
    if-eqz v12, :cond_2

    .line 244
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v13, v12

    if-ge v6, v13, :cond_2

    .line 245
    aget-object v13, v12, v6

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v13

    .line 248
    const-string/jumbo v15, "com.android.cts.verifier.camera.its.ItsTestActivity.onCreate"

    .line 245
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 249
    const-string/jumbo v13, "CameraManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "set true"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v12, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    const/4 v10, 0x1

    .line 256
    .end local v6    # "i":I
    :cond_2
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 259
    invoke-interface {v1, v7}, Landroid/hardware/ICameraService;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v11

    .line 261
    .local v11, "parameters":Ljava/lang/String;
    invoke-interface {v1, v7}, Landroid/hardware/ICameraService;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v8

    .line 263
    .local v8, "info":Landroid/hardware/CameraInfo;
    invoke-static {v11, v8}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v8    # "info":Landroid/hardware/CameraInfo;
    .end local v11    # "parameters":Ljava/lang/String;
    :goto_1
    monitor-exit v14

    .line 278
    return-object v2

    .line 244
    .restart local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v6    # "i":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 266
    .end local v6    # "i":I
    :cond_4
    :try_start_3
    invoke-interface {v1, v7}, Landroid/hardware/ICameraService;->getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v9

    .line 268
    .local v9, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v3, v9}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v3, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object v2, v3

    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    goto :goto_1

    .line 272
    .end local v9    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v4

    .line 274
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v13, Landroid/hardware/camera2/CameraAccessException;

    .line 275
    const-string/jumbo v15, "Camera service is currently unavailable"

    .line 274
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-direct {v13, v0, v15, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 270
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 271
    .local v5, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 458
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V

    .line 456
    return-void
.end method

.method public openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "clientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 481
    if-nez p1, :cond_0

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_0
    if-nez p2, :cond_1

    .line 484
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_1
    if-nez p3, :cond_2

    .line 486
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 487
    new-instance p3, Landroid/os/Handler;

    .end local p3    # "handler":Landroid/os/Handler;
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 494
    .restart local p3    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;

    .line 479
    return-void

    .line 489
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 490
    const-string/jumbo v1, "Handler argument is null, but no looper exists in the calling thread"

    .line 489
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 134
    if-nez p2, :cond_1

    .line 135
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 136
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 138
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 137
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 143
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 133
    return-void
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 181
    if-nez p2, :cond_1

    .line 182
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 183
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 184
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 185
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 184
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 189
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 180
    return-void
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    .line 537
    return-void
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .prologue
    .line 155
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 154
    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .prologue
    .line 201
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 200
    return-void
.end method
