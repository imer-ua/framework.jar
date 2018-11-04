.class Lmiui/maml/elements/MusicController$ServiceConnectionImpl;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceConnectionImpl"
.end annotation


# instance fields
.field private mMusicControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/elements/MusicController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/elements/MusicController;)V
    .locals 1
    .param p1, "controller"    # Lmiui/maml/elements/MusicController;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicController$ServiceConnectionImpl;->mMusicControllerRef:Ljava/lang/ref/WeakReference;

    .line 126
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 132
    instance-of v2, p2, Lmiui/maml/elements/MusicListenerService$RCBinder;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lmiui/maml/elements/MusicController$ServiceConnectionImpl;->mMusicControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicController;

    .line 134
    .local v1, "musicController":Lmiui/maml/elements/MusicController;
    if-eqz v1, :cond_0

    move-object v0, p2

    .line 135
    nop

    nop

    .line 136
    .local v0, "binder":Lmiui/maml/elements/MusicListenerService$RCBinder;
    invoke-virtual {v0}, Lmiui/maml/elements/MusicListenerService$RCBinder;->getService()Lmiui/maml/elements/MusicListenerService;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/elements/MusicController;->-set0(Lmiui/maml/elements/MusicController;Lmiui/maml/elements/MusicListenerService;)Lmiui/maml/elements/MusicListenerService;

    .line 137
    invoke-static {v1}, Lmiui/maml/elements/MusicController;->-get1(Lmiui/maml/elements/MusicController;)Lmiui/maml/elements/MusicListenerService;

    move-result-object v2

    invoke-static {v1}, Lmiui/maml/elements/MusicController;->-get0(Lmiui/maml/elements/MusicController;)Landroid/media/RemoteController$OnClientUpdateListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/elements/MusicListenerService;->registerClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V

    .line 131
    .end local v0    # "binder":Lmiui/maml/elements/MusicListenerService$RCBinder;
    .end local v1    # "musicController":Lmiui/maml/elements/MusicController;
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v1, p0, Lmiui/maml/elements/MusicController$ServiceConnectionImpl;->mMusicControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/MusicController;

    .line 145
    .local v0, "musicController":Lmiui/maml/elements/MusicController;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lmiui/maml/elements/MusicController;->-get1(Lmiui/maml/elements/MusicController;)Lmiui/maml/elements/MusicListenerService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    invoke-static {v0}, Lmiui/maml/elements/MusicController;->-get1(Lmiui/maml/elements/MusicController;)Lmiui/maml/elements/MusicListenerService;

    move-result-object v1

    invoke-static {v0}, Lmiui/maml/elements/MusicController;->-get0(Lmiui/maml/elements/MusicController;)Landroid/media/RemoteController$OnClientUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/elements/MusicListenerService;->unregisterClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V

    .line 147
    invoke-static {v0, v3}, Lmiui/maml/elements/MusicController;->-set0(Lmiui/maml/elements/MusicController;Lmiui/maml/elements/MusicListenerService;)Lmiui/maml/elements/MusicListenerService;

    .line 143
    :cond_0
    return-void
.end method
