.class Landroid/inputmethodservice/RecodingStateAnimatorView$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecodingStateAnimatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView;->changeState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

.field v2:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/RecodingStateAnimatorView;

    .prologue
    .line 333
    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v4, 0x0

    .line 338
    check-cast p1, Landroid/animation/ValueAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 339
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 341
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 342
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get0(Landroid/inputmethodservice/RecodingStateAnimatorView;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 344
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v2

    aget-object v2, v2, v4

    iget-object v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->getEndColor()I

    move-result v0

    .line 345
    .local v0, "currentColor":I
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v2, v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-wrap0(Landroid/inputmethodservice/RecodingStateAnimatorView;I)I

    move-result v1

    .line 346
    .local v1, "dstColor":I
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v2

    aget-object v2, v2, v4

    iget-object v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v2, v0}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->setStartColor(I)V

    .line 347
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v2

    aget-object v2, v2, v4

    iget-object v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v2, v1}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->setEndColor(I)V

    .line 348
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    .line 349
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView$10;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 359
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 360
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 361
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get0(Landroid/inputmethodservice/RecodingStateAnimatorView;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->v2:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 337
    .end local v0    # "currentColor":I
    .end local v1    # "dstColor":I
    :cond_1
    return-void
.end method
