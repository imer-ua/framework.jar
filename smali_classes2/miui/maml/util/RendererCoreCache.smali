.class public Lmiui/maml/util/RendererCoreCache;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"

# interfaces
.implements Lmiui/maml/RendererCore$OnReleaseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;,
        Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;,
        Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererCoreCache"

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60


# instance fields
.field private mCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lmiui/maml/util/RendererCoreCache;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/util/RendererCoreCache;->checkCache(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    .line 60
    iput-object p1, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method private declared-synchronized checkCache(Ljava/lang/Object;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 145
    :try_start_0
    const-string/jumbo v1, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkCache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .line 148
    .local v0, "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-nez v0, :cond_0

    .line 149
    const-string/jumbo v1, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkCache: the key does not exist, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 150
    return-void

    .line 153
    :cond_0
    :try_start_1
    iget-wide v4, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    monitor-exit p0

    .line 154
    return-void

    .line 156
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    sub-long v2, v4, v6

    .line 157
    .local v2, "t":J
    iget-wide v4, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 158
    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v1, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkCache removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    .line 144
    return-void

    .line 161
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 162
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 163
    const-wide/16 v2, 0x0

    .line 165
    :cond_3
    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    iget-wide v6, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    sub-long/2addr v6, v2

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    const-string/jumbo v1, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkCache resheduled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .end local v2    # "t":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Ljava/lang/String;Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cacheTime"    # J
    .param p5, "loader"    # Lmiui/maml/ResourceLoader;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "callback"    # Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

    .prologue
    const/4 v6, 0x0

    .line 88
    invoke-virtual {p0, p1, p3, p4}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v1

    .line 89
    .local v1, "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v1, :cond_0

    .line 90
    return-object v1

    .line 93
    :cond_0
    const/4 v2, 0x0

    .line 94
    .local v2, "root":Lmiui/maml/ScreenElementRoot;
    if-eqz p5, :cond_1

    .line 95
    new-instance v3, Lmiui/maml/ScreenElementRootFactory$Parameter;

    invoke-direct {v3, p2, p5}, Lmiui/maml/ScreenElementRootFactory$Parameter;-><init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;)V

    invoke-static {v3}, Lmiui/maml/ScreenElementRootFactory;->create(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    .line 99
    .local v2, "root":Lmiui/maml/ScreenElementRoot;
    :goto_0
    if-nez v2, :cond_2

    .line 100
    const-string/jumbo v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fail to get RendererCoreInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-object v6

    .line 97
    .local v2, "root":Lmiui/maml/ScreenElementRoot;
    :cond_1
    new-instance v3, Lmiui/maml/ScreenElementRootFactory$Parameter;

    invoke-direct {v3, p2, p6}, Lmiui/maml/ScreenElementRootFactory$Parameter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3}, Lmiui/maml/ScreenElementRootFactory;->create(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    .local v2, "root":Lmiui/maml/ScreenElementRoot;
    goto :goto_0

    .line 103
    :cond_2
    if-eqz p7, :cond_3

    .line 104
    invoke-interface {p7, v2}, Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;->onCreateRoot(Lmiui/maml/ScreenElementRoot;)V

    .line 106
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenElementRoot;->setDefaultFramerate(F)V

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "r":Lmiui/maml/RendererCore;
    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->load()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 110
    new-instance v0, Lmiui/maml/RendererCore;

    .end local v0    # "r":Lmiui/maml/RendererCore;
    const/4 v3, 0x1

    invoke-static {v3}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lmiui/maml/RendererCore;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    .line 113
    :cond_4
    new-instance v1, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .end local v1    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    invoke-direct {v1, v0}, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;-><init>(Lmiui/maml/RendererCore;)V

    .line 114
    .restart local v1    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v1, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 115
    iput-wide p3, v1, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    .line 116
    if-eqz v0, :cond_5

    .line 117
    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->setOnReleaseListener(Lmiui/maml/RendererCore$OnReleaseListener;)V

    .line 118
    new-instance v3, Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-direct {v3, p0, p1}, Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;-><init>(Lmiui/maml/util/RendererCoreCache;Ljava/lang/Object;)V

    iput-object v3, v1, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    .line 120
    :cond_5
    iget-object v3, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-object v1
.end method


# virtual methods
.method public declared-synchronized OnRendererCoreReleased(Lmiui/maml/RendererCore;)Z
    .locals 8
    .param p1, "rc"    # Lmiui/maml/RendererCore;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 172
    :try_start_0
    const-string/jumbo v4, "RendererCoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OnRendererCoreReleased: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v4, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "key":Ljava/lang/Object;
    iget-object v4, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .line 175
    .local v2, "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    iget-object v4, v2, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    if-ne v4, p1, :cond_0

    .line 176
    invoke-virtual {p0, v0}, Lmiui/maml/util/RendererCoreCache;->release(Ljava/lang/Object;)V

    .line 177
    iget-wide v4, v2, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    monitor-exit p0

    return v3

    .end local v0    # "key":Ljava/lang/Object;
    .end local v2    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :cond_2
    monitor-exit p0

    .line 180
    return v3

    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 140
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;J)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "cacheTime"    # J

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .line 66
    .local v0, "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v0, :cond_0

    .line 68
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 69
    iput-wide p2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    .line 70
    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 71
    return-object v0

    :cond_0
    monitor-exit p0

    .line 73
    return-object v2

    .end local v0    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLjava/lang/String;Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cacheTime"    # J
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "callback"    # Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

    .prologue
    monitor-enter p0

    .line 78
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    move-object v8, p6

    :try_start_0
    invoke-direct/range {v1 .. v8}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Ljava/lang/String;Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cacheTime"    # J
    .param p5, "loader"    # Lmiui/maml/ResourceLoader;
    .param p6, "callback"    # Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

    .prologue
    monitor-enter p0

    .line 83
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    :try_start_0
    invoke-direct/range {v1 .. v8}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Ljava/lang/String;Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Ljava/lang/Object;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 125
    :try_start_0
    const-string/jumbo v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .line 127
    .local v0, "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 129
    iget-wide v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 124
    return-void

    .line 133
    :cond_1
    :try_start_1
    const-string/jumbo v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduled release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    iget-wide v4, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
