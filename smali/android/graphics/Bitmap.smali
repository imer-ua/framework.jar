.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$1;,
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;
    }
.end annotation


# static fields
.field private static final synthetic -android-graphics-Bitmap$ConfigSwitchesValues:[I = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_NONE:I = 0x0

.field private static final NATIVE_ALLOCATION_SIZE:J = 0x20L

.field private static final TAG:Ljava/lang/String; = "Bitmap"

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static volatile sDefaultDensity:I

.field private static volatile sScaleMatrix:Landroid/graphics/Matrix;


# instance fields
.field public mBuffer:[B

.field mDensity:I

.field private mHeight:I

.field private final mIsMutable:Z

.field private final mNativePtr:J

.field private mNinePatchChunk:[B

.field private mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

.field public mRecycled:Z

.field private mRequestPremultiplied:Z

.field private mWidth:I


# direct methods
.method private static synthetic -getandroid-graphics-Bitmap$ConfigSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/graphics/Bitmap;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/graphics/Bitmap;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 1567
    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    .line 1566
    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method constructor <init>(J[BIIIZZ[BLandroid/graphics/NinePatch$InsetStruct;)V
    .locals 11
    .param p1, "nativeBitmap"    # J
    .param p3, "buffer"    # [B
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "density"    # I
    .param p7, "isMutable"    # Z
    .param p8, "requestPremultiplied"    # Z
    .param p9, "ninePatchChunk"    # [B
    .param p10, "ninePatchInsets"    # Landroid/graphics/NinePatch$InsetStruct;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v3

    iput v3, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 123
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 124
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "internal error: native bitmap is 0"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_0
    iput p4, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 128
    move/from16 v0, p5

    iput v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 129
    move/from16 v0, p7

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    .line 130
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 131
    iput-object p3, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 133
    move-object/from16 v0, p9

    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 134
    move-object/from16 v0, p10

    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    .line 135
    if-ltz p6, :cond_1

    .line 136
    move/from16 v0, p6

    iput v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 139
    :cond_1
    iput-wide p1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    .line 141
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lmiui/util/DumpBitmapInfoUtils;->putBitmap(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 142
    const-wide/16 v6, 0x20

    .line 143
    .local v6, "nativeSize":J
    if-nez p3, :cond_2

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    int-to-long v4, v3

    .line 142
    const-wide/16 v8, 0x20

    .line 144
    add-long v6, v8, v4

    .line 146
    :cond_2
    new-instance v2, Llibcore/util/NativeAllocationRegistry;

    .line 147
    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {}, Landroid/graphics/Bitmap;->nativeGetNativeFinalizer()J

    move-result-wide v4

    .line 146
    invoke-direct/range {v2 .. v7}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    .line 148
    .local v2, "registry":Llibcore/util/NativeAllocationRegistry;
    invoke-virtual {v2, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 122
    return-void
.end method

.method private checkPixelAccess(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1457
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 1458
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1459
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1461
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 1462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1456
    :cond_1
    return-void
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "offset"    # I
    .param p6, "stride"    # I
    .param p7, "pixels"    # [I

    .prologue
    .line 1480
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 1481
    if-gez p3, :cond_0

    .line 1482
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1484
    :cond_0
    if-gez p4, :cond_1

    .line 1485
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1487
    :cond_1
    add-int v2, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1488
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1489
    const-string/jumbo v3, "x + width must be <= bitmap.width()"

    .line 1488
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1491
    :cond_2
    add-int v2, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 1492
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1493
    const-string/jumbo v3, "y + height must be <= bitmap.height()"

    .line 1492
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1495
    :cond_3
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p3, :cond_4

    .line 1496
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1498
    :cond_4
    add-int/lit8 v2, p4, -0x1

    mul-int/2addr v2, p6

    add-int v0, p5, v2

    .line 1499
    .local v0, "lastScanline":I
    array-length v1, p7

    .line 1500
    .local v1, "length":I
    if-ltz p5, :cond_5

    add-int v2, p5, p3

    if-le v2, v1, :cond_6

    .line 1503
    :cond_5
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1501
    :cond_6
    if-ltz v0, :cond_5

    .line 1502
    add-int v2, v0, p3

    if-gt v2, v1, :cond_5

    .line 1479
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 393
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    return-void
.end method

.method private static checkWidthHeight(II)V
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 420
    if-gtz p0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    if-gtz p1, :cond_1

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_1
    return-void
.end method

.method private static checkXYSign(II)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 405
    if-gez p0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    if-gez p1, :cond_1

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_1
    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 834
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "hasAlpha"    # Z

    .prologue
    .line 867
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 692
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 712
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "m"    # Landroid/graphics/Matrix;
    .param p6, "filter"    # Z

    .prologue
    .line 742
    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 743
    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 744
    add-int v13, p1, p3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-le v13, v14, :cond_0

    .line 745
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "x + width must be <= bitmap.width()"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 747
    :cond_0
    add-int v13, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-le v13, v14, :cond_1

    .line 748
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "y + height must be <= bitmap.height()"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 752
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v13

    if-nez v13, :cond_3

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move/from16 v0, p3

    if-ne v0, v13, :cond_3

    .line 753
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move/from16 v0, p4

    if-ne v0, v13, :cond_3

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    .line 752
    if-eqz v13, :cond_3

    .line 754
    :cond_2
    return-object p0

    .line 757
    :cond_3
    move/from16 v9, p3

    .line 758
    .local v9, "neww":I
    move/from16 v8, p4

    .line 759
    .local v8, "newh":I
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 763
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Rect;

    add-int v13, p1, p3

    add-int v14, p2, p4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v11, v0, v1, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 764
    .local v11, "srcR":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p3

    int-to-float v15, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v6, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 766
    .local v6, "dstR":Landroid/graphics/RectF;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 767
    .local v7, "newConfig":Landroid/graphics/Bitmap$Config;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 769
    .local v4, "config":Landroid/graphics/Bitmap$Config;
    if-eqz v4, :cond_4

    .line 770
    invoke-static {}, Landroid/graphics/Bitmap;->-getandroid-graphics-Bitmap$ConfigSwitchesValues()[I

    move-result-object v13

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 781
    :pswitch_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 786
    :cond_4
    :goto_0
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 787
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v13

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 788
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 813
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/Bitmap;->mDensity:I

    iput v13, v2, Landroid/graphics/Bitmap;->mDensity:I

    .line 814
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v13

    invoke-virtual {v2, v13}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 815
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v2, v13}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 817
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 818
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v11, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 819
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 821
    return-object v2

    .line 772
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :pswitch_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 775
    :pswitch_2
    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 790
    :cond_7
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v12, 0x0

    .line 792
    .local v12, "transformed":Z
    :goto_2
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 793
    .local v5, "deviceR":Landroid/graphics/RectF;
    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 795
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 796
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 798
    if-eqz v12, :cond_8

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 799
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_8
    if-nez v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v13

    .line 798
    :goto_3
    invoke-static {v9, v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 801
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    iget v13, v5, Landroid/graphics/RectF;->left:F

    neg-float v13, v13

    iget v14, v5, Landroid/graphics/RectF;->top:F

    neg-float v14, v14

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 802
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 804
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 805
    .local v10, "paint":Landroid/graphics/Paint;
    move/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 806
    if-eqz v12, :cond_6

    .line 807
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_1

    .line 790
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "deviceR":Landroid/graphics/RectF;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v12    # "transformed":Z
    .restart local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_9
    const/4 v12, 0x1

    .restart local v12    # "transformed":Z
    goto :goto_2

    .line 799
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    .restart local v5    # "deviceR":Landroid/graphics/RectF;
    :cond_a
    const/4 v13, 0x1

    goto :goto_3

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 850
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "hasAlpha"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 887
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 888
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_1
    iget v5, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x1

    move v2, p1

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 891
    .local v7, "bm":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_2

    .line 892
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v7, Landroid/graphics/Bitmap;->mDensity:I

    .line 894
    :cond_2
    invoke-virtual {v7, p4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 895
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p3, v0, :cond_3

    if-eqz p4, :cond_4

    .line 901
    :cond_3
    :goto_0
    return-object v7

    .line 896
    :cond_4
    iget-wide v0, v7, Landroid/graphics/Bitmap;->mNativePtr:J

    const/high16 v2, -0x1000000

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    goto :goto_0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 950
    invoke-static/range {p4 .. p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 951
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, p4, :cond_0

    .line 952
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 954
    :cond_0
    add-int/lit8 v1, p5, -0x1

    mul-int/2addr v1, p3

    add-int v9, p2, v1

    .line 955
    .local v9, "lastScanline":I
    array-length v10, p1

    .line 956
    .local v10, "length":I
    if-ltz p2, :cond_1

    add-int v1, p2, p4

    if-le v1, v10, :cond_2

    .line 958
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 956
    :cond_2
    if-ltz v9, :cond_1

    .line 957
    add-int v1, v9, p4

    if-gt v1, v10, :cond_1

    .line 960
    if-lez p4, :cond_3

    if-gtz p5, :cond_4

    .line 961
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width and height must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 964
    :cond_4
    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    .line 963
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 965
    .local v8, "bm":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_5

    .line 966
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v8, Landroid/graphics/Bitmap;->mDensity:I

    .line 968
    :cond_5
    return-object v8
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "colors"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 1009
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "colors"    # [I
    .param p1, "offset"    # I
    .param p2, "stride"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 924
    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "colors"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 987
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I
    .param p3, "filter"    # Z

    .prologue
    const/4 v1, 0x0

    .line 659
    const-class v2, Landroid/graphics/Bitmap;

    monitor-enter v2

    .line 661
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 662
    .local v5, "m":Landroid/graphics/Matrix;
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 665
    if-nez v5, :cond_0

    .line 666
    new-instance v5, Landroid/graphics/Matrix;

    .end local v5    # "m":Landroid/graphics/Matrix;
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 669
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 670
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 671
    .local v4, "height":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v8, v0, v2

    .line 672
    .local v8, "sx":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v9, v0, v2

    .line 673
    .local v9, "sy":F
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v0, p0

    move v2, v1

    move v6, p3

    .line 674
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 676
    .local v7, "b":Landroid/graphics/Bitmap;
    const-class v1, Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 678
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 679
    sput-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    monitor-exit v1

    .line 683
    return-object v7

    .line 659
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b":Landroid/graphics/Bitmap;
    .end local v8    # "sx":F
    .end local v9    # "sy":F
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 676
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v5    # "m":Landroid/graphics/Matrix;
    .restart local v7    # "b":Landroid/graphics/Bitmap;
    .restart local v8    # "sx":F
    .restart local v9    # "sy":F
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getDefaultDensity()I
    .locals 1

    .prologue
    .line 108
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_0

    .line 109
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0

    .line 111
    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 112
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0
.end method

.method private static native nativeCompress(JIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeConfig(J)I
.end method

.method private static native nativeCopy(JIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyAshmem(J)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyAshmemConfig(JI)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeErase(JI)V
.end method

.method private static native nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(J)I
.end method

.method private static native nativeGetNativeFinalizer()J
.end method

.method private static native nativeGetPixel(JII)I
.end method

.method private static native nativeGetPixels(J[IIIIIII)V
.end method

.method private static native nativeHasAlpha(J)Z
.end method

.method private static native nativeHasMipMap(J)Z
.end method

.method private static native nativeIsPremultiplied(J)Z
.end method

.method private static native nativePrepareToDraw(J)V
.end method

.method private static native nativeReconfigure(JIIIIZ)V
.end method

.method private static native nativeRecycle(J)Z
.end method

.method private static native nativeRefPixelRef(J)J
.end method

.method private static native nativeRowBytes(J)I
.end method

.method private static native nativeSameAs(JJ)Z
.end method

.method private static native nativeSetHasAlpha(JZZ)V
.end method

.method private static native nativeSetHasMipMap(JZ)V
.end method

.method private static native nativeSetPixel(JIII)V
.end method

.method private static native nativeSetPixels(J[IIIIIII)V
.end method

.method private static native nativeSetPremultiplied(JZ)V
.end method

.method private static native nativeWriteToParcel(JZILandroid/os/Parcel;)Z
.end method

.method public static scaleFromDensity(III)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "sdensity"    # I
    .param p2, "tdensity"    # I

    .prologue
    .line 1233
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1234
    :cond_0
    return p0

    .line 1233
    :cond_1
    if-eq p1, p2, :cond_0

    .line 1238
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int/2addr v0, p1

    return v0
.end method

.method public static setDefaultDensity(I)V
    .locals 0
    .param p0, "density"    # I

    .prologue
    .line 103
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 102
    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 10
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    .prologue
    const-wide/16 v8, 0x2000

    .line 1077
    const-string/jumbo v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1079
    if-nez p3, :cond_0

    .line 1080
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1082
    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    .line 1083
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1085
    :cond_2
    const-string/jumbo v0, "Bitmap.compress"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1086
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v2, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    .line 1087
    const/16 v3, 0x1000

    new-array v5, v3, [B

    move v3, p2

    move-object v4, p3

    .line 1086
    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->nativeCompress(JIILjava/io/OutputStream;[B)Z

    move-result v6

    .line 1088
    .local v6, "result":Z
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1089
    return v6
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
    .param p2, "isMutable"    # Z

    .prologue
    .line 602
    const-string/jumbo v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 603
    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v1, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v2, v3, v1, p2}, Landroid/graphics/Bitmap;->nativeCopy(JIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 604
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 605
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 606
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 608
    :cond_0
    return-object v0
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 12
    .param p1, "src"    # Ljava/nio/Buffer;

    .prologue
    .line 560
    const-string/jumbo v7, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-direct {p0, v7}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 564
    .local v4, "elements":I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    .line 565
    const/4 v6, 0x0

    .line 574
    .local v6, "shift":I
    :goto_0
    int-to-long v8, v4

    shl-long v2, v8, v6

    .line 575
    .local v2, "bufferBytes":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v0, v7

    .line 577
    .local v0, "bitmapBytes":J
    cmp-long v7, v2, v0

    if-gez v7, :cond_3

    .line 578
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 566
    .end local v0    # "bitmapBytes":J
    .end local v2    # "bufferBytes":J
    .end local v6    # "shift":I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    .line 567
    const/4 v6, 0x1

    .restart local v6    # "shift":I
    goto :goto_0

    .line 568
    .end local v6    # "shift":I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    .line 569
    const/4 v6, 0x2

    .restart local v6    # "shift":I
    goto :goto_0

    .line 571
    .end local v6    # "shift":I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 581
    .restart local v0    # "bitmapBytes":J
    .restart local v2    # "bufferBytes":J
    .restart local v6    # "shift":I
    :cond_3
    iget-wide v8, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V

    .line 584
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 585
    .local v5, "position":I
    int-to-long v8, v5

    shr-long v10, v0, v6

    add-long/2addr v8, v10

    long-to-int v5, v8

    .line 586
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 559
    return-void
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 12
    .param p1, "dst"    # Ljava/nio/Buffer;

    .prologue
    .line 522
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 524
    .local v2, "elements":I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    .line 525
    const/4 v6, 0x0

    .line 534
    .local v6, "shift":I
    :goto_0
    int-to-long v8, v2

    shl-long v0, v8, v6

    .line 535
    .local v0, "bufferSize":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v4, v7

    .line 537
    .local v4, "pixelSize":J
    cmp-long v7, v0, v4

    if-gez v7, :cond_3

    .line 538
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 526
    .end local v0    # "bufferSize":J
    .end local v4    # "pixelSize":J
    .end local v6    # "shift":I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    .line 527
    const/4 v6, 0x1

    .restart local v6    # "shift":I
    goto :goto_0

    .line 528
    .end local v6    # "shift":I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    .line 529
    const/4 v6, 0x2

    .restart local v6    # "shift":I
    goto :goto_0

    .line 531
    .end local v6    # "shift":I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 541
    .restart local v0    # "bufferSize":J
    .restart local v4    # "pixelSize":J
    .restart local v6    # "shift":I
    :cond_3
    iget-wide v8, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V

    .line 544
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 545
    .local v3, "position":I
    int-to-long v8, v3

    shr-long v10, v4, v6

    add-long/2addr v8, v10

    long-to-int v3, v8

    .line 546
    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 521
    return-void
.end method

.method public createAshmemBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 618
    const-string/jumbo v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 619
    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->nativeCopyAshmem(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 620
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 621
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 622
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 624
    :cond_0
    return-object v0
.end method

.method public createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 634
    const-string/jumbo v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 635
    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v1, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->nativeCopyAshmemConfig(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 636
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 637
    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 638
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 640
    :cond_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1590
    const/4 v0, 0x0

    return v0
.end method

.method public eraseColor(I)V
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 1391
    const-string/jumbo v0, "Can\'t erase a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1393
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1395
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    .line 1390
    return-void
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1614
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "offsetXY"    # [I

    .prologue
    .line 1644
    const-string/jumbo v1, "Can\'t extractAlpha on a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1645
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    .line 1646
    .local v2, "nativePaint":J
    :goto_0
    iget-wide v4, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v4, v5, v2, v3, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1647
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1648
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to extractAlpha on Bitmap"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1645
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "nativePaint":J
    :cond_0
    const-wide/16 v2, 0x0

    .restart local v2    # "nativePaint":J
    goto :goto_0

    .line 1650
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 1651
    return-object v0
.end method

.method public final getAllocationByteCount()I
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    if-nez v0, :cond_0

    .line 1290
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0

    .line 1292
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    array-length v0, v0

    return v0
.end method

.method public final getByteCount()I
    .locals 2

    .prologue
    .line 1269
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 2

    .prologue
    .line 1300
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1301
    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called getConfig() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeConfig(J)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 2

    .prologue
    .line 190
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 191
    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called getDensity() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getGenerationId()I
    .locals 2

    .prologue
    .line 382
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 383
    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called getGenerationId() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGenerationId(J)I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 2

    .prologue
    .line 1169
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1170
    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called getHeight() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    return v0
.end method

.method getNativeInstance()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    return-wide v0
.end method

.method public getNinePatchChunk()[B
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    return-object v0
.end method

.method public getOpticalInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 1027
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    if-nez v0, :cond_0

    .line 1028
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1026
    :goto_0
    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    iget-object v0, v0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getPixel(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1410
    const-string/jumbo v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1411
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1412
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    move-result v0

    return v0
.end method

.method public getPixels([IIIIIII)V
    .locals 9
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 1440
    const-string/jumbo v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1441
    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    .line 1442
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1444
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1445
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeGetPixels(J[IIIIIII)V

    .line 1439
    return-void
.end method

.method public final getRowBytes()I
    .locals 2

    .prologue
    .line 1254
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1255
    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called getRowBytes() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRowBytes(J)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(I)I
    .locals 2
    .param p1, "targetDensity"    # I

    .prologue
    .line 1226
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/graphics/Canvas;)I
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1188
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 1204
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(I)I
    .locals 2
    .param p1, "targetDensity"    # I

    .prologue
    .line 1215
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/graphics/Canvas;)I
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1180
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 1196
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 1161
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1162
    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called getWidth() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    return v0
.end method

.method public final hasAlpha()Z
    .locals 2

    .prologue
    .line 1315
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1316
    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called hasAlpha() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasAlpha(J)Z

    move-result v0

    return v0
.end method

.method public final hasMipMap()Z
    .locals 2

    .prologue
    .line 1354
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1355
    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called hasMipMap() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasMipMap(J)Z

    move-result v0

    return v0
.end method

.method public final isMutable()Z
    .locals 1

    .prologue
    .line 1096
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    return v0
.end method

.method public final isPremultiplied()Z
    .locals 2

    .prologue
    .line 1127
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1128
    const-string/jumbo v0, "Bitmap"

    const-string/jumbo v1, "Called isPremultiplied() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsPremultiplied(J)Z

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method public prepareToDraw()V
    .locals 2

    .prologue
    .line 1681
    const-string/jumbo v0, "Can\'t prepareToDraw on a recycled bitmap!"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1684
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativePrepareToDraw(J)V

    .line 1680
    return-void
.end method

.method public reconfigure(IILandroid/graphics/Bitmap$Config;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 263
    const-string/jumbo v0, "Can\'t call reconfigure() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 264
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "only mutable bitmaps may be reconfigured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_2
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    if-nez v0, :cond_3

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "native-backed bitmaps may not be reconfigured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_3
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v4, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    .line 275
    iget-object v2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    array-length v5, v2

    iget-boolean v6, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    move v2, p1

    move v3, p2

    .line 274
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeReconfigure(JIIIIZ)V

    .line 276
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 277
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 262
    return-void
.end method

.method public recycle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 351
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 352
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRecycle(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iput-object v4, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 358
    iput-object v4, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 360
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 350
    :cond_1
    return-void
.end method

.method public final refSkPixelRef()J
    .locals 2

    .prologue
    .line 1693
    const-string/jumbo v0, "Can\'t refSkPixelRef on a recycled bitmap!"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1694
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRefPixelRef(J)J

    move-result-wide v0

    return-wide v0
.end method

.method reinit(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "requestPremultiplied"    # Z

    .prologue
    .line 164
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 165
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 166
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 163
    return-void
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "other"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1660
    const-string/jumbo v0, "Can\'t call sameAs on a recycled bitmap!"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1661
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1662
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1663
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t compare to a recycled bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1666
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-wide v2, p1, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSameAs(JJ)Z

    move-result v0

    return v0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 2
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 324
    return-void
.end method

.method public setDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .prologue
    .line 210
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 209
    return-void
.end method

.method public setHasAlpha(Z)V
    .locals 3
    .param p1, "hasAlpha"    # Z

    .prologue
    .line 1332
    const-string/jumbo v0, "setHasAlpha called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1333
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(JZZ)V

    .line 1331
    return-void
.end method

.method public final setHasMipMap(Z)V
    .locals 2
    .param p1, "hasMipMap"    # Z

    .prologue
    .line 1381
    const-string/jumbo v0, "setHasMipMap called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1382
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(JZ)V

    .line 1380
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 308
    return-void
.end method

.method public setNinePatchChunk([B)V
    .locals 0
    .param p1, "chunk"    # [B

    .prologue
    .line 336
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 335
    return-void
.end method

.method public setPixel(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "color"    # I

    .prologue
    .line 1521
    const-string/jumbo v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1523
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1525
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1526
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(JIII)V

    .line 1520
    return-void
.end method

.method public setPixels([IIIIIII)V
    .locals 9
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 1554
    const-string/jumbo v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1555
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1556
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1558
    :cond_0
    if-eqz p6, :cond_1

    if-nez p7, :cond_2

    .line 1559
    :cond_1
    return-void

    :cond_2
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1561
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1562
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeSetPixels(J[IIIIIII)V

    .line 1553
    return-void
.end method

.method public final setPremultiplied(Z)V
    .locals 2
    .param p1, "premultiplied"    # Z

    .prologue
    .line 1154
    const-string/jumbo v0, "setPremultiplied called on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1155
    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    .line 1156
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetPremultiplied(JZ)V

    .line 1153
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 292
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1599
    const-string/jumbo v0, "Can\'t parcel a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1600
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    iget v3, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(JZILandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1601
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1598
    :cond_0
    return-void
.end method
