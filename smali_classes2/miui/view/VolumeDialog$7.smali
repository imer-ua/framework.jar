.class Lmiui/view/VolumeDialog$7;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog;->expandVolumeBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;

.field final synthetic val$isExpanded:Z


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;Z)V
    .locals 0
    .param p1, "this$0"    # Lmiui/view/VolumeDialog;
    .param p2, "val$isExpanded"    # Z

    .prologue
    .line 524
    iput-object p1, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    iput-boolean p2, p0, Lmiui/view/VolumeDialog$7;->val$isExpanded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 561
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, -0x2

    .line 546
    iget-boolean v3, p0, Lmiui/view/VolumeDialog$7;->val$isExpanded:Z

    if-nez v3, :cond_0

    .line 547
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-wrap11(Lmiui/view/VolumeDialog;)V

    .line 550
    :cond_0
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 551
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 553
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get6(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 554
    .local v0, "dialogParentView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 555
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, -0x2

    .line 556
    .local v1, "height":I
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 557
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 566
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v6, 0x0

    .line 527
    iget-boolean v3, p0, Lmiui/view/VolumeDialog$7;->val$isExpanded:Z

    if-eqz v3, :cond_0

    .line 528
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-wrap11(Lmiui/view/VolumeDialog;)V

    .line 531
    :cond_0
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get6(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 532
    .local v0, "dialogParentView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 533
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v3, 0x3e8

    .line 534
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 535
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 538
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 539
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get12(Lmiui/view/VolumeDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 540
    iget-boolean v3, p0, Lmiui/view/VolumeDialog$7;->val$isExpanded:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 541
    .local v1, "height":I
    :goto_0
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get7(Lmiui/view/VolumeDialog;)Landroid/animation/ValueAnimator;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v5}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 526
    return-void

    .line 540
    .end local v1    # "height":I
    :cond_1
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get12(Lmiui/view/VolumeDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0
.end method
