.class public Lmiui/maml/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ResourceManager$AsyncLoadListener;,
        Lmiui/maml/ResourceManager$BitmapInfo;,
        Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;
    }
.end annotation


# static fields
.field private static final DEF_CACHE_SIZE:I = 0x10000000

.field private static final DENSITY_HIGH_R:I = 0xf0

.field private static final DENSITY_XHIGH_R:I = 0x168

.field private static final DENSITY_XXHIGH_R:I = 0x21c

.field private static final DENSITY_XXXHIGH:I = 0x280

.field private static final DENSITY_XXXHIGH_R:I = 0x2d0

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceManager"


# instance fields
.field protected final mBitmapsCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/ResourceManager$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultResourceDensity:I

.field private mExtraResourceDensity:I

.field private mExtraResourceFolder:Ljava/lang/String;

.field private final mLoadingBitmaps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceLoader:Lmiui/maml/ResourceLoader;

.field private mTargetDensity:I

.field protected final mWeakRefBitmapsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/ResourceManager$BitmapInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lmiui/maml/ResourceManager;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -wrap0(Lmiui/maml/ResourceManager;Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lmiui/maml/ResourceLoader;)V
    .locals 2
    .param p1, "resourceLoader"    # Lmiui/maml/ResourceLoader;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    .line 102
    iput-object p1, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    .line 103
    new-instance v0, Lmiui/maml/ResourceManager$1;

    const/high16 v1, 0x10000000

    invoke-direct {v0, p0, v1}, Lmiui/maml/ResourceManager$1;-><init>(Lmiui/maml/ResourceManager;I)V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    .line 101
    return-void
.end method

.method private getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 5
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v3

    .line 292
    :try_start_0
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    check-cast v1, Lmiui/maml/ResourceManager$BitmapInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    monitor-exit v3

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "bi":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/maml/ResourceManager$BitmapInfo;>;"
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 296
    :try_start_1
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bi":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/maml/ResourceManager$BitmapInfo;>;"
    check-cast v0, Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v0, "bi":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/maml/ResourceManager$BitmapInfo;>;"
    monitor-exit v3

    .line 299
    if-eqz v1, :cond_2

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 301
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 302
    :cond_0
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 304
    :try_start_2
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit v3

    .line 327
    :cond_1
    :goto_1
    return-object v1

    .line 291
    .end local v0    # "bi":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/maml/ResourceManager$BitmapInfo;>;"
    .end local v1    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 295
    .restart local v1    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 302
    .restart local v0    # "bi":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/maml/ResourceManager$BitmapInfo;>;"
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 309
    :cond_2
    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    check-cast v1, Lmiui/maml/ResourceManager$BitmapInfo;

    .line 311
    .restart local v1    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v1, :cond_3

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 315
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v3

    .line 316
    :try_start_3
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v3

    goto :goto_1

    .line 315
    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2

    .line 320
    :cond_3
    iget-object v3, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 321
    :try_start_4
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    .line 320
    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private loadBitmap(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 7
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    const/4 v3, 0x1

    .line 249
    .local v3, "useDefaultResource":Z
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 250
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 251
    iget v4, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 253
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 254
    const-string/jumbo v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "try to load resource from extra resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 256
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, p1

    .line 257
    .local v2, "path":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v4, v2, v1}, Lmiui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 258
    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_0

    .line 259
    const/4 v3, 0x0

    .line 263
    .end local v0    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 264
    iget v4, p0, Lmiui/maml/ResourceManager;->mDefaultResourceDensity:I

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 265
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v4, p1, v1}, Lmiui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 268
    :cond_1
    if-eqz v0, :cond_4

    .line 269
    if-nez v3, :cond_2

    .line 270
    const-string/jumbo v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "load image from extra resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_2
    iput-object p1, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    .line 274
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    iput-object v4, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mWeakRefCache:Ljava/util/HashMap;

    .line 275
    iget-object v4, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 277
    iget-object v5, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v5

    .line 278
    :try_start_0
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v4, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 280
    iget-object v5, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 281
    :try_start_1
    iget-object v4, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 286
    :goto_1
    return-object v0

    .line 256
    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "path":Ljava/lang/String;
    goto/16 :goto_0

    .line 277
    .end local v0    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    .end local v2    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 280
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 284
    :cond_4
    const-string/jumbo v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fail to load image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static retranslateDensity(I)I
    .locals 5
    .param p0, "density"    # I

    .prologue
    const/16 v4, 0x21c

    const/16 v1, 0x168

    const-wide v2, 0x3fec71c71c71c71cL    # 0.8888888888888888

    .line 372
    const/16 v0, 0xf0

    if-le p0, v0, :cond_0

    if-gt p0, v1, :cond_0

    .line 375
    add-int/lit16 v0, p0, -0xf0

    int-to-double v0, v0

    .line 373
    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    .line 375
    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0xf0

    return v0

    .line 376
    :cond_0
    if-le p0, v1, :cond_1

    if-gt p0, v4, :cond_1

    .line 379
    add-int/lit16 v0, p0, -0x168

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x140

    return v0

    .line 380
    :cond_1
    if-le p0, v4, :cond_2

    const/16 v0, 0x2d0

    if-gt p0, v0, :cond_2

    .line 383
    add-int/lit16 v0, p0, -0x21c

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x1e0

    return v0

    .line 385
    :cond_2
    return p0
.end method

.method public static translateDensity(I)I
    .locals 5
    .param p0, "density"    # I

    .prologue
    const/16 v4, 0x1e0

    const/16 v1, 0x140

    const-wide/high16 v2, 0x3ff2000000000000L    # 1.125

    .line 353
    const/16 v0, 0xf0

    if-le p0, v0, :cond_0

    if-gt p0, v1, :cond_0

    .line 356
    add-int/lit16 v0, p0, -0xf0

    int-to-double v0, v0

    .line 354
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 356
    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0xf0

    return v0

    .line 357
    :cond_0
    if-le p0, v1, :cond_1

    if-gt p0, v4, :cond_1

    .line 360
    add-int/lit16 v0, p0, -0x140

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x168

    return v0

    .line 361
    :cond_1
    if-le p0, v4, :cond_2

    const/16 v0, 0x280

    if-gt p0, v0, :cond_2

    .line 364
    add-int/lit16 v0, p0, -0x1e0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x21c

    return v0

    .line 366
    :cond_2
    return p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 162
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 160
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmapName"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 167
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public finish(Z)V
    .locals 2
    .param p1, "keepResource"    # Z

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 400
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 403
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 404
    :try_start_1
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mWeakRefBitmapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 407
    :cond_0
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    monitor-enter v1

    .line 408
    :try_start_2
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v1

    .line 411
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->finish()V

    .line 398
    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 403
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 407
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, p1}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 121
    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-object v1
.end method

.method public getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    return-object v2

    .line 179
    :cond_0
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 180
    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_1

    .line 181
    return-object v0

    .line 183
    :cond_1
    const-string/jumbo v1, "ResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v1

    return-object v1
.end method

.method public getBitmapInfoAsync(Ljava/lang/String;Lmiui/maml/ResourceManager$AsyncLoadListener;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 6
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "l"    # Lmiui/maml/ResourceManager$AsyncLoadListener;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    return-object v2

    .line 197
    :cond_0
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 198
    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_1

    .line 199
    return-object v0

    .line 202
    :cond_1
    iget-object v2, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    monitor-enter v2

    .line 203
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 204
    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 205
    if-eqz v0, :cond_2

    monitor-exit v2

    .line 206
    return-object v0

    .line 207
    :cond_2
    :try_start_1
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mLoadingBitmaps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    const-string/jumbo v1, "ResourceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "load image async: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v1, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;

    invoke-direct {v1, p0, p2}, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;-><init>(Lmiui/maml/ResourceManager;Lmiui/maml/ResourceManager$AsyncLoadListener;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v2

    .line 213
    new-instance v0, Lmiui/maml/ResourceManager$BitmapInfo;

    .end local v0    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    invoke-direct {v0}, Lmiui/maml/ResourceManager$BitmapInfo;-><init>()V

    .line 214
    .restart local v0    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    iput-boolean v5, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mLoading:Z

    .line 215
    return-object v0

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getConfigRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->getConfigRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-virtual {p0, p2}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v7

    .line 126
    .local v7, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v7, :cond_0

    iget-object v1, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 127
    :cond_0
    return-object v3

    .line 129
    :cond_1
    iget-object v2, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 130
    .local v2, "bm":Landroid/graphics/Bitmap;
    iget-object v1, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v1, :cond_2

    .line 134
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    iget-object v4, v7, Lmiui/maml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 136
    .local v0, "ninePatchDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    iget v1, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    .line 137
    return-object v0

    .line 140
    .end local v0    # "ninePatchDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    :cond_2
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 141
    .local v6, "d":Landroid/graphics/drawable/BitmapDrawable;
    iget v1, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 142
    return-object v6
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .prologue
    .line 423
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0, p1}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 147
    .local v0, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    :cond_0
    return-object v1
.end method

.method public getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 427
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0}, Lmiui/maml/ResourceLoader;->init()V

    .line 394
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public final resourceExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method public setCacheSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 431
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-object v0, p0, Lmiui/maml/ResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->resize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 430
    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDefaultResourceDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .prologue
    .line 331
    iput p1, p0, Lmiui/maml/ResourceManager;->mDefaultResourceDensity:I

    .line 330
    return-void
.end method

.method public setExtraResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resDir"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setExtraResource(Ljava/lang/String;I)V
    .locals 0
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "den"    # I

    .prologue
    .line 339
    iput-object p1, p0, Lmiui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 340
    iput p2, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    .line 338
    return-void
.end method

.method public setExtraResourceDensity(I)V
    .locals 0
    .param p1, "den"    # I

    .prologue
    .line 348
    iput p1, p0, Lmiui/maml/ResourceManager;->mExtraResourceDensity:I

    .line 347
    return-void
.end method

.method public setLocal(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    return-void

    .line 440
    :cond_0
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v1}, Lmiui/maml/ResourceLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 441
    .local v0, "oldLocale":Ljava/util/Locale;
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    iget-object v1, p0, Lmiui/maml/ResourceManager;->mResourceLoader:Lmiui/maml/ResourceLoader;

    invoke-virtual {v1, p1}, Lmiui/maml/ResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    .line 443
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/maml/ResourceManager;->finish(Z)V

    .line 436
    :cond_1
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .prologue
    .line 335
    iput p1, p0, Lmiui/maml/ResourceManager;->mTargetDensity:I

    .line 334
    return-void
.end method
