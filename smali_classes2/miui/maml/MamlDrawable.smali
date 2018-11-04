.class public Lmiui/maml/MamlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MamlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/MamlDrawable$1;,
        Lmiui/maml/MamlDrawable$MamlDrawableState;
    }
.end annotation


# static fields
.field private static sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBadgeLocation:Landroid/graphics/Rect;

.field protected mHeight:I

.field protected mIntrinsicHeight:I

.field protected mIntrinsicWidth:I

.field protected mInvalidateSelf:Ljava/lang/Runnable;

.field protected mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

.field protected mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    new-instance v0, Lmiui/maml/MamlDrawable$1;

    invoke-direct {v0, p0}, Lmiui/maml/MamlDrawable$1;-><init>(Lmiui/maml/MamlDrawable;)V

    iput-object v0, p0, Lmiui/maml/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    .line 18
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lmiui/maml/MamlDrawable;->drawIcon(Landroid/graphics/Canvas;)V

    .line 97
    :try_start_0
    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    iget v4, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    iget-object v2, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 116
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lmiui/maml/MamlDrawable;->cleanUp()V

    .line 135
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->finalize()V

    .line 133
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lmiui/maml/MamlDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 125
    return-void
.end method

.method public setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "badgeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "badgeLocation"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 42
    if-eqz p2, :cond_2

    .line 43
    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_0

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_1

    .line 45
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Badge location "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 46
    const-string/jumbo v5, " not in badged drawable bounds "

    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 47
    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    iget v7, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 44
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    if-gt v3, v4, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    if-gt v3, v4, :cond_0

    .line 50
    :cond_2
    instance-of v3, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_3

    .line 51
    sget-object v3, Lmiui/maml/MamlDrawable;->sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 52
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_4

    .line 53
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 65
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_0
    iput-object p1, p0, Lmiui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object p2, p0, Lmiui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    .line 67
    iget-object v3, p0, Lmiui/maml/MamlDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    iput-object p1, v3, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    iget-object v3, p0, Lmiui/maml/MamlDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    iput-object p2, v3, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    .line 41
    return-void

    .line 55
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicHeight()I

    move-result v4

    .line 57
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 55
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v8, v8, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 60
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 61
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "badgeDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    .restart local p1    # "badgeDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lmiui/maml/MamlDrawable;->sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    sub-int v0, p3, p1

    iput v0, p0, Lmiui/maml/MamlDrawable;->mWidth:I

    .line 82
    sub-int v0, p4, p2

    iput v0, p0, Lmiui/maml/MamlDrawable;->mHeight:I

    .line 79
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 129
    return-void
.end method

.method public setIntrinsicSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 72
    iput p1, p0, Lmiui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 73
    iput p2, p0, Lmiui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 71
    return-void
.end method
