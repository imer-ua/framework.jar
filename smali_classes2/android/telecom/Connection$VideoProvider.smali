.class public abstract Landroid/telecom/Connection$VideoProvider;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;,
        Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
    }
.end annotation


# static fields
.field private static final MSG_ADD_VIDEO_CALLBACK:I = 0x1

.field private static final MSG_REMOVE_VIDEO_CALLBACK:I = 0xc

.field private static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field private static final MSG_REQUEST_CONNECTION_DATA_USAGE:I = 0xa

.field private static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field private static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field private static final MSG_SET_CAMERA:I = 0x2

.field private static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field private static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field private static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field private static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field private static final MSG_SET_ZOOM:I = 0x6

.field public static final SESSION_EVENT_CAMERA_FAILURE:I = 0x5

.field private static final SESSION_EVENT_CAMERA_FAILURE_STR:Ljava/lang/String; = "CAMERA_FAIL"

.field public static final SESSION_EVENT_CAMERA_READY:I = 0x6

.field private static final SESSION_EVENT_CAMERA_READY_STR:Ljava/lang/String; = "CAMERA_READY"

.field public static final SESSION_EVENT_RX_PAUSE:I = 0x1

.field private static final SESSION_EVENT_RX_PAUSE_STR:Ljava/lang/String; = "RX_PAUSE"

.field public static final SESSION_EVENT_RX_RESUME:I = 0x2

.field private static final SESSION_EVENT_RX_RESUME_STR:Ljava/lang/String; = "RX_RESUME"

.field public static final SESSION_EVENT_TX_START:I = 0x3

.field private static final SESSION_EVENT_TX_START_STR:Ljava/lang/String; = "TX_START"

.field public static final SESSION_EVENT_TX_STOP:I = 0x4

.field private static final SESSION_EVENT_TX_STOP_STR:Ljava/lang/String; = "TX_STOP"

.field private static final SESSION_EVENT_UNKNOWN_STR:Ljava/lang/String; = "UNKNOWN"

.field public static final SESSION_MODIFY_REQUEST_FAIL:I = 0x2

.field public static final SESSION_MODIFY_REQUEST_INVALID:I = 0x3

.field public static final SESSION_MODIFY_REQUEST_REJECTED_BY_REMOTE:I = 0x5

.field public static final SESSION_MODIFY_REQUEST_SUCCESS:I = 0x1

.field public static final SESSION_MODIFY_REQUEST_TIMED_OUT:I = 0x4


# instance fields
.field private final mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

.field private mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

.field private mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/telecom/IVideoCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 878
    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1027
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    .line 1028
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    .line 1026
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 878
    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1038
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    .line 1039
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    invoke-direct {v0, p0, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    .line 1037
    return-void
.end method

.method public static sessionEventToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "event"    # I

    .prologue
    .line 1387
    packed-switch p0, :pswitch_data_0

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1389
    :pswitch_0
    const-string/jumbo v0, "CAMERA_FAIL"

    return-object v0

    .line 1391
    :pswitch_1
    const-string/jumbo v0, "CAMERA_READY"

    return-object v0

    .line 1393
    :pswitch_2
    const-string/jumbo v0, "RX_PAUSE"

    return-object v0

    .line 1395
    :pswitch_3
    const-string/jumbo v0, "RX_RESUME"

    return-object v0

    .line 1397
    :pswitch_4
    const-string/jumbo v0, "TX_START"

    return-object v0

    .line 1399
    :pswitch_5
    const-string/jumbo v0, "TX_STOP"

    return-object v0

    .line 1387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public changeCallDataUsage(J)V
    .locals 1
    .param p1, "dataUsage"    # J

    .prologue
    .line 1325
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Connection$VideoProvider;->setCallDataUsage(J)V

    .line 1324
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 6
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .prologue
    .line 1343
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    .line 1344
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    .line 1346
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1347
    :catch_0
    move-exception v2

    .line 1348
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "changeCameraCapabilities callback failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1342
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1279
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    .line 1280
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    .line 1282
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1283
    :catch_0
    move-exception v2

    .line 1284
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "changePeerDimensions callback failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1278
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 6
    .param p1, "videoQuality"    # I

    .prologue
    .line 1368
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    .line 1369
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    .line 1371
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeVideoQuality(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1372
    :catch_0
    move-exception v2

    .line 1373
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "changeVideoQuality callback failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1367
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public final getInterface()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    return-object v0
.end method

.method public handleCallSessionEvent(I)V
    .locals 6
    .param p1, "event"    # I

    .prologue
    .line 1254
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    .line 1255
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    .line 1257
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1258
    :catch_0
    move-exception v2

    .line 1259
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "handleCallSessionEvent callback failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1253
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public abstract onRequestCameraCapabilities()V
.end method

.method public abstract onRequestConnectionDataUsage()V
.end method

.method public abstract onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSetCamera(Ljava/lang/String;)V
.end method

.method public abstract onSetDeviceOrientation(I)V
.end method

.method public abstract onSetDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetPauseImage(Landroid/net/Uri;)V
.end method

.method public abstract onSetPreviewSurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetZoom(F)V
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 6
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 1196
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    .line 1197
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    .line 1199
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1200
    :catch_0
    move-exception v2

    .line 1201
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "receiveSessionModifyRequest callback failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1195
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 1227
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    .line 1228
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    .line 1230
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1232
    :catch_0
    move-exception v2

    .line 1233
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "receiveSessionModifyResponse callback failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1226
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public setCallDataUsage(J)V
    .locals 7
    .param p1, "dataUsage"    # J

    .prologue
    .line 1306
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    .line 1307
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    .line 1309
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1310
    :catch_0
    move-exception v2

    .line 1311
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "setCallDataUsage callback failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1305
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method
