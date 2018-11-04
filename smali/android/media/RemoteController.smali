.class public final Landroid/media/RemoteController;
.super Ljava/lang/Object;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteController$EventHandler;,
        Landroid/media/RemoteController$MediaControllerCallback;,
        Landroid/media/RemoteController$MetadataEditor;,
        Landroid/media/RemoteController$OnClientAvrcpUpdateListener;,
        Landroid/media/RemoteController$OnClientUpdateListener;,
        Landroid/media/RemoteController$PlaybackInfo;,
        Landroid/media/RemoteController$TopTransportSessionListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_BITMAP_DIMENSION:I = 0x200

.field private static final MSG_CLIENT_CHANGE:I = 0x0

.field private static final MSG_NEW_MEDIA_METADATA:I = 0x2

.field private static final MSG_NEW_PLAYBACK_STATE:I = 0x1

.field public static final POSITION_SYNCHRONIZATION_CHECK:I = 0x1

.field public static final POSITION_SYNCHRONIZATION_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RemoteController"

.field private static final mInfoLock:Ljava/lang/Object;


# instance fields
.field private mArtworkHeight:I

.field private mArtworkWidth:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSession:Landroid/media/session/MediaController;

.field private mEnabled:Z

.field private final mEventHandler:Landroid/media/RemoteController$EventHandler;

.field private mIsRegistered:Z

.field private mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

.field private final mMaxBitmapDimension:I

.field private mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

.field private mOnClientAvrcpUpdateListener:Landroid/media/RemoteController$OnClientAvrcpUpdateListener;

.field private mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method static synthetic -get0(Landroid/media/RemoteController;)Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/RemoteController;Z)V
    .locals 0
    .param p1, "clearing"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onClientChange(Z)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/media/RemoteController;Ljava/lang/String;)V
    .locals 0
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onFolderInfoBrowsedPlayer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V
    .locals 0
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNewMediaMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V
    .locals 0
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNewPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/media/RemoteController;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/RemoteController;->onNowPlayingContentChange()V

    return-void
.end method

.method static synthetic -wrap5(Landroid/media/RemoteController;[J)V
    .locals 0
    .param p1, "playList"    # [J

    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onNowPlayingEntriesUpdate([J)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/media/RemoteController;Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onSetPlayItemResponse(Z)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/media/RemoteController;Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateListener"    # Landroid/media/RemoteController$OnClientUpdateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateListener"    # Landroid/media/RemoteController$OnClientUpdateListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v2, Landroid/media/RemoteController$MediaControllerCallback;

    invoke-direct {v2, p0, v3}, Landroid/media/RemoteController$MediaControllerCallback;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController$MediaControllerCallback;)V

    iput-object v2, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 76
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    .line 80
    iput v4, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 81
    iput v4, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    .line 82
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/RemoteController;->mEnabled:Z

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid null Context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_0
    if-nez p2, :cond_1

    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid null OnClientUpdateListener"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_1
    if-eqz p3, :cond_2

    .line 116
    new-instance v2, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v2, p0, p0, p3}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    .line 125
    :goto_0
    iput-object p2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 126
    iput-object p1, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    .line 128
    const-string/jumbo v2, "media_session"

    .line 127
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSessionManager;

    iput-object v2, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 129
    const-string/jumbo v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    .line 130
    new-instance v2, Landroid/media/RemoteController$TopTransportSessionListener;

    invoke-direct {v2, p0, v3}, Landroid/media/RemoteController$TopTransportSessionListener;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController$TopTransportSessionListener;)V

    iput-object v2, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 132
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    const/16 v2, 0x200

    iput v2, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    .line 108
    :goto_1
    return-void

    .line 118
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 119
    .local v1, "l":Landroid/os/Looper;
    if-eqz v1, :cond_3

    .line 120
    new-instance v2, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    goto :goto_0

    .line 122
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Calling thread not associated with a looper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    .end local v1    # "l":Landroid/os/Looper;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 136
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;Landroid/media/RemoteController$OnClientAvrcpUpdateListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateListener"    # Landroid/media/RemoteController$OnClientUpdateListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "avrcpUpdateListener"    # Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V

    .line 146
    iput-object p4, p0, Landroid/media/RemoteController;->mOnClientAvrcpUpdateListener:Landroid/media/RemoteController$OnClientAvrcpUpdateListener;

    .line 144
    return-void
.end method

.method private onClientChange(Z)V
    .locals 3
    .param p1, "clearing"    # Z

    .prologue
    .line 703
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 704
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 705
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 707
    if-eqz v0, :cond_0

    .line 708
    invoke-interface {v0, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    .line 701
    :cond_0
    return-void

    .line 703
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private onFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .locals 4
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    .line 803
    const-string/jumbo v2, "RemoteController"

    const-string/jumbo v3, "RemoteController: onFolderInfoBrowsedPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 807
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientAvrcpUpdateListener:Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "l":Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    monitor-exit v2

    .line 811
    if-eqz v1, :cond_0

    .line 812
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/RemoteController$OnClientAvrcpUpdateListener;->onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 806
    .end local v1    # "l":Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 814
    .restart local v1    # "l":Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    :catch_0
    move-exception v0

    .line 815
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RemoteController"

    const-string/jumbo v3, "Error Updating AVRCP on receiving Browsed player response"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onNewMediaMetadata(Landroid/media/MediaMetadata;)V
    .locals 9
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    const/4 v6, 0x0

    .line 780
    if-nez p1, :cond_0

    .line 782
    return-void

    .line 787
    :cond_0
    sget-object v7, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v7

    .line 788
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 789
    .local v1, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    iget-object v8, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v8, :cond_4

    .line 790
    iget-object v8, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v8}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v0, 0x1

    .line 791
    .local v0, "canRate":Z
    :goto_0
    if-eqz v0, :cond_1

    const v6, 0x10000001

    :cond_1
    int-to-long v2, v6

    .line 793
    .local v2, "editableKeys":J
    iget v6, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    iget v8, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    .line 792
    invoke-static {p1, v6, v8}, Landroid/media/session/MediaSessionLegacyHelper;->getOldMetadata(Landroid/media/MediaMetadata;II)Landroid/os/Bundle;

    move-result-object v4

    .line 794
    .local v4, "legacyMetadata":Landroid/os/Bundle;
    new-instance v6, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v6, p0, v4, v2, v3}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V

    iput-object v6, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 795
    iget-object v5, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v5, "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    monitor-exit v7

    .line 797
    if-eqz v1, :cond_2

    .line 798
    invoke-interface {v1, v5}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    .line 779
    :cond_2
    return-void

    .line 790
    .end local v0    # "canRate":Z
    .end local v2    # "editableKeys":J
    .end local v4    # "legacyMetadata":Landroid/os/Bundle;
    .end local v5    # "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "canRate":Z
    goto :goto_0

    .line 789
    .end local v0    # "canRate":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "canRate":Z
    goto :goto_0

    .line 787
    .end local v0    # "canRate":Z
    .end local v1    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private onNewPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 7
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 760
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 761
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v2

    .line 763
    if-eqz v0, :cond_1

    .line 764
    if-nez p1, :cond_2

    const/4 v1, 0x0

    .line 766
    .local v1, "playstate":I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 767
    :cond_0
    invoke-interface {v0, v1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    .line 772
    :goto_1
    if-eqz p1, :cond_1

    .line 774
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/media/session/PlaybackState;->getRccControlFlagsFromActions(J)I

    move-result v2

    .line 773
    invoke-interface {v0, v2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    .line 758
    .end local v1    # "playstate":I
    :cond_1
    return-void

    .line 760
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 765
    .restart local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_2
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    .line 764
    invoke-static {v2}, Landroid/media/session/PlaybackState;->getRccStateFromState(I)I

    move-result v1

    .restart local v1    # "playstate":I
    goto :goto_0

    .line 769
    :cond_3
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v2

    .line 770
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v6

    .line 769
    invoke-interface/range {v0 .. v6}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    goto :goto_1
.end method

.method private onNowPlayingContentChange()V
    .locals 4

    .prologue
    .line 837
    const-string/jumbo v2, "RemoteController"

    const-string/jumbo v3, "RemoteController: onNowPlayingContentChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 841
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientAvrcpUpdateListener:Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "l":Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    monitor-exit v2

    .line 845
    if-eqz v1, :cond_0

    .line 846
    :try_start_1
    invoke-interface {v1}, Landroid/media/RemoteController$OnClientAvrcpUpdateListener;->onClientNowPlayingContentChange()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 840
    .end local v1    # "l":Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 848
    .restart local v1    # "l":Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    :catch_0
    move-exception v0

    .line 849
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RemoteController"

    const-string/jumbo v3, "Error Updating AVRCP on Now Playing Content Change"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onNowPlayingEntriesUpdate([J)V
    .locals 4
    .param p1, "playList"    # [J

    .prologue
    .line 820
    const-string/jumbo v2, "RemoteController"

    const-string/jumbo v3, "RemoteController: onUpdateNowPlayingEntries"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 824
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientAvrcpUpdateListener:Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "l":Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    monitor-exit v2

    .line 828
    if-eqz v1, :cond_0

    .line 829
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/RemoteController$OnClientAvrcpUpdateListener;->onClientUpdateNowPlayingEntries([J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 823
    .end local v1    # "l":Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 831
    .restart local v1    # "l":Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RemoteController"

    const-string/jumbo v3, "Error Updating AVRCP on receiving Now Playing Entries"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onSetPlayItemResponse(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 854
    const-string/jumbo v2, "RemoteController"

    const-string/jumbo v3, "RemoteController: onPlayItemResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 858
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mOnClientAvrcpUpdateListener:Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "l":Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    monitor-exit v2

    .line 862
    if-eqz v1, :cond_0

    .line 863
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/RemoteController$OnClientAvrcpUpdateListener;->onClientPlayItemResponse(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 857
    .end local v1    # "l":Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 865
    .restart local v1    # "l":Landroid/media/RemoteController$OnClientAvrcpUpdateListener;
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RemoteController"

    const-string/jumbo v3, "Error Updating AVRCP on receiving Play Item response"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delayMs"    # I

    .prologue
    .line 689
    if-nez p0, :cond_0

    .line 690
    const-string/jumbo v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "null event handler, will not deliver message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void

    .line 693
    :cond_0
    if-nez p2, :cond_2

    .line 694
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 698
    :cond_1
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 688
    return-void

    .line 695
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    return-void
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .locals 14
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 717
    sget-object v13, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v13

    .line 718
    if-nez p1, :cond_1

    .line 719
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 720
    const-string/jumbo v0, "RemoteController"

    const-string/jumbo v1, "Updating current controller as null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->updateMediaPlayerList(Ljava/lang/String;Z)V

    .line 722
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    iget-object v1, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    .line 724
    iget-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 725
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 724
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v13

    .line 712
    return-void

    .line 727
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    .line 728
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 729
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    .line 728
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    :cond_2
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_3

    .line 731
    const-string/jumbo v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating current controller package as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 732
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 731
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 732
    const-string/jumbo v2, " from "

    .line 731
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 732
    iget-object v2, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 731
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    iget-object v1, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 739
    :goto_1
    iget-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 740
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 739
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 741
    iput-object p1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    .line 742
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    iget-object v1, p0, Landroid/media/RemoteController;->mSessionCb:Landroid/media/session/MediaController$Callback;

    iget-object v2, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 744
    iget-object v0, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->updateMediaPlayerList(Ljava/lang/String;Z)V

    .line 746
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    .line 747
    .local v5, "state":Landroid/media/session/PlaybackState;
    iget-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 748
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 747
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 750
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v11

    .line 751
    .local v11, "metadata":Landroid/media/MediaMetadata;
    iget-object v6, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 752
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 751
    invoke-static/range {v6 .. v12}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 717
    .end local v5    # "state":Landroid/media/session/PlaybackState;
    .end local v11    # "metadata":Landroid/media/MediaMetadata;
    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    .line 735
    :cond_3
    :try_start_2
    const-string/jumbo v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating current controller package as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 736
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 736
    const-string/jumbo v2, " from null"

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public clearArtworkConfiguration()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    move-result v0

    return v0
.end method

.method public editMetadata()Landroid/media/RemoteController$MetadataEditor;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 477
    new-instance v0, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v0, p0}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;)V

    .line 478
    .local v0, "editor":Landroid/media/RemoteController$MetadataEditor;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 479
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 480
    iput-boolean v2, v0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z

    .line 481
    iput-boolean v2, v0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z

    .line 482
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    .line 483
    return-object v0
.end method

.method public getEstimatedMediaPosition()J
    .locals 6

    .prologue
    .line 243
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 244
    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 246
    .local v0, "state":Landroid/media/session/PlaybackState;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    monitor-exit v2

    return-wide v4

    .end local v0    # "state":Landroid/media/session/PlaybackState;
    :cond_0
    monitor-exit v2

    .line 251
    const-wide/16 v2, -0x1

    return-wide v2

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getRemoteControlClientNowPlayingEntries()V
    .locals 2

    .prologue
    .line 349
    const-string/jumbo v0, "RemoteController"

    const-string/jumbo v1, "getRemoteControlClientNowPlayingEntries()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    if-nez v0, :cond_0

    .line 351
    const-string/jumbo v0, "RemoteController"

    const-string/jumbo v1, "Cannot use getRemoteControlClientNowPlayingEntries() from a disabled RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void

    .line 355
    :cond_0
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->getRemoteControlClientNowPlayingEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 360
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRemoteControlClientPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 221
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v2, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit v1

    return-object v0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getUpdateListener()Landroid/media/RemoteController$OnClientUpdateListener;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    return-object v0
.end method

.method public seekTo(J)Z
    .locals 3
    .param p1, "timeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 303
    const-string/jumbo v0, "RemoteController"

    const-string/jumbo v1, "seekTo() in RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    if-nez v0, :cond_0

    .line 305
    const-string/jumbo v0, "RemoteController"

    const-string/jumbo v1, "Cannot use seekTo() from a disabled RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    return v0

    .line 308
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "illegal negative time value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 316
    const/4 v0, 0x1

    return v0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not a media key event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 290
    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setArtworkConfiguration(II)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 420
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    move-result v0

    return v0
.end method

.method public setArtworkConfiguration(ZII)Z
    .locals 3
    .param p1, "wantBitmap"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 393
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    if-eqz p1, :cond_3

    .line 395
    if-lez p2, :cond_2

    if-lez p3, :cond_2

    .line 396
    :try_start_0
    iget v0, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    if-le p2, v0, :cond_0

    iget p2, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    .line 397
    :cond_0
    iget v0, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    if-le p3, v0, :cond_1

    iget p3, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    .line 398
    :cond_1
    iput p2, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 399
    iput p3, p0, Landroid/media/RemoteController;->mArtworkHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 408
    const/4 v0, 0x1

    return v0

    .line 401
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid dimensions"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 404
    :cond_3
    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 405
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/RemoteController;->mArtworkHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .locals 2

    .prologue
    .line 369
    const-string/jumbo v0, "RemoteController"

    const-string/jumbo v1, "setRemoteControlClientBrowsedPlayer()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    if-nez v0, :cond_0

    .line 371
    const-string/jumbo v0, "RemoteController"

    const-string/jumbo v1, "Cannot use setRemoteControlClientBrowsedPlayer() from a disabled RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void

    .line 375
    :cond_0
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->setRemoteControlClientBrowsedPlayer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 380
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "scope"    # I

    .prologue
    .line 328
    const-string/jumbo v0, "RemoteController"

    const-string/jumbo v1, "setRemoteControlClientPlayItem()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-boolean v0, p0, Landroid/media/RemoteController;->mEnabled:Z

    if-nez v0, :cond_0

    .line 330
    const-string/jumbo v0, "RemoteController"

    const-string/jumbo v1, "Cannot use setRemoteControlClientPlayItem() from a disabled RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void

    .line 334
    :cond_0
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Landroid/media/RemoteController;->mCurrentSession:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaController$TransportControls;->setRemoteControlClientPlayItem(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 339
    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setSynchronizationMode(I)Z
    .locals 3
    .param p1, "sync"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 458
    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    .line 459
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown synchronization mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    iget-boolean v0, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    if-nez v0, :cond_1

    .line 462
    const-string/jumbo v0, "RemoteController"

    const-string/jumbo v1, "Cannot set synchronization mode on an unregistered RemoteController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return v2

    .line 466
    :cond_1
    return v1
.end method

.method startListeningToSessions()V
    .locals 5

    .prologue
    .line 653
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    .line 654
    iget-object v3, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 653
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 655
    .local v1, "listenerComponent":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 656
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 657
    new-instance v0, Landroid/os/Handler;

    .end local v0    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 659
    :cond_0
    iget-object v2, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 660
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 659
    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    .line 661
    iget-object v2, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v3, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v3, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    .line 652
    return-void
.end method

.method stopListeningToSessions()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Landroid/media/RemoteController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Landroid/media/RemoteController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 672
    return-void
.end method
