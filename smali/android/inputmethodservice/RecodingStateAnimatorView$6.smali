.class Landroid/inputmethodservice/RecodingStateAnimatorView$6;
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


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/RecodingStateAnimatorView;

    .prologue
    .line 229
    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$6;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$6;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v0, v0, v2

    iget-boolean v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->flag1:Z

    if-eqz v0, :cond_0

    .line 234
    check-cast p1, Landroid/animation/ValueAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 235
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$6;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v0, v0, v2

    iput-boolean v2, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->flag1:Z

    .line 232
    :cond_0
    return-void
.end method
