.class Lmiui/view/RingerModeLayout$7;
.super Ljava/lang/Object;
.source "RingerModeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/RingerModeLayout;->updateRemainText(Z)V
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
    .line 511
    iput-object p1, p0, Lmiui/view/RingerModeLayout$7;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 515
    .local v0, "value":F
    iget-object v1, p0, Lmiui/view/RingerModeLayout$7;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get7(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 513
    return-void
.end method
