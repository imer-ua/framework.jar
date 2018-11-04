.class public Lmiui/maml/LifecycleResourceManager;
.super Lmiui/maml/ResourceManager;
.source "LifecycleResourceManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LifecycleResourceManager"

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field private static mLastCheckCacheTime:J


# instance fields
.field private mCheckTime:J

.field private mInactiveTime:J


# direct methods
.method public constructor <init>(Lmiui/maml/ResourceLoader;JJ)V
    .locals 0
    .param p1, "resourceLoader"    # Lmiui/maml/ResourceLoader;
    .param p2, "inactiveTime"    # J
    .param p4, "checkTime"    # J

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    .line 21
    iput-wide p2, p0, Lmiui/maml/LifecycleResourceManager;->mInactiveTime:J

    .line 22
    iput-wide p4, p0, Lmiui/maml/LifecycleResourceManager;->mCheckTime:J

    .line 19
    return-void
.end method


# virtual methods
.method public checkCache()V
    .locals 14

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 27
    .local v2, "currentTimeMillis":J
    sget-wide v8, Lmiui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    sub-long v8, v2, v8

    iget-wide v10, p0, Lmiui/maml/LifecycleResourceManager;->mCheckTime:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    const-string/jumbo v8, "LifecycleResourceManager"

    const-string/jumbo v9, "begin check cache... "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v5, "mToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v9

    .line 33
    :try_start_0
    iget-object v8, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v8}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    .local v1, "key":Ljava/lang/String;
    iget-object v8, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v8, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ResourceManager$BitmapInfo;

    .line 35
    .local v0, "bi":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_1

    iget-wide v10, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    sub-long v10, v2, v10

    iget-wide v12, p0, Lmiui/maml/LifecycleResourceManager;->mInactiveTime:J

    cmp-long v8, v10, v12

    if-lez v8, :cond_1

    .line 36
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    .end local v0    # "bi":Lmiui/maml/ResourceManager$BitmapInfo;
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 40
    .restart local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "s$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 41
    .local v6, "s":Ljava/lang/String;
    const-string/jumbo v8, "LifecycleResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "remove cache: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v8, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v8, v6}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v6    # "s":Ljava/lang/String;
    :cond_3
    monitor-exit v9

    .line 45
    sput-wide v2, Lmiui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    .line 25
    return-void
.end method

.method public finish(Z)V
    .locals 0
    .param p1, "keepResource"    # Z

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lmiui/maml/LifecycleResourceManager;->checkCache()V

    .line 58
    :cond_0
    invoke-super {p0, p1}, Lmiui/maml/ResourceManager;->finish(Z)V

    .line 54
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lmiui/maml/LifecycleResourceManager;->checkCache()V

    .line 49
    return-void
.end method
