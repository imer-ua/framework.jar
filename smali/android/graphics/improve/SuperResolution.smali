.class public Landroid/graphics/improve/SuperResolution;
.super Ljava/lang/Object;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/improve/SuperResolution$ImproveInfo;,
        Landroid/graphics/improve/SuperResolution$MainHandler;,
        Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;,
        Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;
    }
.end annotation


# static fields
.field public static final INTENT_INIT:Ljava/lang/String; = "miui.intent.action.super_resolution_turnon"

.field private static final MODEL_TYPE:I = 0x0

.field private static final MSG_IMPROVE:I = 0x3e6

.field private static final MSG_INIT:I = 0x3e7

.field private static final MSG_UPDATE_DRAWABLE:I = 0x1

.field public static final PKG_MM:Ljava/lang/String; = "com.tencent.mm"

.field public static final PKG_NEWS:Ljava/lang/String; = "com.ss.android.article.news"

.field public static final TAG:Ljava/lang/String; = "SuperResolution"

.field private static volatile instance:Landroid/graphics/improve/SuperResolution; = null

.field private static final mLimitMaxHeight:I = 0x320

.field private static final mLimitMaxWidth:I = 0x320

.field private static final mLimitMinHeight:I = 0x64

.field private static final mLimitMinWidth:I = 0x64

.field private static final mLimitTime:I = 0xfa0


# instance fields
.field private mBitmapRecord:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurPkg:Ljava/lang/String;

.field private mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

.field private mImproveHook:Landroid/graphics/improve/ImproveHookAble;

.field private mInitComplete:Z

.field private mReceiver:Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;

.field private mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

.field private mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;


# direct methods
.method static synthetic -get0(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/BitmapImproveAble;
    .locals 1

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    return-object v0
.end method

.method static synthetic -get1(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/ImproveHookAble;
    .locals 1

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mImproveHook:Landroid/graphics/improve/ImproveHookAble;

    return-object v0
.end method

.method static synthetic -get2(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/SuperResolution$MainHandler;
    .locals 1

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    return-object v0
.end method

.method static synthetic -set0(Landroid/graphics/improve/SuperResolution;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/improve/SuperResolution;->mInitComplete:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;)Z
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->checkViewIsAvailable(Landroid/widget/ImageView;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;Landroid/graphics/improve/SuperResolution$ImproveInfo;)Z
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "info"    # Landroid/graphics/improve/SuperResolution$ImproveInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/improve/SuperResolution;->drawableHasChanged(Landroid/widget/ImageView;Landroid/graphics/improve/SuperResolution$ImproveInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->isAllowInitAsync(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/graphics/improve/SuperResolution;J)Z
    .locals 1
    .param p1, "time"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/improve/SuperResolution;->isTimeOutOfLimit(J)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/graphics/improve/SuperResolution;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->getBitmapInfo(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/improve/SuperResolution;->add2Record(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/graphics/improve/SuperResolution;JLjava/lang/String;)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/improve/SuperResolution;->checkTime(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->initAsync(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/graphics/improve/SuperResolution;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/improve/SuperResolution;->initImproveInSRThread()V

    return-void
.end method

.method static synthetic -wrap9(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->initInChildThread(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mBitmapRecord:Ljava/util/HashSet;

    .line 51
    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    .line 160
    return-void
.end method

.method private add2Record(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 399
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mBitmapRecord:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 398
    return-void
.end method

.method private checkTime(JLjava/lang/String;)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 405
    .local v0, "endTime":J
    const-string/jumbo v2, "checkTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "consuming:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method private checkViewIsAvailable(Landroid/widget/ImageView;)Z
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x0

    .line 150
    if-nez p1, :cond_0

    .line 151
    return v1

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    return v1

    .line 156
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private drawableHasChanged(Landroid/widget/ImageView;Landroid/graphics/improve/SuperResolution$ImproveInfo;)Z
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "info"    # Landroid/graphics/improve/SuperResolution$ImproveInfo;

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 304
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->drawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_0

    .line 305
    const/4 v1, 0x0

    return v1

    .line 307
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private getBitmapInfo(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 414
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, ", bitmap hashCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 416
    const-string/jumbo v1, " H:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 418
    const-string/jumbo v1, " W:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getImproveHook(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/improve/ImproveHookAble;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "curPkgName"    # Ljava/lang/String;

    .prologue
    .line 250
    :try_start_0
    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    new-instance v1, Landroid/graphics/improve/MMImproveHook;

    invoke-direct {v1, p1}, Landroid/graphics/improve/MMImproveHook;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 252
    :cond_0
    const-string/jumbo v1, "com.ss.android.article.news"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    new-instance v1, Landroid/graphics/improve/NewsImproveHook;

    invoke-direct {v1, p1}, Landroid/graphics/improve/NewsImproveHook;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 257
    const-string/jumbo v1, "hook error"

    invoke-static {p1, v1}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/graphics/improve/SuperResolution;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    sget-object v1, Landroid/graphics/improve/SuperResolution;->instance:Landroid/graphics/improve/SuperResolution;

    if-nez v1, :cond_1

    .line 166
    const-class v2, Landroid/graphics/improve/SuperResolution;

    monitor-enter v2

    .line 167
    :try_start_0
    sget-object v1, Landroid/graphics/improve/SuperResolution;->instance:Landroid/graphics/improve/SuperResolution;

    if-nez v1, :cond_0

    .line 168
    new-instance v0, Landroid/graphics/improve/SuperResolution;

    invoke-direct {v0}, Landroid/graphics/improve/SuperResolution;-><init>()V

    .line 169
    .local v0, "temp":Landroid/graphics/improve/SuperResolution;
    invoke-direct {v0, p0}, Landroid/graphics/improve/SuperResolution;->init(Landroid/content/Context;)V

    .line 170
    sput-object v0, Landroid/graphics/improve/SuperResolution;->instance:Landroid/graphics/improve/SuperResolution;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "temp":Landroid/graphics/improve/SuperResolution;
    :cond_0
    monitor-exit v2

    .line 174
    :cond_1
    sget-object v1, Landroid/graphics/improve/SuperResolution;->instance:Landroid/graphics/improve/SuperResolution;

    return-object v1

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getMainHandler()Landroid/graphics/improve/SuperResolution$MainHandler;
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Landroid/graphics/improve/SuperResolution$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/graphics/improve/SuperResolution$MainHandler;-><init>(Landroid/graphics/improve/SuperResolution;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    .line 345
    :cond_0
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    if-nez p1, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 206
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    .line 208
    new-instance v0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;

    invoke-direct {v0, p0}, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;-><init>(Landroid/graphics/improve/SuperResolution;)V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mReceiver:Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;

    .line 210
    invoke-direct {p0}, Landroid/graphics/improve/SuperResolution;->isAllowInitSync()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 212
    :cond_2
    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->registerReceiver(Landroid/content/Context;)V

    .line 214
    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->initAsync(Landroid/content/Context;)V

    .line 202
    return-void
.end method

.method private initAsync(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    new-instance v0, Landroid/graphics/improve/SuperResolution$1;

    invoke-direct {v0, p0, p1}, Landroid/graphics/improve/SuperResolution$1;-><init>(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 217
    return-void
.end method

.method private initImproveInSRThread()V
    .locals 3

    .prologue
    .line 323
    invoke-static {}, Landroid/graphics/improve/SRUtils;->isSupportSelfArithmetic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Landroid/graphics/improve/SelfBitmapImprove;

    invoke-direct {v0}, Landroid/graphics/improve/SelfBitmapImprove;-><init>()V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    .line 329
    :goto_0
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/graphics/improve/BitmapImproveAble;->init(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/improve/SuperResolution;->mInitComplete:Z

    .line 330
    iget-boolean v0, p0, Landroid/graphics/improve/SuperResolution;->mInitComplete:Z

    if-eqz v0, :cond_1

    .line 332
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mBitmapRecord:Ljava/util/HashSet;

    .line 333
    invoke-direct {p0}, Landroid/graphics/improve/SuperResolution;->getMainHandler()Landroid/graphics/improve/SuperResolution$MainHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    .line 334
    const-string/jumbo v0, "init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-- init successful, Supplier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_1
    return-void

    .line 326
    :cond_0
    new-instance v0, Landroid/graphics/improve/KingSoftBitmapImprove;

    invoke-direct {v0}, Landroid/graphics/improve/KingSoftBitmapImprove;-><init>()V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    goto :goto_0

    .line 336
    :cond_1
    const-string/jumbo v0, "init"

    const-string/jumbo v1, "-- init error!!!"

    invoke-static {v0, v1}, Landroid/graphics/improve/SRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "init error"

    invoke-static {v0, v1}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initInChildThread(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->isAllowInitAsync(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 229
    :cond_0
    const-class v2, Landroid/graphics/improve/SuperResolution;

    monitor-enter v2

    .line 230
    :try_start_0
    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    if-eqz v1, :cond_1

    .line 231
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/improve/SuperResolution;->mInitComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 232
    return-void

    .line 235
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/graphics/improve/SuperResolution;->getImproveHook(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/improve/ImproveHookAble;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/improve/SuperResolution;->mImproveHook:Landroid/graphics/improve/ImproveHookAble;

    .line 237
    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mImproveHook:Landroid/graphics/improve/ImproveHookAble;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v2

    return-void

    .line 239
    :cond_2
    :try_start_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SuperResolution"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "superResolutionThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    new-instance v1, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;-><init>(Landroid/graphics/improve/SuperResolution;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    .line 243
    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    const/16 v3, 0x3e7

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 227
    return-void

    .line 229
    .end local v0    # "superResolutionThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isAllowInitAsync(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/improve/SRUtils;->isAppAccessSR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const-string/jumbo v1, "SuperResolution"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "show_already"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 279
    return v4

    .line 281
    :cond_0
    const-string/jumbo v1, "SuperResolution"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "show_already"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 282
    .local v0, "alreadyShow":Z
    if-eqz v0, :cond_1

    .line 283
    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/improve/SRUtils;->isCloundAccessSR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/improve/SRUtils;->isLocalAccessSR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    :cond_1
    :goto_0
    return v3

    .line 284
    :cond_2
    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->showToast(Landroid/content/Context;)V

    .line 285
    const-string/jumbo v1, "SuperResolution"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "show_already"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private isAllowInitSync()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/improve/SRUtils;->isInAppAccessList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 267
    :cond_0
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 269
    :cond_1
    invoke-static {}, Landroid/graphics/improve/SRUtils;->isProductAccessSR()Z

    move-result v0

    if-nez v0, :cond_2

    .line 270
    return v2

    .line 272
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private isAlreadyImprove(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 395
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mBitmapRecord:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSizeOutOfLimit(Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v3, 0x320

    const/16 v2, 0x64

    .line 384
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 385
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 386
    .local v1, "width":I
    if-gt v0, v3, :cond_0

    if-ge v0, v2, :cond_1

    .line 388
    :cond_0
    const-string/jumbo v2, "SizeOutOfLimit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bitmap out of limit,current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->getBitmapInfo(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v2, 0x1

    return v2

    .line 387
    :cond_1
    if-gt v1, v3, :cond_0

    if-lt v1, v2, :cond_0

    .line 391
    const/4 v2, 0x0

    return v2
.end method

.method private isTimeOutOfLimit(J)Z
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 312
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 313
    const-string/jumbo v0, "isTimeOutOfLimit"

    const-string/jumbo v1, "process time out of limit,limit:4000"

    invoke-static {v0, v1}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x1

    return v0

    .line 316
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "miui.intent.action.super_resolution_turnon"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mReceiver:Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    return-void
.end method

.method private showToast(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    invoke-direct {p0}, Landroid/graphics/improve/SuperResolution;->getMainHandler()Landroid/graphics/improve/SuperResolution$MainHandler;

    move-result-object v0

    new-instance v1, Landroid/graphics/improve/SuperResolution$2;

    invoke-direct {v1, p0, p1}, Landroid/graphics/improve/SuperResolution$2;-><init>(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method


# virtual methods
.method public improveBitmapIfNeeded(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/16 v6, 0x3e6

    .line 350
    iget-boolean v4, p0, Landroid/graphics/improve/SuperResolution;->mInitComplete:Z

    if-nez v4, :cond_0

    return-void

    .line 352
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "clsName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 356
    .local v3, "oldBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Landroid/graphics/improve/SuperResolution;->mImproveHook:Landroid/graphics/improve/ImproveHookAble;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, p2, v5}, Landroid/graphics/improve/ImproveHookAble;->getBitmap(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 363
    .local v3, "oldBitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 364
    return-void

    .line 357
    .local v3, "oldBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 359
    const-string/jumbo v4, "get bitmap error"

    invoke-static {p1, v4}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    .line 360
    return-void

    .line 367
    .end local v1    # "e":Ljava/lang/Throwable;
    .local v3, "oldBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, p3, v3}, Landroid/graphics/improve/SuperResolution;->isAlreadyImprove(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 369
    :cond_2
    invoke-direct {p0, v3}, Landroid/graphics/improve/SuperResolution;->isSizeOutOfLimit(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    .line 371
    :cond_3
    new-instance v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;

    invoke-direct {v2}, Landroid/graphics/improve/SuperResolution$ImproveInfo;-><init>()V

    .line 372
    .local v2, "info":Landroid/graphics/improve/SuperResolution$ImproveInfo;
    iput-object v3, v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    .line 373
    iput-object v0, v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->clsName:Ljava/lang/String;

    .line 374
    iput-object p2, v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->drawable:Landroid/graphics/drawable/Drawable;

    .line 375
    invoke-virtual {v2, p3}, Landroid/graphics/improve/SuperResolution$ImproveInfo;->setImageView(Landroid/widget/ImageView;)V

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    .line 378
    iget-object v4, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    iget-object v4, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    iget-object v5, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    invoke-virtual {v5, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 348
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    invoke-interface {v0}, Landroid/graphics/improve/BitmapImproveAble;->release()V

    .line 408
    return-void
.end method
