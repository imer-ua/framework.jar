.class public Lmiui/maml/elements/MusicListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "MusicListenerService.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicListenerService$RCBinder;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.service.notification.MusicListenerService"

.field private static final BITMAP_HEIGHT:I = 0x400

.field private static final BITMAP_WIDTH:I = 0x400

.field private static final LOG_TAG:Ljava/lang/String; = "MusicListenerService"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mClientUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/RemoteController$OnClientUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRemoteController:Landroid/media/RemoteController;

.field private mRemoteControllerEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 28
    new-instance v0, Lmiui/maml/elements/MusicListenerService$RCBinder;

    invoke-direct {v0, p0}, Lmiui/maml/elements/MusicListenerService$RCBinder;-><init>(Lmiui/maml/elements/MusicListenerService;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mBinder:Landroid/os/IBinder;

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 36
    iput-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 18
    return-void
.end method

.method private disableRemoteController()V
    .locals 3

    .prologue
    .line 91
    iget-boolean v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 93
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    .line 90
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private enableRemoteController()V
    .locals 5

    .prologue
    const/16 v4, 0x400

    .line 73
    iget-boolean v2, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    if-nez v2, :cond_0

    .line 74
    iget-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 75
    .local v0, "am":Landroid/media/AudioManager;
    new-instance v2, Landroid/media/RemoteController;

    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 77
    :try_start_0
    iget-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    iget-boolean v2, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v2, v4, v4}, Landroid/media/RemoteController;->setArtworkConfiguration(II)Z

    .line 83
    iget-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/RemoteController;->setSynchronizationMode(I)Z

    .line 72
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    :goto_1
    return-void

    .line 78
    .restart local v0    # "am":Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MusicListenerService"

    const-string/jumbo v3, "fail to register RemoteController!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 85
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v2, "MusicListenerService"

    const-string/jumbo v3, "fail to register RemoteController!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getRemoteController()Landroid/media/RemoteController;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.service.notification.MusicListenerService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string/jumbo v0, "MusicListenerService"

    const-string/jumbo v1, "onBind: success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mBinder:Landroid/os/IBinder;

    return-object v0

    .line 45
    :cond_0
    const-string/jumbo v0, "MusicListenerService"

    const-string/jumbo v1, "onBind: fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClientChange(Z)V
    .locals 4
    .param p1, "arg0"    # Z

    .prologue
    .line 129
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "updateListenerWeakReference$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 130
    .local v1, "updateListenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/RemoteController$OnClientUpdateListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 131
    .local v0, "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v0    # "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    .end local v1    # "updateListenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/RemoteController$OnClientUpdateListener;>;"
    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 128
    :cond_2
    return-void
.end method

.method public onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .locals 0
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    .line 202
    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 4
    .param p1, "arg0"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 144
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "updateListenerWeakReference$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 145
    .local v1, "updateListenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/RemoteController$OnClientUpdateListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 146
    .local v0, "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v0    # "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    .end local v1    # "updateListenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/RemoteController$OnClientUpdateListener;>;"
    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 143
    :cond_2
    return-void
.end method

.method public onClientNowPlayingContentChange()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public onClientPlayItemResponse(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 211
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    .line 159
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "updateListenerWeakReference$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 160
    .local v1, "updateListenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/RemoteController$OnClientUpdateListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 161
    .local v0, "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v0    # "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    .end local v1    # "updateListenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/RemoteController$OnClientUpdateListener;>;"
    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 158
    :cond_2
    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .locals 10
    .param p1, "arg0"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # J
    .param p6, "arg3"    # F

    .prologue
    .line 174
    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "updateListenerWeakReference$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 175
    .local v7, "updateListenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/RemoteController$OnClientUpdateListener;>;"
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 176
    .local v0, "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    .line 177
    invoke-interface/range {v0 .. v6}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .end local v0    # "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    .end local v7    # "updateListenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/RemoteController$OnClientUpdateListener;>;"
    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 173
    :cond_2
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    .line 189
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "updateListenerWeakReference$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 190
    .local v1, "updateListenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/RemoteController$OnClientUpdateListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 191
    .local v0, "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    .end local v0    # "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    .end local v1    # "updateListenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/RemoteController$OnClientUpdateListener;>;"
    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 188
    :cond_2
    return-void
.end method

.method public onClientUpdateNowPlayingEntries([J)V
    .locals 0
    .param p1, "playList"    # [J

    .prologue
    .line 205
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/media/RemoteController;

    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 57
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 69
    const-string/jumbo v0, "MusicListenerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotificationPosted: pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 62
    return-void
.end method

.method public registerClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/RemoteController$OnClientUpdateListener;

    .prologue
    .line 99
    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->enableRemoteController()V

    .line 100
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "updateListenerWeakReference$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 101
    .local v1, "updateListenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/RemoteController$OnClientUpdateListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 102
    .local v0, "temp":Landroid/media/RemoteController$OnClientUpdateListener;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    return-void

    .line 106
    .end local v0    # "temp":Landroid/media/RemoteController$OnClientUpdateListener;
    .end local v1    # "updateListenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/RemoteController$OnClientUpdateListener;>;"
    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public unregisterClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/RemoteController$OnClientUpdateListener;

    .prologue
    .line 110
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "updateListenerWeakReference$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 111
    .local v1, "updateListenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/RemoteController$OnClientUpdateListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 112
    .local v0, "temp":Landroid/media/RemoteController$OnClientUpdateListener;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v0    # "temp":Landroid/media/RemoteController$OnClientUpdateListener;
    .end local v1    # "updateListenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/RemoteController$OnClientUpdateListener;>;"
    :cond_2
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 109
    :cond_3
    return-void
.end method
