.class Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;
.super Ljava/lang/Object;
.source "RecodingStateAnimatorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView$10;->onAnimationRepeat(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$10;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView$10;)V
    .locals 0
    .param p1, "this$1"    # Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    .prologue
    .line 349
    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v3, 0x0

    .line 353
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v1, v0, v3

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v0, v0, v3

    iget-object v2, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    .line 354
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 353
    invoke-virtual {v2, v0}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->getColor(F)I

    move-result v0

    iput v0, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    .line 355
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    iget-object v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v1

    aget-object v1, v1, v3

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$10$1;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$10;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-wrap3(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    .line 352
    return-void
.end method
