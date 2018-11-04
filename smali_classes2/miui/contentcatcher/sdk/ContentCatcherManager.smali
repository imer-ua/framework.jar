.class public Lmiui/contentcatcher/sdk/ContentCatcherManager;
.super Ljava/lang/Object;
.source "ContentCatcherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/ContentCatcherManager$1;
    }
.end annotation


# static fields
.field private static final CONTENTCAP_SERVICE_NAME:Ljava/lang/String; = "miui.contentcatcher.ContentCatcherService"

.field private static DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ContentCatcherManager.class"
    .end annotation
.end field


# instance fields
.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private volatile mService:Lmiui/contentcatcher/IContentCatcherService;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/contentcatcher/sdk/ContentCatcherManager;)Lmiui/contentcatcher/IContentCatcherService;
    .locals 1

    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/contentcatcher/sdk/ContentCatcherManager;Lmiui/contentcatcher/IContentCatcherService;)Lmiui/contentcatcher/IContentCatcherService;
    .locals 0

    iput-object p1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lmiui/contentcatcher/sdk/ContentCatcherManager$1;

    invoke-direct {v0, p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager$1;-><init>(Lmiui/contentcatcher/sdk/ContentCatcherManager;)V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 35
    return-void
.end method

.method public static getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 32
    :cond_1
    sget-object v0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->sInstance:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public decorateContent(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/DecorateContentParam;)V
    .locals 5
    .param p1, "listenerToken"    # Lmiui/contentcatcher/sdk/ClientToken;
    .param p2, "targetInjectorToken"    # Lmiui/contentcatcher/sdk/Token;
    .param p3, "params"    # Lmiui/contentcatcher/sdk/DecorateContentParam;

    .prologue
    .line 112
    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decorateContent listenerToken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", targetInjectorToken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    .line 115
    .local v1, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v1, :cond_1

    .line 116
    invoke-interface {v1, p1, p2, p3}, Lmiui/contentcatcher/IContentCatcherService;->decorateContent(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/DecorateContentParam;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_1
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decorateContent error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;
    .locals 4

    .prologue
    .line 163
    iget-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    if-nez v1, :cond_1

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    if-nez v1, :cond_0

    .line 166
    const-string/jumbo v1, "miui.contentcatcher.ContentCatcherService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/contentcatcher/IContentCatcherService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    iput-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    .line 167
    iget-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 169
    :try_start_1
    iget-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    invoke-interface {v1}, Lmiui/contentcatcher/IContentCatcherService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 179
    :cond_1
    iget-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;

    return-object v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 174
    :cond_2
    :try_start_3
    sget-object v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to get ContentCatcherService."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getPageConfig(Lmiui/contentcatcher/sdk/Token;)Lmiui/contentcatcher/sdk/data/PageConfig;
    .locals 6
    .param p1, "token"    # Lmiui/contentcatcher/sdk/Token;

    .prologue
    const/4 v5, 0x0

    .line 39
    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPageInjectorInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    .line 42
    .local v1, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v1, :cond_1

    .line 43
    invoke-interface {v1, p1}, Lmiui/contentcatcher/IContentCatcherService;->getPageConfig(Lmiui/contentcatcher/sdk/Token;)Lmiui/contentcatcher/sdk/data/PageConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 45
    .end local v1    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPageInterested error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v5
.end method

.method public onContentCatched(Lmiui/contentcatcher/sdk/Content;)V
    .locals 5
    .param p1, "content"    # Lmiui/contentcatcher/sdk/Content;

    .prologue
    .line 76
    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onContentCatched: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    .line 79
    .local v1, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v1, :cond_1

    .line 80
    invoke-interface {v1, p1}, Lmiui/contentcatcher/IContentCatcherService;->onContentCatched(Lmiui/contentcatcher/sdk/Content;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_1
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onContentCatched error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerContentInjector(Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;)V
    .locals 5
    .param p1, "token"    # Lmiui/contentcatcher/sdk/Token;
    .param p2, "callback"    # Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;

    .prologue
    .line 52
    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerContentInjector "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    .line 55
    .local v1, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v1, :cond_1

    .line 56
    invoke-interface {v1, p1, p2}, Lmiui/contentcatcher/IContentCatcherService;->registerContentInjector(Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_1
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerContentInjector error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V
    .locals 5
    .param p1, "token"    # Lmiui/contentcatcher/sdk/ClientToken;
    .param p2, "callback"    # Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    .prologue
    .line 88
    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerContentListener"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    .line 91
    .local v1, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v1, :cond_1

    .line 92
    invoke-interface {v1, p1, p2}, Lmiui/contentcatcher/IContentCatcherService;->registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_1
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerContentListener error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterContentInjector(Lmiui/contentcatcher/sdk/Token;)V
    .locals 5
    .param p1, "token"    # Lmiui/contentcatcher/sdk/Token;

    .prologue
    .line 64
    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregisterContentInjector"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    .line 67
    .local v1, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v1, :cond_1

    .line 68
    invoke-interface {v1, p1}, Lmiui/contentcatcher/IContentCatcherService;->unregisterContentInjector(Lmiui/contentcatcher/sdk/Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_1
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterContentInjector error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V
    .locals 5
    .param p1, "token"    # Lmiui/contentcatcher/sdk/ClientToken;

    .prologue
    .line 100
    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregisterContentListener"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    .line 103
    .local v1, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v1, :cond_1

    .line 104
    invoke-interface {v1, p1}, Lmiui/contentcatcher/IContentCatcherService;->unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_1
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterContentListener error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "jobTag"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 138
    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateClientConfig target "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " jobTag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " enable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    .line 141
    .local v1, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v1, :cond_1

    .line 142
    invoke-interface {v1, p1, p2, p3}, Lmiui/contentcatcher/IContentCatcherService;->updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateClientConfig error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateConfig([Ljava/lang/String;)Z
    .locals 5
    .param p1, "configs"    # [Ljava/lang/String;

    .prologue
    .line 125
    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    .line 128
    .local v1, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v1, :cond_1

    .line 129
    invoke-interface {v1, p1}, Lmiui/contentcatcher/IContentCatcherService;->updateConfig([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateConfig error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "jobTag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 151
    sget-boolean v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateJobValidity jobTag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " enable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getContentCatcherService()Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v1

    .line 154
    .local v1, "service":Lmiui/contentcatcher/IContentCatcherService;
    if-eqz v1, :cond_1

    .line 155
    invoke-interface {v1, p1, p2, p3}, Lmiui/contentcatcher/IContentCatcherService;->updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "service":Lmiui/contentcatcher/IContentCatcherService;
    :cond_1
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateJobValidity error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
