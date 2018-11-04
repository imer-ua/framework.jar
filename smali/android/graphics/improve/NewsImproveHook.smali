.class public Landroid/graphics/improve/NewsImproveHook;
.super Ljava/lang/Object;
.source "NewsImproveHook.java"

# interfaces
.implements Landroid/graphics/improve/ImproveHookAble;


# static fields
.field private static final ACTIVITY_THUMB:Ljava/lang/String; = "ThumbPreviewActivity"

.field private static final DRAWABLE_FAST:Ljava/lang/String; = "FastBitmapDrawable"

.field private static final VIEW_LARGE_ZOOM:Ljava/lang/String; = "LargeZoomImageView"


# instance fields
.field private mFBitmap:Ljava/lang/reflect/Field;

.field private mMGetbitmap:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "com.ss.android.common.imagezoom.graphics.FastBitmapDrawable"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 28
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v1, "getBitmap"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/improve/NewsImproveHook;->mMGetbitmap:Ljava/lang/reflect/Method;

    .line 29
    iget-object v1, p0, Landroid/graphics/improve/NewsImproveHook;->mMGetbitmap:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 31
    const-string/jumbo v1, "mBitmap"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/improve/NewsImproveHook;->mFBitmap:Ljava/lang/reflect/Field;

    .line 32
    iget-object v1, p0, Landroid/graphics/improve/NewsImproveHook;->mFBitmap:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "imgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 37
    const-string/jumbo v0, "ThumbPreviewActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string/jumbo v0, "LargeZoomImageView"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 39
    const-string/jumbo v0, "FastBitmapDrawable"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Landroid/graphics/improve/NewsImproveHook;->mMGetbitmap:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/improve/SuperResolution$ImproveInfo;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "info"    # Landroid/graphics/improve/SuperResolution$ImproveInfo;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 47
    const-string/jumbo v0, "ThumbPreviewActivity"

    iget-object v1, p1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->clsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Landroid/graphics/improve/NewsImproveHook;->mFBitmap:Ljava/lang/reflect/Field;

    iget-object v1, p1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->newBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v0, p1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :cond_0
    return-void
.end method
