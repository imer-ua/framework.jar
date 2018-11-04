.class Landroid/widget/Editor$SelectionPopupWindow;
.super Landroid/widget/Editor$ActionPopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionPopupWindow"
.end annotation


# instance fields
.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "handleView"    # Landroid/widget/Editor$HandleView;

    .prologue
    .line 4191
    iput-object p1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    .line 4192
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V

    .line 4191
    return-void
.end method


# virtual methods
.method protected createAnimations()V
    .locals 6

    .prologue
    .line 4197
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    .line 4198
    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4200
    .local v1, "scaleAnimatorX":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4201
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4202
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4204
    iget-object v2, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4205
    const v3, 0x11040008

    .line 4204
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4206
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v2, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput-object v2, p0, Landroid/widget/Editor$SelectionPopupWindow;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4207
    iget-object v2, p0, Landroid/widget/Editor$SelectionPopupWindow;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4208
    iget-object v2, p0, Landroid/widget/Editor$SelectionPopupWindow;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    const v3, 0x3d4ccccd    # 0.05f

    invoke-virtual {v2, v3}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 4196
    return-void

    .line 4198
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public fadeIn(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4213
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 4214
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 4216
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4217
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 4212
    return-void
.end method
