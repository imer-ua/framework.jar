.class public Landroid/inputmethodservice/RecodingStateAnimatorView;
.super Landroid/view/View;
.source "RecodingStateAnimatorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;,
        Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;,
        Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecodingStateAnimatorView"


# instance fields
.field private mAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

.field private mHeight:I

.field private mLastInvalidTime:J

.field private mLoadingColor:[I

.field private mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

.field private mResume:Z

.field private mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Landroid/inputmethodservice/RecodingStateAnimatorView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    return-object v0
.end method

.method static synthetic -get2(Landroid/inputmethodservice/RecodingStateAnimatorView;)I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mHeight:I

    return v0
.end method

.method static synthetic -get3(Landroid/inputmethodservice/RecodingStateAnimatorView;)I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/inputmethodservice/RecodingStateAnimatorView;I)I
    .locals 1
    .param p1, "color"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->getNextLoadingColor(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
    .locals 0
    .param p1, "state"    # Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .prologue
    invoke-direct {p0, p1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->changeState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/inputmethodservice/RecodingStateAnimatorView;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->processStateChange()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/inputmethodservice/RecodingStateAnimatorView;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->updateValueOrUi()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    .line 28
    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLastInvalidTime:J

    .line 41
    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->checkSize()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    .line 28
    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLastInvalidTime:J

    .line 46
    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->checkSize()V

    .line 44
    return-void
.end method

.method private cancelAnimators()V
    .locals 3

    .prologue
    .line 126
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "animator$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 127
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 128
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 129
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 131
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 125
    return-void
.end method

.method private changeState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
    .locals 11
    .param p1, "state"    # Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 191
    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    .line 192
    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .line 193
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .line 194
    sget-object v4, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    if-ne p1, v4, :cond_2

    .line 195
    new-array v4, v9, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 196
    .local v2, "v1":Landroid/animation/ValueAnimator;
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    iput v5, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    .line 197
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v5, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    .line 198
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iput-boolean v8, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->flag1:Z

    .line 199
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v4, v7

    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iget-object v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v4}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->getV()F

    move-result v4

    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    .line 200
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iget-object v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v4}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->getStartColor()I

    move-result v4

    .line 199
    :goto_0
    iput v4, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    .line 202
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iget-object v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iget v0, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    .line 205
    .local v0, "ball1Start":F
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v8

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    iput v5, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    .line 206
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v8

    iget-object v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v8

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v8

    iget-object v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 208
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v8

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v8

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v5, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    .line 209
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v8

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v8

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    iput v5, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    .line 210
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v8

    iput-boolean v8, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->flag1:Z

    .line 211
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iget v1, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    .line 213
    .local v1, "ball2Start":F
    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 214
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    new-instance v4, Landroid/inputmethodservice/RecodingStateAnimatorView$5;

    invoke-direct {v4, p0, v0}, Landroid/inputmethodservice/RecodingStateAnimatorView$5;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;F)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 229
    new-instance v4, Landroid/inputmethodservice/RecodingStateAnimatorView$6;

    invoke-direct {v4, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$6;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    invoke-virtual {v2, v10}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 240
    invoke-virtual {v2, v9}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 241
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 243
    new-array v4, v9, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 244
    .local v3, "v2p1":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 245
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    new-instance v4, Landroid/inputmethodservice/RecodingStateAnimatorView$7;

    invoke-direct {v4, p0, v1}, Landroid/inputmethodservice/RecodingStateAnimatorView$7;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 255
    new-instance v4, Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    invoke-direct {v4, p0, v3}, Landroid/inputmethodservice/RecodingStateAnimatorView$8;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 300
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 371
    .end local v0    # "ball1Start":F
    .end local v1    # "ball2Start":F
    .end local v2    # "v1":Landroid/animation/ValueAnimator;
    .end local v3    # "v2p1":Landroid/animation/ValueAnimator;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 190
    return-void

    .line 201
    .restart local v2    # "v1":Landroid/animation/ValueAnimator;
    :cond_1
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iget-object v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v4}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->getEndColor()I

    move-result v4

    goto/16 :goto_0

    .line 302
    .end local v2    # "v1":Landroid/animation/ValueAnimator;
    :cond_2
    sget-object v4, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    if-ne p1, v4, :cond_0

    .line 303
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iput v7, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    .line 304
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v5, v5, v7

    iput v5, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    .line 305
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iget-object v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v5, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    .line 307
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v7

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    iput v5, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    .line 308
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iget-object v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->setStartColor(I)V

    .line 309
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v7

    iget-object v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->setEndColor(I)V

    .line 311
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v8

    iput v8, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    .line 312
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v8

    iput v10, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    .line 313
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v8

    iget-object v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v8

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v8

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v8

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v5, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    .line 315
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v8

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v8

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    iput v5, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    .line 316
    new-array v4, v9, [F

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 317
    .restart local v2    # "v1":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    const-wide/16 v4, 0x258

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 319
    new-instance v4, Landroid/inputmethodservice/RecodingStateAnimatorView$9;

    invoke-direct {v4, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$9;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 333
    new-instance v4, Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    invoke-direct {v4, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$10;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 366
    invoke-virtual {v2, v10}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 367
    invoke-virtual {v2, v9}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 368
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    .line 195
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 243
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 316
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkSize()V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/inputmethodservice/RecodingStateAnimatorView$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$1;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 49
    return-void
.end method

.method private getNextLoadingColor(I)I
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 180
    const/4 v1, -0x1

    .line 181
    .local v1, "r":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 182
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 183
    move v1, v0

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    .line 187
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v2, v2, v1

    return v2
.end method

.method private processStateChange()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 72
    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mResume:Z

    if-eqz v6, :cond_0

    .line 73
    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    sget-object v7, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    sget-object v7, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    if-ne v6, v7, :cond_1

    .line 74
    iput-object v8, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .line 75
    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    .line 77
    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v6, v10

    iget v2, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    .line 78
    .local v2, "start1":F
    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v6, v10

    iget v0, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoice2HasVoiceRad:F

    .line 80
    .local v0, "end1":F
    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v6, v9

    iget v3, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    .line 81
    .local v3, "start2":F
    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v6, v9

    iget v1, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoice2HasVoiceRad:F

    .line 82
    .local v1, "end2":F
    new-array v6, v11, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 83
    .local v4, "v1":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 84
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    new-instance v6, Landroid/inputmethodservice/RecodingStateAnimatorView$2;

    invoke-direct {v6, p0, v2, v0}, Landroid/inputmethodservice/RecodingStateAnimatorView$2;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;FF)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 95
    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 97
    new-array v6, v11, [F

    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 98
    .local v5, "v2":Landroid/animation/ValueAnimator;
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    const-wide/16 v6, 0x15e

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    new-instance v6, Landroid/inputmethodservice/RecodingStateAnimatorView$3;

    invoke-direct {v6, p0, v3, v1}, Landroid/inputmethodservice/RecodingStateAnimatorView$3;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;FF)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 108
    new-instance v6, Landroid/inputmethodservice/RecodingStateAnimatorView$4;

    invoke-direct {v6, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$4;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 115
    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 121
    .end local v0    # "end1":F
    .end local v1    # "end2":F
    .end local v2    # "start1":F
    .end local v3    # "start2":F
    .end local v4    # "v1":Landroid/animation/ValueAnimator;
    .end local v5    # "v2":Landroid/animation/ValueAnimator;
    :goto_0
    iput-object v8, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .line 71
    :cond_0
    return-void

    .line 118
    :cond_1
    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    .line 119
    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-direct {p0, v6}, Landroid/inputmethodservice/RecodingStateAnimatorView;->changeState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    goto :goto_0

    .line 82
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 97
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateValueOrUi()V
    .locals 4

    .prologue
    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLastInvalidTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLastInvalidTime:J

    .line 427
    :cond_0
    return-void
.end method


# virtual methods
.method public getPaddingState()Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    return-object v0
.end method

.method public getState()Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    return-object v0
.end method

.method public init()V
    .locals 10

    .prologue
    const/4 v3, 0x3

    const/high16 v9, 0x41380000    # 11.5f

    const/high16 v8, 0x41180000    # 9.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 375
    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    .line 376
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    const v1, -0xcf320f

    aput v1, v0, v6

    .line 377
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    const v1, -0x136d1

    aput v1, v0, v7

    .line 378
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    const v1, -0x99789

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 379
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    const v1, -0xc06c04

    aput v1, v0, v3

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    .line 382
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mHeight:I

    .line 383
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    new-instance v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;)V

    aput-object v1, v0, v6

    .line 384
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    .line 385
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    .line 386
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    .line 387
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    .line 388
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 389
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v1, v1, v3

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    .line 390
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    .line 392
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    .line 393
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v9

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->loadingMinRad:F

    .line 394
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->loadingMaxRad:F

    .line 395
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    .line 396
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x7

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    .line 397
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x9

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoice2HasVoiceRad:F

    .line 398
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iput v6, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    .line 399
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x401e000000000000L    # 7.5

    div-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMaxRad:F

    .line 400
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x9

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMinRad:F

    .line 401
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v6

    new-instance v1, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-direct {v1, p0, v6, v6}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;II)V

    iput-object v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    .line 404
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    new-instance v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;)V

    aput-object v1, v0, v7

    .line 405
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    .line 406
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    .line 407
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v9

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->loadingMinRad:F

    .line 408
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->loadingMaxRad:F

    .line 409
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0xb

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    .line 410
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    .line 411
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    .line 412
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40600000    # 3.5f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMaxRad:F

    .line 413
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMinRad:F

    .line 414
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    .line 415
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 416
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v1, v1, v6

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    .line 417
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v1, v1, v7

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v1, v1, v7

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    .line 419
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v1, v1, v7

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    .line 420
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iget v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoice2HasVoiceRad:F

    .line 421
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    iput v7, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    .line 422
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v7

    new-instance v1, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-direct {v1, p0, v6, v6}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;II)V

    iput-object v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    .line 423
    iput-boolean v7, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mResume:Z

    .line 424
    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->setPreState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    .line 374
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 436
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 437
    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    array-length v1, v3

    .line 438
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 439
    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 440
    .local v2, "params":Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    iget v6, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    if-ne v0, v6, :cond_0

    .line 441
    iget v6, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget v7, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    iget v8, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v9, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 439
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 438
    .end local v2    # "params":Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 64
    if-nez p2, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->resume()V

    .line 62
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->pause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 162
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    if-nez v2, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "animator$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 166
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    goto :goto_0

    .line 161
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 171
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    if-nez v2, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "animator$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 175
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_0

    .line 170
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    return-void
.end method

.method public setPreState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
    .locals 1
    .param p1, "state"    # Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .prologue
    const/4 v0, 0x0

    .line 143
    if-eqz p1, :cond_1

    .line 144
    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .line 145
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->processStateChange()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .line 150
    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .line 151
    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 156
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput p1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->scale:F

    .line 155
    :cond_0
    return-void
.end method
