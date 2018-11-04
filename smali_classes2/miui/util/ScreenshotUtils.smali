.class public Lmiui/util/ScreenshotUtils;
.super Ljava/lang/Object;
.source "ScreenshotUtils.java"


# static fields
.field private static final ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

.field private static final ACTIVITY_SCREENSHOT_FOLDER_PATH:Ljava/lang/String; = "/data/system/app_screenshot"

.field public static final BLUR_SCALE_RATIO:F = 0.33333334f

.field public static final DEFAULT_SCREENSHOT_COLOR:I = -0x55000001

.field public static final DEFAULT_SCREEN_BLUR_RADIUS:I

.field public static final REAL_BLUR_BLACK:F

.field public static final REAL_BLUR_MINIFY:I

.field public static final REAL_BLUR_RADIUS:I

.field private static final TAG:Ljava/lang/String; = "ScreenshotUtils"

.field private static sCacheBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisplay:Landroid/view/Display;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sKeyguardManager:Landroid/app/KeyguardManager;

.field private static sPaint:Landroid/graphics/Paint;

.field private static sScreenHeight:I

.field private static sScreenWidth:I

.field private static sSizeBuf:Landroid/graphics/Point;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;IZZ)V
    .locals 0
    .param p0, "shortComponentName"    # Ljava/lang/String;
    .param p1, "rotation"    # I
    .param p2, "isPort"    # Z
    .param p3, "hasNavigationBar"    # Z

    .prologue
    invoke-static {p0, p1, p2, p3}, Lmiui/util/ScreenshotUtils;->screenShotAndSave(Ljava/lang/String;IZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    .line 45
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    const v1, 0x110b0012

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->DEFAULT_SCREEN_BLUR_RADIUS:I

    .line 48
    const-string/jumbo v0, "persist.sys.real_blur_black"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_BLACK:F

    .line 49
    const-string/jumbo v0, "persist.sys.real_blur_minify"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    .line 50
    const-string/jumbo v0, "persist.sys.real_blur_radius"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_RADIUS:I

    .line 79
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/app_screenshot"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortComponentName"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/util/ScreenshotUtils;->captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 103
    return-void
.end method

.method public static captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortComponentName"    # Ljava/lang/String;
    .param p2, "isAsync"    # Ljava/lang/Boolean;

    .prologue
    const/4 v7, 0x0

    .line 108
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    .line 110
    sget-object v6, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->disallowTaskManagerScreenshotMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "persist.sys.screenshot_mode"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 117
    :cond_1
    sget-object v6, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 118
    .local v5, "rotation":I
    if-eqz v5, :cond_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    :cond_2
    const/4 v3, 0x1

    .line 120
    .local v3, "isPort":Z
    :goto_0
    sget-object v6, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    if-nez v6, :cond_4

    .line 121
    const-class v7, Lmiui/util/ScreenshotUtils;

    monitor-enter v7

    .line 122
    :try_start_0
    sget-object v6, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    if-nez v6, :cond_3

    .line 123
    new-instance v6, Landroid/os/HandlerThread;

    const-string/jumbo v8, "ScreenshotUtils"

    invoke-direct {v6, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v6, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    .line 124
    sget-object v6, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 125
    new-instance v6, Landroid/os/Handler;

    sget-object v8, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v6, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v7

    .line 130
    :cond_4
    const/4 v2, 0x0

    .line 132
    .local v2, "hasNavigationBar":Z
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 131
    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 134
    .local v4, "mIWindowManager":Landroid/view/IWindowManager;
    :try_start_1
    invoke-interface {v4}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 138
    .end local v2    # "hasNavigationBar":Z
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 139
    move v1, v2

    .line 140
    .local v1, "finalHasNavigationBar":Z
    sget-object v6, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    new-instance v7, Lmiui/util/ScreenshotUtils$1;

    invoke-direct {v7, p1, v5, v3, v1}, Lmiui/util/ScreenshotUtils$1;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    .end local v1    # "finalHasNavigationBar":Z
    :goto_2
    return-void

    .line 113
    .end local v3    # "isPort":Z
    .end local v4    # "mIWindowManager":Landroid/view/IWindowManager;
    .end local v5    # "rotation":I
    :cond_5
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    return-void

    .line 114
    :cond_6
    invoke-static {p1, v7}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    return-void

    .line 118
    .restart local v5    # "rotation":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "isPort":Z
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 135
    .restart local v2    # "hasNavigationBar":Z
    .restart local v4    # "mIWindowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "hasNavigationBar":Z
    :cond_8
    invoke-static {p1, v5, v3, v2}, Lmiui/util/ScreenshotUtils;->screenShotAndSave(Ljava/lang/String;IZZ)V

    goto :goto_2
.end method

.method public static disallowTaskManagerScreenshotMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->isLiteMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    return v1

    .line 95
    :cond_0
    const-string/jumbo v0, "enable_miui_lite"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;
    .locals 6
    .param p0, "shortComponentName"    # Ljava/lang/String;
    .param p1, "isPort"    # Z

    .prologue
    .line 227
    new-instance v1, Ljava/io/File;

    sget-object v2, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    .line 228
    const-string/jumbo v3, "%s--%s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v0, 0x2f

    const/16 v5, 0x2d

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    if-eqz p1, :cond_0

    const-string/jumbo v0, "p"

    :goto_0
    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 228
    :cond_0
    const-string/jumbo v0, "l"

    goto :goto_0
.end method

.method public static getActivityScreenshotSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 83
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    .line 85
    sget-object v1, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v1, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 86
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110b0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 87
    .local v0, "scale":F
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 88
    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 82
    return-void
.end method

.method public static getBlurBackground(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cache"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 290
    const v2, 0x3eaaaaab

    invoke-static {p0, v2, v3, v3, v3}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 291
    .local v1, "screenshot":Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lmiui/util/ScreenshotUtils;->getBlurBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    .local v0, "bluredBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 293
    return-object v0
.end method

.method public static getBlurBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "screenshot"    # Landroid/graphics/Bitmap;
    .param p1, "cache"    # Landroid/graphics/Bitmap;

    .prologue
    .line 305
    if-eqz p0, :cond_0

    .line 306
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 307
    const v2, 0x110b0012

    .line 306
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {p0, p1, v1}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 310
    :cond_0
    if-eqz p1, :cond_1

    .line 311
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 312
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/system/R$color;->blur_background_mask:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 314
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    return-object p1
.end method

.method private static getCacheBitmap(Z)Ljava/lang/ref/SoftReference;
    .locals 6
    .param p0, "hasNavigationBar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 318
    if-nez p0, :cond_0

    .line 319
    sget-object v4, Lmiui/util/ScreenshotUtils;->sCacheBitmap:Ljava/lang/ref/SoftReference;

    return-object v4

    .line 321
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 322
    .local v1, "displaySize":Landroid/graphics/Point;
    sget-object v5, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v5, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 323
    sget-object v5, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 324
    .local v3, "rotation":I
    if-eqz v3, :cond_1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 325
    .local v2, "isPort":Z
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 326
    .local v0, "displayHeight":I
    :goto_1
    sget v4, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    if-ne v0, v4, :cond_4

    sget-object v4, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;

    :goto_2
    return-object v4

    .end local v0    # "displayHeight":I
    .end local v2    # "isPort":Z
    :cond_2
    move v2, v4

    .line 324
    goto :goto_0

    .line 325
    .restart local v2    # "isPort":Z
    :cond_3
    iget v0, v1, Landroid/graphics/Point;->x:I

    .restart local v0    # "displayHeight":I
    goto :goto_1

    .line 326
    :cond_4
    sget-object v4, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;

    goto :goto_2
.end method

.method public static getScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 232
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v2, v1}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scale"    # F
    .param p2, "minLayer"    # I
    .param p3, "maxLayer"    # I
    .param p4, "includeNavigationBar"    # Z

    .prologue
    .line 236
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    .line 237
    sget v12, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    int-to-float v12, v12

    mul-float v12, v12, p1

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v8, v12

    .line 238
    .local v8, "screenshotWidth":I
    sget v12, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    int-to-float v12, v12

    mul-float v12, v12, p1

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v7, v12

    .line 241
    .local v7, "screenshotHeight":I
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 242
    invoke-static {v8, v7}, Lmiui/util/CompatibilityHelper;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 248
    .local v6, "screenshot":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v6, :cond_3

    .line 249
    sget-object v12, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 250
    .local v3, "degree":I
    if-eqz v3, :cond_0

    const/4 v12, 0x2

    if-ne v3, v12, :cond_5

    :cond_0
    const/4 v4, 0x1

    .line 252
    .local v4, "isPortrait":Z
    :goto_1
    if-eqz p4, :cond_6

    .line 253
    sget-object v12, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v13, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-virtual {v12, v13}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 258
    :goto_2
    sget-object v12, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    mul-float v12, v12, p1

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v10, v12

    .line 259
    .local v10, "targetWidth":I
    sget-object v12, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    mul-float v12, v12, p1

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v9, v12

    .line 261
    .local v9, "targetHeight":I
    if-ne v8, v10, :cond_1

    if-eq v7, v9, :cond_7

    .line 262
    :cond_1
    :goto_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 263
    .local v5, "matrix":Landroid/graphics/Matrix;
    if-eqz v3, :cond_2

    .line 264
    neg-int v12, v8

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    neg-int v13, v7

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 265
    mul-int/lit8 v12, v3, 0x5a

    rsub-int v12, v12, 0x168

    int-to-float v12, v12

    invoke-virtual {v5, v12}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 267
    if-eqz v4, :cond_8

    int-to-float v12, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v13, v12

    .line 268
    :goto_4
    if-eqz v4, :cond_9

    int-to-float v12, v7

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v12, v14

    .line 266
    :goto_5
    invoke-virtual {v5, v13, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 271
    :cond_2
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v9, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 272
    .local v11, "temp":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 273
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v6, v5, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 274
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 275
    move-object v6, v11

    .line 279
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "degree":I
    .end local v4    # "isPortrait":Z
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "targetHeight":I
    .end local v10    # "targetWidth":I
    .end local v11    # "temp":Landroid/graphics/Bitmap;
    :cond_3
    return-object v6

    .line 245
    .end local v6    # "screenshot":Landroid/graphics/Bitmap;
    :cond_4
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v8, v7, v0, v1}, Lmiui/util/CompatibilityHelper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "screenshot":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 250
    .restart local v3    # "degree":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "isPortrait":Z
    goto :goto_1

    .line 256
    :cond_6
    sget-object v12, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v13, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-virtual {v12, v13}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_2

    .line 261
    .restart local v9    # "targetHeight":I
    .restart local v10    # "targetWidth":I
    :cond_7
    if-eqz v3, :cond_3

    goto :goto_3

    .line 267
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_8
    int-to-float v12, v7

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move v13, v12

    goto :goto_4

    .line 268
    :cond_9
    int-to-float v12, v8

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v12, v14

    goto :goto_5
.end method

.method private static initializeIfNeed(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 53
    sget-object v2, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    sget-object v2, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    sget-object v2, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fd

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 60
    :cond_0
    sget-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    if-nez v2, :cond_1

    .line 61
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    sput-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    .line 65
    :cond_1
    sget-object v2, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v2, :cond_2

    .line 66
    const-string/jumbo v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    sput-object v2, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    .line 69
    :cond_2
    sget-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    if-eqz v2, :cond_4

    .line 70
    sget-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 71
    .local v0, "degree":I
    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    :cond_3
    const/4 v1, 0x1

    .line 72
    .local v1, "isPortrait":Z
    :goto_0
    sget-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v3, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-static {v2, v3}, Lmiui/util/CustomizeUtil;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 73
    if-eqz v1, :cond_6

    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    :goto_1
    sput v2, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    .line 74
    if-eqz v1, :cond_7

    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    :goto_2
    sput v2, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    .line 52
    .end local v0    # "degree":I
    .end local v1    # "isPortrait":Z
    :cond_4
    return-void

    .line 71
    .restart local v0    # "degree":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isPortrait":Z
    goto :goto_0

    .line 73
    :cond_6
    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 74
    :cond_7
    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    goto :goto_2
.end method

.method private static screenShotAndSave(Ljava/lang/String;IZZ)V
    .locals 22
    .param p0, "shortComponentName"    # Ljava/lang/String;
    .param p1, "rotation"    # I
    .param p2, "isPort"    # Z
    .param p3, "hasNavigationBar"    # Z

    .prologue
    .line 156
    const/16 v12, 0x7530

    .line 157
    .local v12, "maxLayer":I
    :try_start_0
    sget v18, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    sget v19, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v12}, Lmiui/util/CompatibilityHelper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 161
    .local v16, "screenshot":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 162
    .local v9, "displaySize":Landroid/graphics/Point;
    sget-object v18, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 163
    if-eqz p2, :cond_6

    iget v10, v9, Landroid/graphics/Point;->x:I

    .line 164
    .local v10, "displayWidth":I
    :goto_0
    if-eqz p2, :cond_7

    iget v8, v9, Landroid/graphics/Point;->y:I

    .line 165
    .local v8, "displayHeight":I
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x110b0013

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v15

    .line 167
    .local v15, "scale":F
    if-eqz p3, :cond_9

    .line 169
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 170
    :cond_0
    new-instance v17, Landroid/graphics/Rect;

    sget v18, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    sub-int v18, v18, v8

    sget v19, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v10, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 179
    .local v17, "src":Landroid/graphics/Rect;
    :goto_2
    invoke-static/range {p3 .. p3}, Lmiui/util/ScreenshotUtils;->getCacheBitmap(Z)Ljava/lang/ref/SoftReference;

    move-result-object v18

    if-nez v18, :cond_a

    const/4 v14, 0x0

    .line 180
    .local v14, "saveBitmap":Landroid/graphics/Bitmap;
    :goto_3
    if-nez v14, :cond_1

    .line 182
    if-eqz p3, :cond_b

    move/from16 v18, v10

    :goto_4
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v19, v0

    .line 183
    if-eqz p3, :cond_c

    move/from16 v18, v8

    :goto_5
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v18, v18, v20

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    .line 184
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 181
    move/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 185
    new-instance v18, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-static {v0, v1}, Lmiui/util/ScreenshotUtils;->setCacheBitmap(Ljava/lang/ref/SoftReference;Z)V

    .line 188
    :cond_1
    sget-object v18, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    if-nez v18, :cond_2

    .line 189
    new-instance v18, Landroid/graphics/Paint;

    const/16 v19, 0x3

    invoke-direct/range {v18 .. v19}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v18, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    .line 191
    :cond_2
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 194
    .local v6, "canvas":Landroid/graphics/Canvas;
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 195
    :cond_3
    const/high16 v18, 0x43340000    # 180.0f

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 199
    :cond_4
    invoke-virtual {v6, v15, v15}, Landroid/graphics/Canvas;->scale(FF)V

    .line 200
    if-eqz v16, :cond_f

    .line 201
    new-instance v18, Landroid/graphics/Rect;

    .line 202
    if-eqz p3, :cond_d

    .end local v10    # "displayWidth":I
    :goto_6
    if-eqz p3, :cond_e

    .line 201
    .end local v8    # "displayHeight":I
    :goto_7
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 202
    sget-object v19, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    .line 201
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 203
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 209
    :goto_8
    new-instance v13, Ljava/io/FileOutputStream;

    .line 210
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v18

    .line 209
    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 211
    .local v13, "outStream":Ljava/io/FileOutputStream;
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x5a

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 212
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 215
    if-eqz p2, :cond_10

    const/16 v18, 0x0

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v5

    .line 216
    .local v5, "anotherFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 217
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    .line 218
    .local v7, "delete":Z
    if-eqz v7, :cond_5

    .line 219
    const-string/jumbo v18, "ScreenshotUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "delete failed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v5    # "anotherFile":Ljava/io/File;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "delete":Z
    .end local v9    # "displaySize":Landroid/graphics/Point;
    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .end local v14    # "saveBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "scale":F
    .end local v16    # "screenshot":Landroid/graphics/Bitmap;
    .end local v17    # "src":Landroid/graphics/Rect;
    :cond_5
    :goto_a
    return-void

    .line 163
    .restart local v9    # "displaySize":Landroid/graphics/Point;
    .restart local v16    # "screenshot":Landroid/graphics/Bitmap;
    :cond_6
    iget v10, v9, Landroid/graphics/Point;->y:I

    .restart local v10    # "displayWidth":I
    goto/16 :goto_0

    .line 164
    :cond_7
    iget v8, v9, Landroid/graphics/Point;->x:I

    .restart local v8    # "displayHeight":I
    goto/16 :goto_1

    .line 172
    .restart local v15    # "scale":F
    :cond_8
    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v17    # "src":Landroid/graphics/Rect;
    goto/16 :goto_2

    .line 175
    .end local v17    # "src":Landroid/graphics/Rect;
    :cond_9
    new-instance v17, Landroid/graphics/Rect;

    sget v18, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    sget v19, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v17    # "src":Landroid/graphics/Rect;
    goto/16 :goto_2

    .line 179
    :cond_a
    invoke-static/range {p3 .. p3}, Lmiui/util/ScreenshotUtils;->getCacheBitmap(Z)Ljava/lang/ref/SoftReference;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Bitmap;

    move-object/from16 v14, v18

    goto/16 :goto_3

    .line 182
    .restart local v14    # "saveBitmap":Landroid/graphics/Bitmap;
    :cond_b
    sget v18, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    goto/16 :goto_4

    .line 183
    :cond_c
    sget v18, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    goto/16 :goto_5

    .line 202
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    :cond_d
    sget v10, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    goto/16 :goto_6

    .end local v10    # "displayWidth":I
    :cond_e
    sget v8, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    goto/16 :goto_7

    .line 205
    .restart local v10    # "displayWidth":I
    :cond_f
    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const v19, -0x55000001

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    .line 221
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "displayHeight":I
    .end local v9    # "displaySize":Landroid/graphics/Point;
    .end local v10    # "displayWidth":I
    .end local v14    # "saveBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "scale":F
    .end local v16    # "screenshot":Landroid/graphics/Bitmap;
    .end local v17    # "src":Landroid/graphics/Rect;
    :catch_0
    move-exception v11

    .line 222
    .local v11, "ex":Ljava/lang/Exception;
    const-string/jumbo v18, "ScreenshotUtils"

    const-string/jumbo v19, "screenShotAndSave"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v11}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 215
    .end local v11    # "ex":Ljava/lang/Exception;
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    .restart local v9    # "displaySize":Landroid/graphics/Point;
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v14    # "saveBitmap":Landroid/graphics/Bitmap;
    .restart local v15    # "scale":F
    .restart local v16    # "screenshot":Landroid/graphics/Bitmap;
    .restart local v17    # "src":Landroid/graphics/Rect;
    :cond_10
    const/16 v18, 0x1

    goto/16 :goto_9
.end method

.method private static setCacheBitmap(Ljava/lang/ref/SoftReference;Z)V
    .locals 6
    .param p1, "hasNavigationBar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "cacheBitmap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 330
    if-nez p1, :cond_0

    .line 331
    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmap:Ljava/lang/ref/SoftReference;

    .line 332
    return-void

    .line 334
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 335
    .local v1, "displaySize":Landroid/graphics/Point;
    sget-object v5, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v5, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 336
    sget-object v5, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 337
    .local v3, "rotation":I
    if-eqz v3, :cond_1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 338
    .local v2, "isPort":Z
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 339
    .local v0, "displayHeight":I
    :goto_1
    sget v4, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    if-ne v0, v4, :cond_4

    .line 340
    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;

    .line 329
    :goto_2
    return-void

    .end local v0    # "displayHeight":I
    .end local v2    # "isPort":Z
    :cond_2
    move v2, v4

    .line 337
    goto :goto_0

    .line 338
    .restart local v2    # "isPort":Z
    :cond_3
    iget v0, v1, Landroid/graphics/Point;->x:I

    .restart local v0    # "displayHeight":I
    goto :goto_1

    .line 342
    :cond_4
    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;

    goto :goto_2
.end method
