.class public Lmiui/maml/FancyDrawable;
.super Lmiui/maml/MamlDrawable;
.source "FancyDrawable.java"

# interfaces
.implements Lmiui/maml/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/FancyDrawable$1;,
        Lmiui/maml/FancyDrawable$FancyDrawableState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "FancyDrawable"

.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final RENDER_TIMEOUT:I = 0x64

.field private static final START_IMAGE_NAME:Ljava/lang/String; = "startImage.png"

.field private static final USE_QUIET_IMAGE_TAG:Ljava/lang/String; = "useQuietImage"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPauseLock:Ljava/lang/Object;

.field private mPaused:Z

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;

.field private mRenderTimeout:Ljava/lang/Runnable;

.field private mRendererCore:Lmiui/maml/RendererCore;

.field private mStartDrawable:Landroid/graphics/drawable/Drawable;

.field private mTimeOut:Z


# direct methods
.method static synthetic -set0(Lmiui/maml/FancyDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/maml/FancyDrawable;->mTimeOut:Z

    return p1
.end method

.method static synthetic -wrap0(Lmiui/maml/FancyDrawable;)V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/FancyDrawable;->doPause()V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/RendererCore;)V
    .locals 2
    .param p1, "rc"    # Lmiui/maml/RendererCore;

    .prologue
    .line 42
    invoke-direct {p0}, Lmiui/maml/MamlDrawable;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Lmiui/maml/FancyDrawable$1;

    invoke-direct {v0, p0}, Lmiui/maml/FancyDrawable$1;-><init>(Lmiui/maml/FancyDrawable;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 43
    invoke-direct {p0, p1}, Lmiui/maml/FancyDrawable;->init(Lmiui/maml/RendererCore;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 2
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "t"    # Lmiui/maml/RenderThread;

    .prologue
    .line 46
    invoke-direct {p0}, Lmiui/maml/MamlDrawable;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Lmiui/maml/FancyDrawable$1;

    invoke-direct {v0, p0}, Lmiui/maml/FancyDrawable$1;-><init>(Lmiui/maml/FancyDrawable;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 47
    invoke-direct {p0, p1, p2}, Lmiui/maml/FancyDrawable;->init(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    .line 46
    return-void
.end method

.method private doPause()V
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 190
    return-void

    .line 191
    :cond_0
    :try_start_1
    const-string/jumbo v0, "doPause: "

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    .line 193
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->pauseRenderable(Lmiui/maml/RendererController$IRenderable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 187
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private doResume()V
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 200
    return-void

    .line 201
    :cond_0
    :try_start_1
    const-string/jumbo v0, "doResume: "

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    .line 203
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->resumeRenderable(Lmiui/maml/RendererController$IRenderable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 197
    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static fromZipFile(Landroid/content/Context;Ljava/lang/String;)Lmiui/maml/FancyDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-static {v0}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/maml/FancyDrawable;->fromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/maml/RenderThread;)Lmiui/maml/FancyDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static fromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/maml/RenderThread;)Lmiui/maml/FancyDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "t"    # Lmiui/maml/RenderThread;

    .prologue
    const/4 v2, 0x0

    .line 106
    new-instance v3, Lmiui/maml/ScreenElementRootFactory$Parameter;

    invoke-direct {v3, p0, p1}, Lmiui/maml/ScreenElementRootFactory$Parameter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3}, Lmiui/maml/ScreenElementRootFactory;->create(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    .line 107
    .local v1, "root":Lmiui/maml/ScreenElementRoot;
    if-nez v1, :cond_0

    .line 108
    return-object v2

    .line 109
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lmiui/maml/ScreenElementRoot;->setDefaultFramerate(F)V

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "rc":Lmiui/maml/RendererCore;
    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->load()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    new-instance v0, Lmiui/maml/RendererCore;

    .end local v0    # "rc":Lmiui/maml/RendererCore;
    invoke-direct {v0, v1, p2}, Lmiui/maml/RendererCore;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    .line 115
    :cond_1
    if-nez v0, :cond_2

    :goto_0
    return-object v2

    :cond_2
    new-instance v2, Lmiui/maml/FancyDrawable;

    invoke-direct {v2, v0}, Lmiui/maml/FancyDrawable;-><init>(Lmiui/maml/RendererCore;)V

    goto :goto_0
.end method

.method private init(Lmiui/maml/RendererCore;)V
    .locals 5
    .param p1, "rc"    # Lmiui/maml/RendererCore;

    .prologue
    const/4 v4, 0x0

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 77
    :cond_0
    new-instance v1, Lmiui/maml/FancyDrawable$FancyDrawableState;

    invoke-direct {v1, p1}, Lmiui/maml/FancyDrawable$FancyDrawableState;-><init>(Lmiui/maml/RendererCore;)V

    iput-object v1, p0, Lmiui/maml/MamlDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    .line 78
    iput-object p1, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    .line 79
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v1, p0}, Lmiui/maml/RendererCore;->addRenderable(Lmiui/maml/RendererController$IRenderable;)V

    .line 80
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v1}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v2}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lmiui/maml/MamlDrawable;->setIntrinsicSize(II)V

    .line 81
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v1}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    .line 82
    .local v0, "context":Lmiui/maml/ScreenContext;
    iget-object v1, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v2, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "quietImage.png"

    invoke-virtual {v1, v2, v3}, Lmiui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 86
    iget-object v3, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 85
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    :cond_1
    iget-object v1, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v2, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "startImage.png"

    invoke-virtual {v1, v2, v3}, Lmiui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 92
    iget-object v3, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 91
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 73
    :cond_2
    return-void
.end method

.method private init(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 2
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "t"    # Lmiui/maml/RenderThread;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "init  root:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v0, Lmiui/maml/RendererCore;

    invoke-direct {v0, p1, p2}, Lmiui/maml/RendererCore;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->init(Lmiui/maml/RendererCore;)V

    .line 96
    return-void
.end method

.method private logd(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 226
    const-string/jumbo v0, "FancyDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 119
    const-string/jumbo v0, "cleanUp: "

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->removeRenderable(Lmiui/maml/RendererController$IRenderable;)V

    .line 118
    return-void
.end method

.method public doRender()V
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 132
    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    iget-boolean v2, p0, Lmiui/maml/FancyDrawable;->mTimeOut:Z

    if-eqz v2, :cond_0

    .line 134
    invoke-direct {p0}, Lmiui/maml/FancyDrawable;->doResume()V

    .line 135
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/maml/FancyDrawable;->mTimeOut:Z

    .line 138
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 139
    .local v1, "sa":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    iget v2, p0, Lmiui/maml/MamlDrawable;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lmiui/maml/MamlDrawable;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 141
    const-string/jumbo v2, "useQuietImage"

    iget-object v3, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v3}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 142
    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 131
    .end local v1    # "sa":I
    :goto_1
    return-void

    .line 145
    .restart local v1    # "sa":I
    :cond_1
    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v2, p1}, Lmiui/maml/RendererCore;->render(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v1    # "sa":I
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->cleanUp()V

    .line 221
    invoke-super {p0}, Lmiui/maml/MamlDrawable;->finalize()V

    .line 219
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getQuietDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    return-object v0
.end method

.method public getStartDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    const-string/jumbo v1, "pause"

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lmiui/maml/FancyDrawable;->doPause()V

    .line 179
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    const-string/jumbo v1, "resume"

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lmiui/maml/FancyDrawable;->doResume()V

    .line 182
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 158
    :cond_0
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 154
    :cond_1
    return-void
.end method

.method public setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "badgeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "badgeLocation"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 51
    if-eqz p2, :cond_2

    .line 52
    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Badge location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    const-string/jumbo v2, " not in badged drawable bounds "

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    iget v4, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    if-gt v0, v1, :cond_0

    .line 59
    :cond_2
    iput-object p1, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object p2, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    .line 61
    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    iput-object p1, v0, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    iput-object p2, v0, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    .line 50
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 165
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 164
    :cond_2
    return-void
.end method
