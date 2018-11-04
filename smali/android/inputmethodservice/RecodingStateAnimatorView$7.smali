.class Landroid/inputmethodservice/RecodingStateAnimatorView$7;
.super Ljava/lang/Object;
.source "RecodingStateAnimatorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$ball2Start:F


# direct methods
.method constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView;F)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/RecodingStateAnimatorView;
    .param p2, "val$ball2Start"    # F

    .prologue
    .line 246
    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$7;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    iput p2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$7;->val$ball2Start:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v4, 0x1

    .line 250
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$7;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v0

    aget-object v1, v0, v4

    iget v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$7;->val$ball2Start:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 251
    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$7;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v3}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get1(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    move-result-object v3

    aget-object v3, v3, v4

    iget v3, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMaxRad:F

    iget v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$7;->val$ball2Start:F

    sub-float/2addr v3, v4

    .line 250
    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    .line 252
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$7;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-wrap3(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    .line 249
    return-void
.end method
