.class public Lmiui/maml/AnimatingDrawable;
.super Lmiui/maml/MamlDrawable;
.source "AnimatingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;
    }
.end annotation


# static fields
.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final TAG:Ljava/lang/String; = "Maml.AnimatingDrawable"

.field public static final TIME_FANCY_CACHE:I


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFancyDrawable:Lmiui/maml/FancyDrawable;

.field private final mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;

.field private mResourceManager:Lmiui/maml/ResourceManager;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "manager"    # Lmiui/maml/ResourceManager;
    .param p5, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 39
    invoke-direct {p0}, Lmiui/maml/MamlDrawable;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    .line 42
    iput-object p4, p0, Lmiui/maml/AnimatingDrawable;->mResourceManager:Lmiui/maml/ResourceManager;

    .line 43
    iput-object p2, p0, Lmiui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lmiui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lmiui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    .line 46
    invoke-direct {p0}, Lmiui/maml/AnimatingDrawable;->init()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 50
    new-instance v0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/AnimatingDrawable;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v5, p0, Lmiui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    invoke-direct/range {v0 .. v5}, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;)V

    iput-object v0, p0, Lmiui/maml/MamlDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    .line 51
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 52
    .local v8, "wm":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 53
    .local v6, "display":Landroid/view/Display;
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 54
    .local v7, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 55
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mResourceManager:Lmiui/maml/ResourceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "den"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1, v2}, Lmiui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    .line 56
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "quietImage.png"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/MamlDrawable;->setIntrinsicSize(II)V

    .line 59
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 61
    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 60
    invoke-virtual {v0, v9, v9, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string/jumbo v0, "Maml.AnimatingDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mQuietDrwable is null! package/class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 113
    .local v2, "sa":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 114
    iget v3, p0, Lmiui/maml/MamlDrawable;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lmiui/maml/MamlDrawable;->mHeight:I

    int-to-float v4, v4

    iget v5, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 115
    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v2    # "sa":I
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    const-string/jumbo v3, "Maml.AnimatingDrawable"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    const-string/jumbo v3, "Maml.AnimatingDrawable"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFancyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, -0x3

    return v0
.end method

.method public getStartDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    .line 70
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    invoke-virtual {v0}, Lmiui/maml/FancyDrawable;->getStartDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    .line 73
    return-object v2

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public prepareFancyDrawable()V
    .locals 8

    .prologue
    .line 78
    iget-object v7, p0, Lmiui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 79
    :try_start_0
    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v7

    return-void

    .line 80
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lmiui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Lmiui/maml/util/AppIconsHelper;->getFancyIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lmiui/maml/FancyDrawable;

    if-eqz v1, :cond_1

    .line 82
    nop

    nop

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    .line 83
    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/FancyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v7

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mFancyDrawable:Lmiui/maml/FancyDrawable;

    invoke-virtual {v0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 132
    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/maml/MamlDrawable;->setBounds(IIII)V

    .line 106
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 140
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lmiui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 139
    :cond_1
    return-void
.end method
