.class public Landroid/hardware/camera2/impl/CameraDeviceImplInjector;
.super Ljava/lang/Object;
.source "CameraDeviceImplInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string/jumbo v1, "xiaomi.scaler.availableStreamConfigurations"

    .line 24
    const-class v2, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 23
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 22
    sput-object v0, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllVendorKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/HashSet;
    .locals 5
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    const-class v4, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 123
    .local v2, "vendorKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 124
    .local v3, "vendorNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 125
    .local v0, "key":Landroid/hardware/camera2/CaptureRequest$Key;
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    .end local v0    # "key":Landroid/hardware/camera2/CaptureRequest$Key;
    :cond_0
    return-object v3
.end method

.method private static getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/HashSet;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 10
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "vendorKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 104
    .local v0, "streamConfigurationMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    sget-object v1, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 106
    .end local v0    # "streamConfigurationMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    sget-object v1, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 107
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 108
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 109
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 110
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 111
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 112
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 113
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 114
    const/4 v9, 0x1

    .line 105
    invoke-direct/range {v0 .. v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V

    .line 117
    :cond_0
    return-object v0
.end method

.method private static isFormatValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .locals 6
    .param p0, "configMap"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .prologue
    const/4 v3, 0x0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v1

    .line 51
    .local v1, "inputFormats":[I
    if-eqz v1, :cond_1

    .line 52
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget v0, v1, v2

    .line 53
    .local v0, "format":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 54
    const/4 v2, 0x1

    return v2

    .line 52
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "format":I
    .end local v1    # "inputFormats":[I
    :cond_1
    return v3
.end method

.method public static isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .locals 9
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 28
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 29
    :cond_0
    sget-object v3, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Null "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p0, :cond_1

    const-string/jumbo v2, "CameraCharacteristics"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return v7

    .line 29
    :cond_1
    const-string/jumbo v2, "InputConfiguration"

    goto :goto_0

    .line 33
    :cond_2
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getAllVendorKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/HashSet;

    move-result-object v1

    .line 35
    .local v1, "vendorKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/HashSet;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    .line 36
    .local v0, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->isFormatValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    sget-object v2, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "valid format: %d"

    new-array v5, v8, [Ljava/lang/Object;

    .line 38
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 37
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v8

    .line 42
    :cond_3
    sget-object v2, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "invalid format: %d"

    new-array v5, v8, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 42
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return v7
.end method

.method public static isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .locals 9
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 65
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 66
    :cond_0
    sget-object v3, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Null "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p0, :cond_1

    const-string/jumbo v2, "CameraCharacteristics"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return v7

    .line 66
    :cond_1
    const-string/jumbo v2, "InputConfiguration"

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getAllVendorKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/HashSet;

    move-result-object v1

    .line 72
    .local v1, "vendorKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/HashSet;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    .line 73
    .local v0, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->isSizeValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    sget-object v2, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "valid size: %dx%d"

    new-array v5, v5, [Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 74
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v8

    .line 79
    :cond_3
    sget-object v2, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "invalid size: %dx%d"

    new-array v5, v5, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 79
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v7
.end method

.method private static isSizeValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .locals 7
    .param p0, "configMap"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .prologue
    const/4 v3, 0x0

    .line 86
    if-eqz p0, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 88
    .local v0, "inputSizes":[Landroid/util/Size;
    if-eqz v0, :cond_1

    .line 89
    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 90
    .local v1, "size":Landroid/util/Size;
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 92
    const/4 v2, 0x1

    return v2

    .line 89
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "inputSizes":[Landroid/util/Size;
    .end local v1    # "size":Landroid/util/Size;
    :cond_1
    return v3
.end method
