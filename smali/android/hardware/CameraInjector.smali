.class public Landroid/hardware/CameraInjector;
.super Ljava/lang/Object;
.source "CameraInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/CameraInjector$CameraExInfo;,
        Landroid/hardware/CameraInjector$CameraOrientationEventListener;,
        Landroid/hardware/CameraInjector$UploadInfoThread;
    }
.end annotation


# static fields
.field private static final ACTION_SAVE_CAMERA_INFO:Ljava/lang/String; = "action_save_camera_info"

.field private static final CAMERA_CONFIG_KEY:Ljava/lang/String; = "camera"

.field private static final ENDTTIME:Ljava/lang/String; = "endtime"

.field private static final EXTRA_BEAUTIFY_VALUE:Ljava/lang/String; = "extra_still_beautify_value"

.field private static final EXTRA_MIN_PREVIEW_SIZE:Ljava/lang/String; = "extra_min_preview_size"

.field private static final FRONTORBACK:Ljava/lang/String; = "frontorback"

.field private static final KEY_BEAUTIFY:Ljava/lang/String; = "xiaomi-still-beautify-values"

.field private static final KEY_CAMERA_ID:Ljava/lang/String; = "camera-id"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field private static final KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final SAVE_CAMERA_INFO_PACKAGE_NAME:Ljava/lang/String; = "com.miui.klo.bugreport"

.field private static final SAVE_CAMERA_INFO_SERVICE_NAME:Ljava/lang/String; = "com.miui.klo.bugreport.service.ReceiveCameraInfoService"

.field private static final STARTTIME:Ljava/lang/String; = "starttime"

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final TAG:Ljava/lang/String; = "CameraInjector"

.field private static sCameraInfoMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/hardware/Camera;",
            "Landroid/hardware/CameraInjector$CameraExInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/WeakHashMap;
    .locals 1

    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic -wrap0(II)I
    .locals 1
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/hardware/CameraInjector;->roundOrientation(II)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;
    .locals 2
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 147
    if-eqz p0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private static createOrientationListener(Landroid/hardware/Camera;)V
    .locals 4
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 400
    sget-object v2, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    .line 401
    .local v0, "cameraExInfo":Landroid/hardware/CameraInjector$CameraExInfo;
    invoke-static {}, Landroid/hardware/CameraInjector;->isInRotateWhiteList()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 402
    const-string/jumbo v2, "CameraInjector"

    const-string/jumbo v3, "Listener orientation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v1, Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    .line 405
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 403
    invoke-direct {v1, p0, v2}, Landroid/hardware/CameraInjector$CameraOrientationEventListener;-><init>(Landroid/hardware/Camera;Landroid/content/Context;)V

    .line 406
    .local v1, "cameraOrientationEventListener":Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 407
    invoke-static {v0, v1}, Landroid/hardware/CameraInjector$CameraExInfo;->-set0(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$CameraOrientationEventListener;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    .line 399
    .end local v1    # "cameraOrientationEventListener":Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    :cond_0
    return-void
.end method

.method private static destoryOrientationListener(Landroid/hardware/Camera;)V
    .locals 5
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v4, 0x0

    .line 412
    sget-object v2, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    .line 413
    .local v0, "cameraExInfo":Landroid/hardware/CameraInjector$CameraExInfo;
    if-eqz v0, :cond_0

    .line 414
    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->-get0(Landroid/hardware/CameraInjector$CameraExInfo;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    move-result-object v1

    .line 415
    .local v1, "listener":Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    if-eqz v1, :cond_0

    .line 416
    const-string/jumbo v2, "CameraInjector"

    const-string/jumbo v3, "release orientation listener"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 418
    invoke-static {v0, v4}, Landroid/hardware/CameraInjector$CameraExInfo;->-set0(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$CameraOrientationEventListener;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    .line 411
    .end local v1    # "listener":Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    :cond_0
    return-void
.end method

.method private static getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;
    .locals 3
    .param p0, "camera"    # Landroid/hardware/Camera;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 456
    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    .line 457
    .local v0, "cameraExInfo":Landroid/hardware/CameraInjector$CameraExInfo;
    if-eqz v0, :cond_0

    .line 458
    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->-get1(Landroid/hardware/CameraInjector$CameraExInfo;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1

    .line 460
    :cond_0
    return-object v2
.end method

.method public static getNumberOfCameras(I)I
    .locals 1
    .param p0, "numberOfCameras"    # I

    .prologue
    .line 222
    invoke-static {}, Landroid/hardware/CameraInjector;->isExposeAuxCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    .line 223
    const/4 p0, 0x2

    .line 228
    :cond_0
    invoke-static {}, Landroid/hardware/CameraInjector;->limitCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    .line 229
    const/4 p0, 0x1

    .line 232
    :cond_1
    return p0
.end method

.method public static getParametersEx(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 130
    const-string/jumbo v5, "remove_lower_perview_size_list"

    invoke-static {v5}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .local v1, "newSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string/jumbo v5, "extra_min_preview_size"

    const v6, 0xe1000

    invoke-static {v5, v6}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, "minSize":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 135
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    if-gt v0, v5, :cond_0

    .line 136
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 140
    const-string/jumbo v5, "preview-size-values"

    .line 141
    invoke-static {v1}, Landroid/hardware/CameraInjector;->getValueString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 140
    invoke-virtual {p0, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v0    # "minSize":I
    .end local v1    # "newSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v2    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v4    # "size$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private static getValueString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz p0, :cond_2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 206
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 207
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 214
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :cond_2
    const-string/jumbo v3, ""

    return-object v3
.end method

.method public static initCamera(Landroid/hardware/Camera;I)V
    .locals 2
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "cameraId"    # I

    .prologue
    .line 79
    new-instance v0, Landroid/hardware/CameraInjector$CameraExInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/CameraInjector$CameraExInfo;-><init>(ILandroid/hardware/CameraInjector$CameraExInfo;)V

    .line 80
    .local v0, "info":Landroid/hardware/CameraInjector$CameraExInfo;
    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/hardware/CameraInjector;->onCameraStateChange(Landroid/hardware/Camera;Z)V

    .line 83
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/hardware/CameraInjector;->uploadCameraUseInfo(Landroid/hardware/Camera;Z)V

    .line 78
    return-void
.end method

.method public static isExposeAuxCamera()Z
    .locals 1

    .prologue
    .line 282
    const-string/jumbo v0, "camera_aux_package_list"

    invoke-static {v0}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    .line 282
    if-eqz v0, :cond_1

    .line 284
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 286
    :cond_1
    const-string/jumbo v0, "camera.aux.packagelist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/CameraInjector;->limitByPackageName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isInRotateWhiteList()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 354
    const-string/jumbo v5, "camera_rotate_packagelist"

    invoke-static {v5}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 355
    return v9

    .line 357
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "processName":Ljava/lang/String;
    const-string/jumbo v5, "camera.rotate.packagelist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "packageList":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 361
    :cond_1
    const-string/jumbo v5, "vendor.camera.rotate.packagelist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    :cond_2
    const-string/jumbo v5, "CameraInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isInRotateWhiteList whiteList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " processName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 365
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 366
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 367
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "str$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 368
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 369
    return v9

    .line 373
    .end local v2    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "str$iterator":Ljava/util/Iterator;
    :cond_4
    return v8
.end method

.method private static isInWhiteList(Ljava/lang/String;)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "processName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 66
    invoke-static {p0}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "whitelist":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 68
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v2, v3

    .line 69
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    const/4 v3, 0x1

    return v3

    .line 68
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "whitelist":[Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public static limitByCameraId(Ljava/lang/String;)Z
    .locals 3
    .param p0, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "limit":Z
    if-nez p0, :cond_0

    .line 244
    const/4 v0, 0x1

    .line 249
    :cond_0
    invoke-static {}, Landroid/hardware/CameraInjector;->isExposeAuxCamera()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 250
    const/4 v0, 0x1

    .line 255
    :cond_1
    invoke-static {}, Landroid/hardware/CameraInjector;->limitCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 256
    const/4 v0, 0x1

    .line 259
    :cond_2
    return v0
.end method

.method private static limitByPackageName(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageList"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 266
    .local v0, "limit":Z
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 267
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 268
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 269
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 270
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "str$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 271
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 278
    .end local v2    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "str$iterator":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public static limitCamera()Z
    .locals 1

    .prologue
    .line 290
    const-string/jumbo v0, "camera.limit.packagelist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/CameraInjector;->limitByPackageName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static onCameraStateChange(Landroid/hardware/Camera;Z)V
    .locals 2
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "active"    # Z

    .prologue
    .line 383
    if-eqz p1, :cond_0

    .line 384
    invoke-static {}, Lmiui/process/ProcessManager;->boostCameraIfNeed()V

    .line 388
    :cond_0
    const-string/jumbo v0, "chiron"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 389
    const-string/jumbo v0, "lithium"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 388
    if-nez v0, :cond_1

    .line 390
    const-string/jumbo v0, "polaris"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 388
    if-eqz v0, :cond_2

    .line 391
    :cond_1
    if-eqz p1, :cond_3

    .line 392
    invoke-static {p0}, Landroid/hardware/CameraInjector;->createOrientationListener(Landroid/hardware/Camera;)V

    .line 382
    :cond_2
    :goto_0
    return-void

    .line 394
    :cond_3
    invoke-static {p0}, Landroid/hardware/CameraInjector;->destoryOrientationListener(Landroid/hardware/Camera;)V

    goto :goto_0
.end method

.method public static processPreviewFrame(Landroid/hardware/Camera;[B)V
    .locals 2
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "data"    # [B

    .prologue
    .line 196
    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    .line 197
    .local v0, "cameraExInfo":Landroid/hardware/CameraInjector$CameraExInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->-get3(Landroid/hardware/CameraInjector$CameraExInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-static {p1}, Landroid/hardware/CameraInjector;->reversePreviewFrame([B)V

    .line 195
    :cond_0
    return-void
.end method

.method public static releaseCamera(Landroid/hardware/Camera;)V
    .locals 1
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/hardware/CameraInjector;->onCameraStateChange(Landroid/hardware/Camera;Z)V

    .line 89
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/hardware/CameraInjector;->uploadCameraUseInfo(Landroid/hardware/Camera;Z)V

    .line 90
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method private static reverse([BII)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 321
    if-eqz p0, :cond_0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 323
    :cond_0
    return-void

    .line 321
    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_0

    .line 322
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 326
    :goto_0
    if-le p2, p1, :cond_2

    .line 327
    aget-byte v0, p0, p2

    .line 328
    .local v0, "tmp":B
    aget-byte v1, p0, p1

    aput-byte v1, p0, p2

    .line 329
    aput-byte v0, p0, p1

    .line 330
    add-int/lit8 p2, p2, -0x1

    .line 331
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "tmp":B
    :cond_2
    return-void
.end method

.method private static reversePreviewFrame([B)V
    .locals 2
    .param p0, "array"    # [B

    .prologue
    .line 309
    if-nez p0, :cond_0

    .line 310
    return-void

    .line 313
    :cond_0
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v1, 0x3

    .line 315
    .local v0, "totalYNum":I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/hardware/CameraInjector;->reverse([BII)V

    .line 317
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/hardware/CameraInjector;->reverseUV([BII)V

    .line 308
    return-void
.end method

.method private static reverseUV([BII)V
    .locals 4
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 336
    if-eqz p0, :cond_0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    .line 338
    :cond_0
    return-void

    .line 336
    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-gt p2, v2, :cond_0

    .line 337
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 341
    :goto_0
    if-le p2, p1, :cond_2

    .line 342
    add-int/lit8 v2, p2, -0x1

    aget-byte v0, p0, v2

    .line 343
    .local v0, "tmpU":B
    aget-byte v1, p0, p2

    .line 344
    .local v1, "tmpV":B
    add-int/lit8 v2, p2, -0x1

    aget-byte v3, p0, p1

    aput-byte v3, p0, v2

    .line 345
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, p0, p2

    .line 346
    aput-byte v0, p0, p1

    .line 347
    add-int/lit8 v2, p1, 0x1

    aput-byte v1, p0, v2

    .line 348
    add-int/lit8 p2, p2, -0x2

    .line 349
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 335
    .end local v0    # "tmpU":B
    .end local v1    # "tmpV":B
    :cond_2
    return-void
.end method

.method private static roundOrientation(II)I
    .locals 3
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "changeOrientation":Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 296
    const/4 v0, 0x1

    .line 302
    :goto_0
    if-eqz v0, :cond_2

    .line 303
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 v2, v2, 0x168

    return v2

    .line 298
    :cond_0
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 299
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 300
    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 305
    .end local v1    # "dist":I
    :cond_2
    return p1
.end method

.method public static setParametersEx(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/16 v3, 0x2d0

    .line 155
    const-string/jumbo v2, "add_still_beautify_list"

    invoke-static {v2}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    const-string/jumbo v2, "xiaomi-still-beautify-values"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 157
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 158
    .local v1, "size":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    if-le v2, v3, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-gt v2, v3, :cond_1

    .line 159
    :cond_0
    const-string/jumbo v2, "xiaomi-still-beautify-values"

    .line 160
    const-string/jumbo v3, "extra_still_beautify_value"

    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v0

    .line 165
    .local v0, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 166
    const-string/jumbo v2, "preview-size"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/CameraInjector;->convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v2, "picture-size"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/CameraInjector;->convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :goto_0
    return-void

    .line 169
    :cond_2
    const-string/jumbo v2, "CameraInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setParametersEx: Lost camera info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setTorchMode(Ljava/lang/String;)V
    .locals 2
    .param p0, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-static {p0}, Landroid/hardware/CameraInjector;->limitByCameraId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid cameraId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    return-void
.end method

.method public static startPreview(Landroid/hardware/Camera;)V
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 174
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v1

    .line 175
    .local v1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 177
    const-string/jumbo v3, "camera-id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, "cameraId":Ljava/lang/String;
    const-string/jumbo v3, "preview-size"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    .end local v0    # "cameraId":Ljava/lang/String;
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string/jumbo v3, "CameraInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startPreview: Lost camera info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static takePicture(Landroid/hardware/Camera;)V
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 185
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v1

    .line 186
    .local v1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 188
    const-string/jumbo v3, "camera-id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    .local v0, "cameraId":Ljava/lang/String;
    const-string/jumbo v3, "picture-size"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .end local v0    # "cameraId":Ljava/lang/String;
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string/jumbo v3, "CameraInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "takePicture: Lost camera info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static uploadCameraUseInfo(Landroid/hardware/Camera;Z)V
    .locals 5
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "endFlag"    # Z

    .prologue
    const/4 v4, 0x0

    .line 94
    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    .line 95
    .local v0, "cameraExInfo":Landroid/hardware/CameraInjector$CameraExInfo;
    if-eqz v0, :cond_1

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/hardware/CameraInjector$CameraExInfo;->-set1(Landroid/hardware/CameraInjector$CameraExInfo;J)J

    .line 99
    :cond_0
    new-instance v1, Landroid/hardware/CameraInjector$UploadInfoThread;

    invoke-direct {v1, v0, v4}, Landroid/hardware/CameraInjector$UploadInfoThread;-><init>(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$UploadInfoThread;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 93
    :cond_1
    return-void
.end method
