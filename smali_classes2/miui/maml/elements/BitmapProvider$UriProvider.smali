.class Lmiui/maml/elements/BitmapProvider$UriProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Uri"


# instance fields
.field private mCachedBitmapUri:Ljava/lang/String;

.field private mCurLoadingBitmapUri:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 341
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    .line 334
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 400
    invoke-super {p0}, Lmiui/maml/elements/BitmapProvider;->finish()V

    .line 401
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 399
    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 380
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v1

    .line 383
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 384
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 395
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v1

    .line 385
    :cond_2
    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 386
    :try_start_0
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 387
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 388
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    .line 389
    new-instance v1, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;

    invoke-direct {v1, p0, p1, p3, p4}, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;-><init>(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;II)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
