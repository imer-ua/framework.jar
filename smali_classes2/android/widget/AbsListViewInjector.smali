.class public Landroid/widget/AbsListViewInjector;
.super Ljava/lang/Object;
.source "AbsListViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;,
        Landroid/widget/AbsListViewInjector$CircEaseOutInterpolator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static edgeReached(Landroid/widget/AbsListView;I)Z
    .locals 11
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "offset"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 166
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 168
    .local v2, "childCount":I
    if-lez v2, :cond_c

    .line 169
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 170
    .local v3, "firstPosition":I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 172
    .local v6, "listPadding":Landroid/graphics/Rect;
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    .line 173
    .local v4, "firstTop":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 175
    .local v5, "lastBottom":I
    if-nez v3, :cond_3

    .line 176
    iget v7, v6, Landroid/graphics/Rect;->top:I

    if-lt v4, v7, :cond_2

    const/4 v0, 0x1

    .line 177
    .local v0, "cannotScrollDown":Z
    :goto_0
    add-int v7, v3, v2

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v7, v10, :cond_5

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v10

    if-gt v5, v7, :cond_4

    move v1, v9

    .line 180
    .local v1, "cannotScrollUp":Z
    :goto_1
    if-eqz v1, :cond_6

    move v7, v0

    :goto_2
    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    .line 182
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    if-eqz v7, :cond_7

    .line 183
    iget v7, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-nez v7, :cond_0

    .line 184
    iput p1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    .line 196
    :cond_0
    :goto_3
    if-eqz v0, :cond_b

    if-lez p1, :cond_b

    .line 197
    :cond_1
    return v9

    .line 176
    .end local v0    # "cannotScrollDown":Z
    .end local v1    # "cannotScrollUp":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "cannotScrollDown":Z
    goto :goto_0

    .line 175
    .end local v0    # "cannotScrollDown":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "cannotScrollDown":Z
    goto :goto_0

    :cond_4
    move v1, v8

    .line 178
    goto :goto_1

    :cond_5
    move v1, v8

    .line 177
    goto :goto_1

    .restart local v1    # "cannotScrollUp":Z
    :cond_6
    move v7, v8

    .line 180
    goto :goto_2

    .line 186
    :cond_7
    if-eqz v0, :cond_9

    .line 187
    iget v7, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-eqz v7, :cond_8

    iget v7, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-ge p1, v7, :cond_0

    .line 188
    :cond_8
    iput p1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    goto :goto_3

    .line 190
    :cond_9
    if-eqz v1, :cond_0

    .line 191
    iget v7, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-eqz v7, :cond_a

    iget v7, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    if-le p1, v7, :cond_0

    .line 192
    :cond_a
    iput p1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    goto :goto_3

    .line 196
    :cond_b
    if-eqz v1, :cond_c

    if-ltz p1, :cond_1

    .line 200
    .end local v0    # "cannotScrollDown":Z
    .end local v1    # "cannotScrollUp":Z
    .end local v3    # "firstPosition":I
    .end local v4    # "firstTop":I
    .end local v5    # "lastBottom":I
    .end local v6    # "listPadding":Landroid/graphics/Rect;
    :cond_c
    return v8
.end method

.method public static getPanSpeed(Landroid/widget/AbsListView;I)I
    .locals 5
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isAnimating(Landroid/widget/AbsListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    return v1

    .line 37
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    .line 38
    iget v1, p0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v0, p1, v1

    .line 44
    .local v0, "inertia":I
    :goto_0
    return v0

    .line 40
    .end local v0    # "inertia":I
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mDownMotionY:I

    sub-int v2, p1, v2

    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_2

    :goto_1
    sub-int v0, v2, v1

    .restart local v0    # "inertia":I
    goto :goto_0

    .line 42
    .end local v0    # "inertia":I
    :cond_2
    iget v1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1
.end method

.method public static initOnTouchDown(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V
    .locals 2
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsTouching:Z

    .line 26
    iput v1, p0, Landroid/widget/AbsListView;->mInertia:I

    .line 27
    iput v1, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mDownMotionY:I

    .line 24
    return-void
.end method

.method private static isAnimating(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 209
    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z
    .locals 2
    .param p0, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needFinishActionMode(Landroid/widget/AbsListView;)Z
    .locals 2
    .param p0, "listView"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static onRenderTick(Landroid/widget/AbsListView;Landroid/graphics/Canvas;)V
    .locals 4
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 69
    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isAnimating(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-static {p0, p1, v2, v2}, Landroid/widget/AbsListViewInjector;->setListScale(Landroid/widget/AbsListView;Landroid/graphics/Canvas;IZ)V

    .line 75
    return-void

    .line 78
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsTouching:Z

    if-eqz v0, :cond_4

    .line 79
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScaleYDirty:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mScaleY:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    .line 80
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    invoke-static {p0, p1, v0, v2}, Landroid/widget/AbsListViewInjector;->setListScale(Landroid/widget/AbsListView;Landroid/graphics/Canvas;IZ)V

    .line 81
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScaleYDirty:Z

    .line 83
    :cond_3
    return-void

    .line 86
    :cond_4
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    invoke-static {p0, v0}, Landroid/widget/AbsListViewInjector;->edgeReached(Landroid/widget/AbsListView;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/widget/AbsListViewInjector;->setListScale(Landroid/widget/AbsListView;Landroid/graphics/Canvas;IZ)V

    .line 88
    iput v2, p0, Landroid/widget/AbsListView;->mInertia:I

    .line 68
    :cond_5
    :goto_0
    return-void

    .line 90
    :cond_6
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    int-to-float v0, v0

    const v1, 0x3f7ae148    # 0.98f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mInertia:I

    .line 91
    iget v0, p0, Landroid/widget/AbsListView;->mInertia:I

    if-nez v0, :cond_5

    .line 92
    iput v3, p0, Landroid/widget/AbsListView;->mScaleY:F

    goto :goto_0
.end method

.method public static resetScale(Landroid/widget/AbsListView;)V
    .locals 1
    .param p0, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 62
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mInertia:I

    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/AbsListView;->mScaleY:F

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 61
    return-void
.end method

.method private static setListScale(Landroid/widget/AbsListView;Landroid/graphics/Canvas;IZ)V
    .locals 12
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offset"    # I
    .param p3, "isTween"    # Z

    .prologue
    .line 98
    if-nez p2, :cond_0

    .line 99
    iget v5, p0, Landroid/widget/AbsListView;->mScaleY:F

    iget v8, p0, Landroid/widget/AbsListView;->mLastPivotX:F

    iget v9, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1, v10, v5, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 101
    return-void

    .line 104
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v6, v8, v10

    .line 105
    .local v6, "sqrtOffset":D
    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v2, v6, v8

    .line 106
    .local v2, "scaleRatio":D
    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 108
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    if-eqz v5, :cond_1

    if-gez p2, :cond_1

    .line 109
    neg-double v2, v2

    .line 112
    :cond_1
    double-to-float v5, v2

    const/high16 v8, 0x3f800000    # 1.0f

    add-float v4, v8, v5

    .line 113
    .local v4, "scaleY":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, p0, Landroid/widget/AbsListView;->mLastPivotX:F

    .line 114
    if-gtz p2, :cond_2

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsShortList:Z

    if-eqz v5, :cond_5

    .line 115
    :cond_2
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    .line 120
    :goto_0
    if-eqz p3, :cond_7

    .line 121
    iget v5, p0, Landroid/widget/AbsListView;->mScaleY:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_3

    .line 122
    iget v5, p0, Landroid/widget/AbsListView;->mScaleY:F

    iget v8, p0, Landroid/widget/AbsListView;->mLastPivotX:F

    iget v9, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1, v10, v5, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 126
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_4

    .line 127
    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 129
    :cond_4
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 131
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v8, 0x0

    aput v4, v5, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    aput v8, v5, v9

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 132
    .local v1, "scaleBackAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x190

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 133
    new-instance v5, Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;

    invoke-direct {v5}, Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 134
    new-instance v5, Landroid/widget/AbsListViewInjector$1;

    invoke-direct {v5, p0}, Landroid/widget/AbsListViewInjector$1;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    iget v5, p0, Landroid/widget/AbsListView;->mScaleY:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-nez v5, :cond_6

    .line 143
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    aput v8, v5, v9

    const/4 v8, 0x1

    aput v4, v5, v8

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 144
    .local v0, "scaleAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 145
    new-instance v5, Landroid/widget/AbsListViewInjector$CircEaseOutInterpolator;

    invoke-direct {v5}, Landroid/widget/AbsListViewInjector$CircEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    new-instance v5, Landroid/widget/AbsListViewInjector$2;

    invoke-direct {v5, p0}, Landroid/widget/AbsListViewInjector$2;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 153
    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 157
    .end local v0    # "scaleAnimator":Landroid/animation/ValueAnimator;
    :goto_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 97
    .end local v1    # "scaleBackAnimator":Landroid/animation/ValueAnimator;
    :goto_2
    return-void

    .line 117
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    goto/16 :goto_0

    .line 155
    .restart local v1    # "scaleBackAnimator":Landroid/animation/ValueAnimator;
    :cond_6
    iget-object v5, p0, Landroid/widget/AbsListView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 159
    .end local v1    # "scaleBackAnimator":Landroid/animation/ValueAnimator;
    :cond_7
    iget v5, p0, Landroid/widget/AbsListView;->mLastPivotX:F

    iget v8, p0, Landroid/widget/AbsListView;->mLastPivotY:F

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p1, v9, v4, v5, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 160
    iput v4, p0, Landroid/widget/AbsListView;->mScaleY:F

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2
.end method

.method public static setListScaleIfNeeded(Landroid/widget/AbsListView;I)Z
    .locals 5
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-static {p0}, Landroid/widget/AbsListViewInjector;->isSpringOverscrollEnabled(Landroid/widget/AbsListView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    invoke-static {p0, p1}, Landroid/widget/AbsListViewInjector;->edgeReached(Landroid/widget/AbsListView;I)Z

    move-result v0

    .line 50
    .local v0, "atEdge":Z
    if-eqz v0, :cond_0

    .line 51
    iget v4, p0, Landroid/widget/AbsListView;->mOffsetRevise:I

    sub-int v1, p1, v4

    .line 52
    .local v1, "offsetRevise":I
    iput v1, p0, Landroid/widget/AbsListView;->mInertia:I

    .line 53
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScaleYDirty:Z

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 56
    .end local v1    # "offsetRevise":I
    :cond_0
    iget v4, p0, Landroid/widget/AbsListView;->mInertia:I

    if-eqz v4, :cond_1

    :goto_0
    and-int/2addr v2, v0

    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 58
    .end local v0    # "atEdge":Z
    :cond_2
    return v3
.end method
