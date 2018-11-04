.class final Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraManagerGlobal"
.end annotation


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field private static final TAG:Ljava/lang/String; = "CameraManagerGlobal"

.field private static final gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;


# instance fields
.field private final CAMERA_SERVICE_RECONNECT_DELAY_MS:I

.field private final DEBUG:Z

.field private final mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/hardware/camera2/CameraManager$AvailabilityCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraService:Landroid/hardware/ICameraService;

.field private final mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mTorchCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/hardware/camera2/CameraManager$TorchCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mTorchClientBinder:Landroid/os/Binder;

.field private final mTorchStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 833
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;-><init>()V

    .line 832
    sput-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 823
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 863
    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    .line 829
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->CAMERA_SERVICE_RECONNECT_DELAY_MS:I

    .line 841
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    .line 845
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 844
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    .line 848
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    .line 851
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    .line 855
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 854
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    .line 857
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    .line 863
    return-void
.end method

.method private connectCameraServiceLocked()V
    .locals 6

    .prologue
    .line 900
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-eqz v4, :cond_0

    return-void

    .line 902
    :cond_0
    const-string/jumbo v4, "CameraManagerGlobal"

    const-string/jumbo v5, "Connecting to camera service"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string/jumbo v4, "media.camera"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 905
    .local v1, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v1, :cond_1

    .line 907
    return-void

    .line 910
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    invoke-static {v1}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v0

    .line 919
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setupGlobalVendorTagDescriptor()V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    .line 925
    :goto_0
    :try_start_2
    invoke-interface {v0, p0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)V

    .line 926
    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 898
    :goto_1
    return-void

    .line 911
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v2

    .line 913
    .local v2, "e":Landroid/os/RemoteException;
    return-void

    .line 920
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    :catch_1
    move-exception v3

    .line 921
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V

    goto :goto_0

    .line 927
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :catch_2
    move-exception v3

    .line 929
    .restart local v3    # "e":Landroid/os/ServiceSpecificException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Failed to register a camera service listener"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 930
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public static get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .locals 1

    .prologue
    .line 867
    sget-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    return-object v0
.end method

.method private handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/ServiceSpecificException;

    .prologue
    .line 965
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_0

    .line 970
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 967
    :pswitch_0
    const-string/jumbo v0, "CameraManagerGlobal"

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    return-void

    .line 965
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private isAvailable(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 975
    packed-switch p1, :pswitch_data_0

    .line 979
    const/4 v0, 0x0

    return v0

    .line 977
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onStatusChangedLocked(ILjava/lang/String;)V
    .locals 20
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 1070
    const/4 v5, 0x0

    .line 1071
    .local v5, "exposeMonoCamera":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1072
    .local v11, "packageName":Ljava/lang/String;
    const-string/jumbo v15, "camera.aux.packagelist"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1073
    .local v9, "packageList":Ljava/lang/String;
    const-string/jumbo v15, "camera.aux.packagelist2"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1074
    .local v10, "packageList2":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 1075
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    .line 1076
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1078
    :cond_0
    new-instance v12, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v15, 0x2c

    invoke-direct {v12, v15}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1079
    .local v12, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v12, v9}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 1080
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "str$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1081
    .local v13, "str":Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1082
    const/4 v5, 0x1

    .line 1088
    .end local v12    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v13    # "str":Ljava/lang/String;
    .end local v14    # "str$iterator":Ljava/util/Iterator;
    :cond_2
    if-nez v5, :cond_3

    .line 1089
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    .line 1090
    const-string/jumbo v15, "CameraManagerGlobal"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "[soar.cts] ignore the status update of camera: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    return-void

    .line 1100
    :cond_3
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v15

    if-nez v15, :cond_4

    .line 1101
    const-string/jumbo v15, "CameraManagerGlobal"

    const-string/jumbo v16, "Ignoring invalid device %s status 0x%x"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p2, v17, v18

    .line 1102
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v17, v19

    .line 1101
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void

    .line 1106
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1108
    .local v8, "oldStatus":Ljava/lang/Integer;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v0, p1

    if-ne v15, v0, :cond_5

    .line 1114
    return-void

    .line 1130
    :cond_5
    if-eqz v8, :cond_6

    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v15

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1139
    return-void

    .line 1142
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1143
    .local v4, "callbackCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_7

    .line 1144
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Handler;

    .line 1145
    .local v6, "handler":Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 1147
    .local v3, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v0, v3, v6, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 1143
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1065
    .end local v3    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .end local v6    # "handler":Landroid/os/Handler;
    :cond_7
    return-void
.end method

.method private onTorchStatusChangedLocked(ILjava/lang/String;)V
    .locals 11
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    .line 1164
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1165
    .local v5, "packageName":Ljava/lang/String;
    const-string/jumbo v6, "android.camera.cts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1166
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v8, :cond_0

    .line 1167
    const-string/jumbo v6, "CameraManagerGlobal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[camera.cts] ignore the status update of torch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return-void

    .line 1178
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validTorchStatus(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1179
    const-string/jumbo v6, "CameraManagerGlobal"

    const-string/jumbo v7, "Ignoring invalid device %s torch status 0x%x"

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    .line 1180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 1179
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    return-void

    .line 1184
    :cond_1
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1185
    .local v4, "oldStatus":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 1191
    return-void

    .line 1194
    :cond_2
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1195
    .local v1, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1196
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 1197
    .local v2, "handler":Landroid/os/Handler;
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 1198
    .local v0, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-direct {p0, v0, v2, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 1195
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1159
    .end local v0    # "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_3
    return-void
.end method

.method private postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .prologue
    .line 1029
    packed-switch p4, :pswitch_data_0

    .line 1043
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1028
    :goto_0
    return-void

    .line 1033
    :pswitch_0
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;

    invoke-direct {v0, p0, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    .line 1032
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1029
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .prologue
    .line 1008
    invoke-direct {p0, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1007
    :goto_0
    return-void

    .line 1018
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private scheduleCameraServiceReconnectionLocked()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1285
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1286
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1300
    .local v0, "handler":Landroid/os/Handler;
    :goto_0
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    .line 1314
    const-wide/16 v2, 0x3e8

    .line 1299
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1282
    return-void

    .line 1287
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1288
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .restart local v0    # "handler":Landroid/os/Handler;
    goto :goto_0

    .line 1291
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method private updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1058
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1059
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1060
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1061
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 1058
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1057
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1153
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1154
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1155
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 1152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1151
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private validStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 984
    packed-switch p1, :pswitch_data_0

    .line 991
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 989
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 984
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private validTorchStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 996
    packed-switch p1, :pswitch_data_0

    .line 1002
    const/4 v0, 0x0

    return v0

    .line 1000
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 996
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 872
    return-object p0
.end method

.method public binderDied()V
    .locals 4

    .prologue
    .line 1325
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1327
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    return-void

    .line 1329
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    .line 1334
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1335
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1336
    .local v0, "cameraId":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 1334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1338
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1339
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1340
    .restart local v0    # "cameraId":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V

    .line 1338
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1344
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1324
    return-void

    .line 1325
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getCameraService()Landroid/hardware/ICameraService;
    .locals 3

    .prologue
    .line 883
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 884
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 885
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v0, :cond_0

    .line 886
    const-string/jumbo v0, "CameraManagerGlobal"

    const-string/jumbo v2, "Camera service is unavailable"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 883
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStatusChanged(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1266
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1267
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1265
    return-void

    .line 1266
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onTorchStatusChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1273
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1274
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1272
    return-void

    .line 1273
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1210
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1211
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 1213
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1215
    .local v0, "oldHandler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 1216
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 1220
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_1

    .line 1221
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 1209
    return-void

    .line 1210
    .end local v0    # "oldHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1239
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1240
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 1242
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1244
    .local v0, "oldHandler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 1245
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 1249
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_1

    .line 1250
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 1238
    return-void

    .line 1239
    .end local v0    # "oldHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 936
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 938
    if-nez p1, :cond_0

    .line 939
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "cameraId was null"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 942
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 943
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_1

    .line 944
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    .line 945
    const-string/jumbo v6, "Camera service is currently unavailable"

    .line 944
    const/4 v7, 0x2

    invoke-direct {v4, v7, v6}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 948
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 949
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "android.camera.cts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 950
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "camera is not availible"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 954
    :cond_2
    :try_start_2
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v4}, Landroid/hardware/ICameraService;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v5

    .line 935
    return-void

    .line 957
    :catch_0
    move-exception v1

    .line 958
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    .line 959
    const-string/jumbo v6, "Camera service is currently unavailable"

    .line 958
    const/4 v7, 0x2

    invoke-direct {v4, v7, v6}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 955
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 956
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .prologue
    .line 1233
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1234
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1232
    return-void

    .line 1233
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .prologue
    .line 1256
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1257
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1255
    return-void

    .line 1256
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
