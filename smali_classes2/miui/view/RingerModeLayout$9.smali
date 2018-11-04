.class Lmiui/view/RingerModeLayout$9;
.super Ljava/lang/Object;
.source "RingerModeLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/RingerModeLayout;->expandSilenceModeContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method constructor <init>(Lmiui/view/RingerModeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/view/RingerModeLayout;

    .prologue
    .line 575
    iput-object p1, p0, Lmiui/view/RingerModeLayout$9;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 597
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 587
    iget-object v3, p0, Lmiui/view/RingerModeLayout$9;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get3(Lmiui/view/RingerModeLayout;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 588
    .local v0, "dialogParentView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 589
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, -0x2

    .line 590
    .local v1, "height":I
    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 591
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    iget-object v3, p0, Lmiui/view/RingerModeLayout$9;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get16(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/view/VolumeDialog;->rescheduleTimeout(Z)V

    .line 593
    iget-object v3, p0, Lmiui/view/RingerModeLayout$9;->this$0:Lmiui/view/RingerModeLayout;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmiui/view/RingerModeLayout;->-set0(Lmiui/view/RingerModeLayout;Z)Z

    .line 586
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 602
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 578
    iget-object v3, p0, Lmiui/view/RingerModeLayout$9;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get3(Lmiui/view/RingerModeLayout;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 579
    .local v0, "dialogParentView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 580
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v1, 0x3e8

    .line 581
    .local v1, "height":I
    const/16 v3, 0x3e8

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 582
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    return-void
.end method
