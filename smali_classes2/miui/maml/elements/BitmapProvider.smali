.class public abstract Lmiui/maml/elements/BitmapProvider;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/BitmapProvider$AppIconProvider;,
        Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;,
        Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;,
        Lmiui/maml/elements/BitmapProvider$FileSystemProvider;,
        Lmiui/maml/elements/BitmapProvider$IBitmapHolder;,
        Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;,
        Lmiui/maml/elements/BitmapProvider$UriProvider;,
        Lmiui/maml/elements/BitmapProvider$VersionedBitmap;,
        Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BitmapProvider"


# instance fields
.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field protected mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 110
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 109
    return-void
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 8
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "maxNumOfPixels"    # I

    .prologue
    .line 495
    const/4 v0, 0x1

    .line 496
    .local v0, "finalSize":I
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v1

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v6, v1

    mul-double/2addr v4, v6

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 497
    .local v2, "size":D
    :goto_0
    mul-int/lit8 v1, v0, 0x2

    int-to-double v4, v1

    cmpg-double v1, v4, v2

    if-gtz v1, :cond_0

    .line 498
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 500
    :cond_0
    return v0
.end method

.method public static create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;
    .locals 4
    .param p0, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string/jumbo v2, "ResourceImage"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    new-instance v2, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 84
    :cond_0
    const-string/jumbo v2, "VirtualScreen"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    new-instance v2, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 86
    :cond_1
    const-string/jumbo v2, "ApplicationIcon"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    new-instance v2, Lmiui/maml/elements/BitmapProvider$AppIconProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$AppIconProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 88
    :cond_2
    const-string/jumbo v2, "FileSystem"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    new-instance v2, Lmiui/maml/elements/BitmapProvider$FileSystemProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$FileSystemProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 90
    :cond_3
    const-string/jumbo v2, "Uri"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    new-instance v2, Lmiui/maml/elements/BitmapProvider$UriProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$UriProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 92
    :cond_4
    const-string/jumbo v2, "BitmapHolder"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    new-instance v2, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 94
    :cond_5
    const-string/jumbo v2, "BitmapVar"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 95
    new-instance v2, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    .line 98
    :cond_6
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    .line 99
    const-string/jumbo v3, "BitmapProvider"

    .line 98
    invoke-virtual {v2, v3}, Lmiui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lmiui/maml/ObjectFactory;

    move-result-object v0

    check-cast v0, Lmiui/maml/ObjectFactory$BitmapProviderFactory;

    .line 100
    .local v0, "f":Lmiui/maml/ObjectFactory$BitmapProviderFactory;
    if-eqz v0, :cond_7

    .line 101
    invoke-virtual {v0, p0, p1}, Lmiui/maml/ObjectFactory$BitmapProviderFactory;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v1

    .line 102
    .local v1, "provider":Lmiui/maml/elements/BitmapProvider;
    if-eqz v1, :cond_7

    .line 103
    return-object v1

    .line 106
    .end local v1    # "provider":Lmiui/maml/elements/BitmapProvider;
    :cond_7
    new-instance v2, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 120
    return-void
.end method

.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v0
.end method

.method protected getBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v7, 0x0

    .line 468
    const/4 v1, 0x0

    .line 469
    .local v1, "in1":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 470
    .local v2, "in2":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 472
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    iget-object v5, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 473
    .local v1, "in1":Ljava/io/InputStream;
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 474
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 476
    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 477
    mul-int v5, p2, p3

    invoke-static {v4, v5}, Lmiui/maml/elements/BitmapProvider;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 478
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 479
    iput p3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 480
    iput p2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 481
    iget-object v5, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 482
    .local v2, "in2":Ljava/io/InputStream;
    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 489
    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 490
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 482
    return-object v5

    .line 484
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v2, "in2":Ljava/io/InputStream;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    const/4 v5, 0x0

    :try_start_2
    invoke-static {v1, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 489
    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 490
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 484
    return-object v5

    .line 485
    .end local v1    # "in1":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 486
    .end local v2    # "in2":Ljava/io/InputStream;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_3
    const-string/jumbo v5, "BitmapProvider"

    const-string/jumbo v6, "getBitmapFromUri Exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 489
    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 490
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 487
    return-object v7

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 489
    :goto_1
    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 490
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 488
    throw v5

    .restart local v1    # "in1":Ljava/io/InputStream;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_1

    .line 485
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-virtual {p0}, Lmiui/maml/elements/BitmapProvider;->reset()V

    .line 113
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
