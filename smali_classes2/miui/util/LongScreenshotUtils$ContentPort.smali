.class public Lmiui/util/LongScreenshotUtils$ContentPort;
.super Ljava/lang/Object;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentPort"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/LongScreenshotUtils$ContentPort$H;
    }
.end annotation


# instance fields
.field private mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

.field private mIsFakeTouchForScroll:Z

.field private mIsFirstMove:Z

.field private mMainScrollView:Landroid/view/View;

.field private mMainScrollViewTop:I

.field private mNeedUseMultiTouch:Z

.field private mPrevScrolledY:I

.field private mPrevScrolledYChildView:Landroid/view/View;

.field private mScreenRect:Landroid/graphics/Rect;

.field private mTempLoc:[I

.field private mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mTotalScrollDistance:I

.field private mTouchY:I

.field private mVerticalEdge:I

.field private mVerticalScrollBarEnabled:Z


# direct methods
.method static synthetic -get0(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->broadcastCallback()V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->finish()V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->scrollView()V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    .line 185
    new-instance v1, Lmiui/util/LongScreenshotUtils$ContentPort$H;

    invoke-direct {v1, p0}, Lmiui/util/LongScreenshotUtils$ContentPort$H;-><init>(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    .line 186
    new-array v1, v3, [I

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    .line 289
    new-array v1, v3, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 290
    new-array v1, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 293
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v1, v0

    .line 294
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v1, v1, v0

    iput v0, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 295
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    .line 296
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v0

    iput v4, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 297
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v0

    iput v4, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method private broadcastCallback()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 328
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    if-lt v3, v4, :cond_2

    const/4 v1, 0x1

    .line 332
    .local v1, "isEnd":Z
    :goto_0
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 333
    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v3, v4

    .line 338
    .local v2, "scrolledY":I
    :goto_1
    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    add-int/2addr v3, v2

    iput v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.miui.util.LongScreenshotUtils.LongScreenshot"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "IsEnd"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    const-string/jumbo v3, "TopLoc"

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    const-string/jumbo v3, "BottomLoc"

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    const-string/jumbo v3, "ViewTop"

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const-string/jumbo v3, "ViewBottom"

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    if-eqz v1, :cond_0

    .line 349
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 327
    :cond_0
    return-void

    .line 328
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isEnd":Z
    .end local v2    # "scrolledY":I
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "isEnd":Z
    goto :goto_0

    .line 329
    .end local v1    # "isEnd":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isEnd":Z
    goto :goto_0

    .line 335
    :cond_3
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 336
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    sub-int v2, v3, v4

    .restart local v2    # "scrolledY":I
    goto :goto_1
.end method

.method private checkIsMainScrollView(Landroid/view/View;)Z
    .locals 11
    .param p1, "currView"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 472
    :try_start_0
    invoke-direct {p0, p1}, Lmiui/util/LongScreenshotUtils$ContentPort;->isKnownScrollableView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->canScrollVertically(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 480
    :cond_0
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v2, v4, 0x3

    .line 481
    .local v2, "minWidth":I
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 482
    .local v1, "halfScreenHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lt v4, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-ge v4, v1, :cond_3

    .line 483
    :cond_1
    return v9

    .line 473
    .end local v1    # "halfScreenHeight":I
    .end local v2    # "minWidth":I
    :cond_2
    return v9

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "LongScreenshotUtils"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    return v9

    .line 486
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "halfScreenHeight":I
    .restart local v2    # "minWidth":I
    :cond_3
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 487
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 488
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v4, v4, v9

    iget-object v5, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v5, v5, v10

    .line 489
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v6, v6, v9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v7, v7, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 488
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 490
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v2, :cond_5

    .line 491
    :cond_4
    return v9

    .line 490
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lt v4, v1, :cond_4

    .line 494
    iget-object v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    aget v4, v4, v10

    iput v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    .line 495
    iget v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    invoke-static {p1, v4}, Lmiui/util/LongScreenshotUtils$ContentPort;->findVisibleTop(Landroid/view/View;I)I

    move-result v4

    iput v4, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    .line 496
    return v10
.end method

.method private checkIsMayHasBg()Z
    .locals 3

    .prologue
    .line 354
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "mainClsName":Ljava/lang/String;
    const-string/jumbo v2, "com.miui.notes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    const-string/jumbo v2, "com.miui.notes.editor.RichEditView$RichEditScrollView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 356
    if-nez v2, :cond_2

    .line 358
    :cond_0
    const-string/jumbo v2, "com.tencent.mobileqq"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    const-string/jumbo v2, "com.tencent.mobileqq.bubble.ChatXListView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 356
    if-nez v2, :cond_2

    .line 360
    :cond_1
    const-string/jumbo v2, "com.tencent.mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 361
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ListView;

    .line 356
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 360
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkNeedFakeTouchForScroll()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ScrollView;

    .line 365
    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v0

    .line 365
    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    .line 365
    if-eqz v0, :cond_1

    .line 369
    :cond_0
    return v2

    .line 371
    :cond_1
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsoluteLayout;

    if-eqz v0, :cond_3

    .line 372
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_2

    .line 373
    const-string/jumbo v0, "com.ucmobile"

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 372
    if-nez v0, :cond_2

    .line 374
    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 371
    if-eqz v0, :cond_3

    .line 375
    :cond_2
    return v2

    .line 377
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private dispatchFakeTouchEvent(I)V
    .locals 19
    .param p1, "action"    # I

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 306
    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 307
    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 306
    const/4 v7, 0x1

    .line 307
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 308
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v6, p1

    .line 305
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 309
    .local v18, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 310
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->recycle()V

    .line 301
    return-void
.end method

.method private dispatchMoveAndReset(I)V
    .locals 4
    .param p1, "distance"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 314
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    if-eqz v0, :cond_0

    .line 315
    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 316
    invoke-direct {p0, v3}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 317
    iput-boolean v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    .line 313
    :goto_0
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 320
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 321
    invoke-direct {p0, v2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 322
    iget v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 323
    invoke-direct {p0, v3}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    goto :goto_0
.end method

.method private findMainScrollView()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 402
    invoke-static {}, Lmiui/util/LongScreenshotUtils$ContentPort;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 403
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 409
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 410
    const-string/jumbo v7, "force_fsg_nav_bar"

    .line 409
    invoke-static {v6, v7}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 411
    .local v3, "forceImmersive":Z
    if-eqz v3, :cond_0

    .line 412
    const-string/jumbo v6, "window"

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 413
    .local v5, "wm":Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 414
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 415
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 416
    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 415
    invoke-virtual {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 422
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "wm":Landroid/view/WindowManager;
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 423
    .local v1, "decorView":Landroid/view/View;
    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->findScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 425
    .local v4, "scrollView":Landroid/view/View;
    if-nez v4, :cond_1

    .line 426
    return-object v9

    .line 418
    .end local v1    # "decorView":Landroid/view/View;
    .end local v4    # "scrollView":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 419
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 418
    invoke-virtual {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 428
    .restart local v1    # "decorView":Landroid/view/View;
    .restart local v4    # "scrollView":Landroid/view/View;
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 429
    return-object v9

    .line 431
    :cond_2
    return-object v4

    .line 433
    .end local v1    # "decorView":Landroid/view/View;
    .end local v3    # "forceImmersive":Z
    .end local v4    # "scrollView":Landroid/view/View;
    :cond_3
    const-string/jumbo v6, "LongScreenshotUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Get top activity in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-object v9
.end method

.method private findScrollView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "currView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 439
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    :cond_0
    return-object v4

    .line 442
    :cond_1
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 443
    nop

    nop

    .line 444
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 445
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/util/LongScreenshotUtils$ContentPort;->findScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 446
    .local v2, "result":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 447
    return-object v2

    .line 444
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 452
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    .end local v2    # "result":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p1}, Lmiui/util/LongScreenshotUtils$ContentPort;->checkIsMainScrollView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 453
    return-object p1

    .line 456
    :cond_4
    return-object v4
.end method

.method private static findVisibleTop(Landroid/view/View;I)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "absTop"    # I

    .prologue
    const/4 v2, 0x0

    .line 500
    const/4 v0, 0x0

    .line 502
    .local v0, "offset":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .restart local p0    # "view":Landroid/view/View;
    goto :goto_0

    .line 509
    :cond_0
    if-gez v0, :cond_1

    .line 510
    sub-int/2addr p1, v0

    .line 512
    :cond_1
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalScrollBarEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 281
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v0, :cond_1

    .line 282
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 285
    :cond_1
    iput-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    .line 286
    iput-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    .line 275
    return-void
.end method

.method private getExpectScrollDistance()I
    .locals 4

    .prologue
    .line 522
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v2

    iget v3, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 523
    .local v0, "h":I
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isTencentApp()Z

    move-result v1

    .line 524
    .local v1, "isTencentApp":Z
    if-eqz v1, :cond_0

    .line 526
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsoluteLayout;

    if-eqz v2, :cond_0

    .line 527
    div-int/lit8 v0, v0, 0x2

    .line 530
    :cond_0
    return v0
.end method

.method private getScrollViewVisibleHeight()I
    .locals 3

    .prologue
    .line 592
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 593
    .local v0, "height":I
    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 594
    return v0

    .line 596
    :cond_0
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollViewTop:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private static getTopActivity()Landroid/app/Activity;
    .locals 10

    .prologue
    .line 381
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    .line 383
    .local v3, "activityThread":Landroid/app/ActivityThread;
    :try_start_0
    const-class v8, Landroid/app/ActivityThread;

    const-string/jumbo v9, "mActivities"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 384
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 385
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 386
    .local v7, "map":Landroid/util/ArrayMap;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 387
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 388
    .local v1, "activityClientRecord":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 389
    .local v2, "activityField":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 390
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 391
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 392
    return-object v0

    .line 386
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 395
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "activityClientRecord":Ljava/lang/Object;
    .end local v2    # "activityField":Ljava/lang/reflect/Field;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "i":I
    .end local v7    # "map":Landroid/util/ArrayMap;
    :catch_0
    move-exception v4

    .line 396
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 398
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v8, 0x0

    return-object v8
.end method

.method private isKnownScrollableView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 460
    instance-of v0, p1, Landroid/widget/AbsListView;

    if-nez v0, :cond_0

    .line 461
    instance-of v0, p1, Landroid/widget/ListView;

    .line 460
    if-nez v0, :cond_0

    .line 462
    instance-of v0, p1, Landroid/widget/ScrollView;

    .line 460
    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v0

    .line 460
    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    .line 460
    if-eqz v0, :cond_1

    .line 465
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 467
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isNestedScrollView(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 539
    const-string/jumbo v0, "android.support.v4.widget.NestedScrollView"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x1

    return v0

    .line 542
    :cond_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    const/4 v0, 0x0

    return v0

    .line 545
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isRecyclerView(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 549
    const-string/jumbo v0, "android.support.v7.widget.RecyclerView"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const/4 v0, 0x1

    return v0

    .line 552
    :cond_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    const/4 v0, 0x0

    return v0

    .line 555
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isRecyclerView(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isTencentApp()Z
    .locals 2

    .prologue
    .line 534
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "pkgName":Ljava/lang/String;
    const-string/jumbo v1, "com.tencent."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private scrollView()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getExpectScrollDistance()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->scrollY(Landroid/view/View;I)V

    .line 515
    :cond_0
    return-void
.end method

.method private scrollY(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "distance"    # I

    .prologue
    const/4 v4, 0x0

    .line 559
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 560
    instance-of v1, p1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    .line 569
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    .line 570
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 571
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTempLoc:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    .line 574
    :goto_0
    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v1, :cond_3

    .line 575
    iget-boolean v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNeedUseMultiTouch:Z

    if-eqz v1, :cond_2

    .line 576
    invoke-direct {p0, p2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchMoveAndReset(I)V

    .line 558
    .end local p1    # "view":Landroid/view/View;
    :goto_1
    return-void

    .line 561
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->isNestedScrollView(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    instance-of v1, p1, Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 563
    instance-of v1, p1, Landroid/widget/AbsoluteLayout;

    if-nez v1, :cond_0

    move-object v1, p1

    .line 564
    nop

    nop

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    move-object v0, p1

    .line 565
    nop

    nop

    .line 566
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    .line 567
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledYChildView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mPrevScrolledY:I

    goto :goto_0

    .line 578
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    sub-int/2addr v1, p2

    iput v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 579
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    goto :goto_1

    .line 582
    :cond_3
    instance-of v1, p1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_4

    .line 583
    nop

    nop

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    goto :goto_1

    .line 586
    .restart local p1    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {p1, v4, p2}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1
.end method

.method private start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    iput v2, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTotalScrollDistance:I

    .line 258
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    .line 259
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalScrollBarEnabled:Z

    .line 260
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->checkNeedFakeTouchForScroll()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    .line 262
    iget-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFakeTouchForScroll:Z

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->isTencentApp()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mNeedUseMultiTouch:Z

    .line 266
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->getScrollViewVisibleHeight()I

    move-result v0

    iget v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mVerticalEdge:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mTouchY:I

    .line 267
    invoke-direct {p0, v2}, Lmiui/util/LongScreenshotUtils$ContentPort;->dispatchFakeTouchEvent(I)V

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mIsFirstMove:Z

    .line 271
    :cond_0
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 272
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 256
    return-void
.end method


# virtual methods
.method public longScreenshot(I)Z
    .locals 4
    .param p1, "cmd"    # I

    .prologue
    const/4 v3, 0x1

    .line 224
    packed-switch p1, :pswitch_data_0

    .line 253
    :goto_0
    return v3

    .line 227
    :pswitch_0
    invoke-direct {p0}, Lmiui/util/LongScreenshotUtils$ContentPort;->findMainScrollView()Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, "mainScrollView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 230
    const/4 v1, 0x0

    return v1

    .line 233
    :cond_0
    if-ne p1, v3, :cond_1

    .line 234
    return v3

    .line 237
    :cond_1
    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;

    .line 238
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 243
    .end local v0    # "mainScrollView":Landroid/view/View;
    :pswitch_1
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 248
    :pswitch_2
    iget-object v1, p0, Lmiui/util/LongScreenshotUtils$ContentPort;->mHandler:Lmiui/util/LongScreenshotUtils$ContentPort$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
