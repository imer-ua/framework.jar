.class public Lmiui/widget/SpectrumVisualizer;
.super Landroid/widget/ImageView;
.source "SpectrumVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/SpectrumVisualizer$1;,
        Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;,
        Lmiui/widget/SpectrumVisualizer$DotBarDrawer;,
        Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;
    }
.end annotation


# static fields
.field private static final CONSIDER_SAMPLE_LENGTH:I = 0xa0

.field public static IS_LPA_DECODE:Z = false

.field private static final RES_DEFAULT_SLIDING_DOT_BAR_ID:I = 0x11020099

.field private static final RES_DEFAULT_SLIDING_PANEL_ID:I = 0x11020098

.field private static final RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID:I = 0x1102009a

.field private static final TAG:Ljava/lang/String; = "SpectrumVisualizer"

.field private static final VISUALIZATION_SAMPLE_LENGTH:I = 0x100


# instance fields
.field private INDEX_SCALE_FACTOR:F

.field private final MAX_VALID_SAMPLE:I

.field private SAMPLE_SCALE_FACTOR:F

.field private VISUALIZE_DESC_HEIGHT:F

.field mAlphaWidthNum:I

.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field mCellSize:I

.field mDotbarHeight:I

.field private mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

.field private mEnableDrawing:Z

.field private mIsEnableUpdate:Z

.field private mIsNeedCareStreamActive:Z

.field private mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field mPaint:Landroid/graphics/Paint;

.field mPixels:[I

.field mPointData:[F

.field private mSampleBuf:[S

.field mShadowDotbarHeight:I

.field mShadowPixels:[I

.field private mSoftDrawEnabled:Z

.field private mVisualizationHeight:I

.field mVisualizationHeightNum:I

.field private mVisualizationWidth:I

.field mVisualizationWidthNum:I

.field private mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "persist.sys.lpa.decode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 57
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 273
    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 334
    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 57
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 273
    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 334
    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    .line 76
    invoke-direct {p0, p1, p2}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 57
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 273
    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 334
    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    .line 81
    invoke-direct {p0, p1, p2}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v3, 0xff

    .line 254
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 255
    iget v2, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    sub-int v0, v2, v3

    .line 256
    .local v0, "end":I
    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 257
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    invoke-interface {v2, p1, v1}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_0
    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    :goto_1
    if-lez v1, :cond_1

    .line 262
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    mul-int/lit16 v3, v1, 0xff

    iget v4, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 264
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, p1, v3}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 265
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    sub-int/2addr v3, v1

    invoke-interface {v2, p1, v3}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 261
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 252
    :cond_1
    return-void
.end method

.method private drawToBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 231
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 232
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 233
    .local v1, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 234
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    const/4 v0, 0x0

    .line 238
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    if-nez v0, :cond_2

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 242
    new-instance v1, Landroid/graphics/Canvas;

    .end local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 243
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    iput-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 246
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 247
    invoke-direct {p0, v1}, Lmiui/widget/SpectrumVisualizer;->drawInternal(Landroid/graphics/Canvas;)V

    .line 249
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 143
    const/4 v4, 0x0

    .line 144
    .local v4, "panelDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 145
    .local v2, "dotBarDrawble":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 146
    .local v6, "shadowDotbarDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 148
    .local v7, "symmetry":Z
    iput-boolean v9, p0, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 149
    iput-boolean v9, p0, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    .line 151
    iput v10, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 153
    if-eqz p2, :cond_0

    .line 154
    sget-object v8, Landroid/miui/R$styleable;->SpectrumVisualizer:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 155
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 156
    .local v4, "panelDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 157
    .local v2, "dotBarDrawble":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 158
    .local v6, "shadowDotbarDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 160
    .local v7, "symmetry":Z
    iget v8, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    const/4 v9, 0x4

    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 161
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 162
    const/4 v8, 0x6

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    .line 163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "dotBarDrawble":Landroid/graphics/drawable/Drawable;
    .end local v4    # "panelDrawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "shadowDotbarDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "symmetry":Z
    :cond_0
    if-nez v4, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11020098

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 169
    :cond_1
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 171
    .local v3, "panelBm":Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11020099

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 175
    :cond_2
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 177
    .local v1, "dotBar":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 178
    .local v5, "shadowDotBar":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    .line 179
    if-nez v6, :cond_3

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1102009a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_3
    move-object v8, v6

    .line 183
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 186
    .end local v5    # "shadowDotBar":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {p0, v3, v1, v5}, Lmiui/widget/SpectrumVisualizer;->setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 142
    return-void
.end method


# virtual methods
.method public enableDrawing(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 283
    return-void
.end method

.method public enableUpdate(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    .line 289
    :try_start_0
    iget-boolean v3, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    if-eq v3, p1, :cond_1

    .line 290
    if-eqz p1, :cond_3

    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v3, :cond_3

    .line 291
    sget-boolean v3, Lmiui/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    if-eqz v3, :cond_2

    .line 292
    const-string/jumbo v3, "SpectrumVisualizer"

    const-string/jumbo v4, "lpa decode is on, can\'t enable"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 287
    :cond_1
    :goto_1
    return-void

    .line 294
    :cond_2
    new-instance v3, Landroid/media/audiofx/Visualizer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 295
    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v3}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 297
    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v4, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 298
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v5

    .line 299
    const/4 v6, 0x0

    .line 300
    const/4 v7, 0x1

    .line 297
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 301
    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 304
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    if-nez p1, :cond_0

    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v3, :cond_0

    .line 305
    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 306
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-ge v3, v4, :cond_4

    const-string/jumbo v3, "is_xiaomi_device"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 316
    :cond_4
    :goto_2
    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v3}, Landroid/media/audiofx/Visualizer;->release()V

    .line 317
    const/4 v3, 0x0

    iput-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    goto :goto_0

    .line 323
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 314
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_5
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 325
    :catch_2
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getVisualHeight()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    return v0
.end method

.method public getVisualWidth()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidth:I

    return v0
.end method

.method public isUpdateEnabled()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 200
    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    if-nez v0, :cond_0

    .line 201
    return-void

    .line 204
    :cond_0
    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    if-eqz v0, :cond_1

    .line 205
    invoke-direct {p0}, Lmiui/widget/SpectrumVisualizer;->drawToBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 198
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-direct {p0, p1}, Lmiui/widget/SpectrumVisualizer;->drawInternal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setAlphaNum(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    const/4 v0, 0x0

    .line 135
    if-gtz p1, :cond_0

    .line 136
    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 137
    return-void

    .line 139
    :cond_0
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_1

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 p1, v0, 0x2

    .end local p1    # "num":I
    :cond_1
    iput p1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 134
    return-void
.end method

.method public setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dotbar"    # Landroid/graphics/Bitmap;
    .param p4, "shadow"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 90
    iput p1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidth:I

    .line 91
    iput p2, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    .line 92
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    .line 93
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 95
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    if-le v0, v1, :cond_0

    .line 96
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 98
    :cond_0
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPixels:[I

    .line 99
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mPixels:[I

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v6, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v7, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    move-object v0, p3

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 101
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidth:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    .line 102
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    .line 103
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float v0, v1, v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    .line 104
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    .line 105
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    .line 107
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    .line 109
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    if-nez v0, :cond_1

    .line 110
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 113
    :cond_1
    iput-object v8, p0, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    .line 114
    if-eqz p4, :cond_4

    .line 115
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 117
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    if-le v0, v1, :cond_2

    .line 118
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 120
    :cond_2
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    if-ge v0, v1, :cond_3

    .line 122
    new-instance v0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    .line 123
    return-void

    .line 126
    :cond_3
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    .line 127
    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v6, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v7, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    move-object v0, p4

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 128
    new-instance v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    .line 89
    :goto_0
    return-void

    .line 130
    :cond_4
    new-instance v0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    goto :goto_0
.end method

.method public setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "panel"    # Landroid/graphics/Bitmap;
    .param p2, "dotbar"    # Landroid/graphics/Bitmap;
    .param p3, "shadow"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lmiui/widget/SpectrumVisualizer;->setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 84
    return-void
.end method

.method public setSoftDrawEnabled(Z)V
    .locals 2
    .param p1, "endabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 222
    iput-boolean p1, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    .line 223
    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    iput-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 226
    iput-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 221
    :cond_0
    return-void
.end method

.method update([B)V
    .locals 18
    .param p1, "fFtBuffer"    # [B

    .prologue
    .line 338
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    if-eqz v13, :cond_0

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 342
    :cond_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmiui/widget/SpectrumVisualizer;->enableDrawing(Z)V

    .line 346
    if-nez p1, :cond_2

    .line 347
    return-void

    .line 339
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmiui/widget/SpectrumVisualizer;->enableDrawing(Z)V

    .line 340
    return-void

    .line 350
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 351
    .local v10, "sampleBuf":[S
    array-length v11, v10

    .line 352
    .local v11, "sampleLen":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v11, :cond_4

    .line 353
    mul-int/lit8 v13, v7, 0x2

    aget-byte v2, p1, v13

    .line 354
    .local v2, "a":I
    mul-int/lit8 v13, v7, 0x2

    add-int/lit8 v13, v13, 0x1

    aget-byte v3, p1, v13

    .line 355
    .local v3, "b":I
    mul-int v13, v2, v2

    mul-int v14, v3, v3

    add-int/2addr v13, v14

    int-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-int v4, v14

    .line 357
    .local v4, "c":I
    const/16 v13, 0x7fff

    if-ge v4, v13, :cond_3

    .end local v4    # "c":I
    :goto_1
    int-to-short v13, v4

    aput-short v13, v10, v7

    .line 352
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 357
    .restart local v4    # "c":I
    :cond_3
    const/16 v4, 0x7fff

    goto :goto_1

    .line 360
    .end local v2    # "a":I
    .end local v3    # "b":I
    .end local v4    # "c":I
    :cond_4
    const/4 v12, 0x0

    .line 361
    .local v12, "srcIdx":I
    const/4 v5, 0x0

    .line 362
    .local v5, "count":I
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    if-ge v7, v13, :cond_8

    .line 363
    const/4 v8, 0x0

    .line 366
    .local v8, "max":I
    :goto_3
    if-ge v5, v11, :cond_5

    .line 367
    aget-short v13, v10, v12

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 368
    add-int/lit8 v12, v12, 0x1

    .line 369
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    add-int/2addr v5, v13

    goto :goto_3

    .line 371
    :cond_5
    sub-int/2addr v5, v11

    .line 375
    const/4 v13, 0x1

    if-le v8, v13, :cond_6

    .line 376
    add-int/lit8 v13, v7, 0x2

    int-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    float-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-float v6, v14

    .line 377
    .local v6, "f":F
    add-int/lit8 v13, v8, -0x1

    int-to-float v13, v13

    mul-float/2addr v13, v6

    mul-float v9, v13, v6

    .line 384
    .end local v6    # "f":F
    .local v9, "rawData":F
    :goto_4
    const/high16 v13, 0x41a00000    # 20.0f

    cmpl-float v13, v9, v13

    if-lez v13, :cond_7

    .line 385
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v9, v13

    .line 391
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v14, v14

    div-float v14, v9, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    aget v15, v15, v7

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    aput v14, v13, v7

    .line 362
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 379
    .end local v9    # "rawData":F
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "rawData":F
    goto :goto_4

    .line 387
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    div-float/2addr v9, v13

    goto :goto_5

    .line 394
    .end local v8    # "max":I
    .end local v9    # "rawData":F
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 336
    return-void
.end method
