.class Landroid/inputmethodservice/RecodingStateAnimatorView$8$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecodingStateAnimatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView$8;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView$8;)V
    .locals 0
    .param p1, "this$1"    # Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    .prologue
    .line 283
    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$2;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    .line 286
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

    .line 287
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$2;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v0, v0, v3

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$2;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v1

    aget-object v1, v1, v3

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMaxRad:F

    .line 288
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$8$2;->this$1:Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    iget-object v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$8;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v2}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v2

    aget-object v2, v2, v3

    iget v2, v2, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->scale:F

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    const v3, 0x3f19999a    # 0.6f

    add-float/2addr v2, v3

    .line 287
    mul-float/2addr v1, v2

    iput v1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->dynamicVoiceMaxRad:F

    .line 285
    :cond_0
    return-void
.end method
