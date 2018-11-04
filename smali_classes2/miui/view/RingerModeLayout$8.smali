.class Lmiui/view/RingerModeLayout$8;
.super Ljava/lang/Object;
.source "RingerModeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 567
    iput-object p1, p0, Lmiui/view/RingerModeLayout$8;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 570
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 571
    .local v0, "value":I
    iget-object v1, p0, Lmiui/view/RingerModeLayout$8;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get11(Lmiui/view/RingerModeLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 572
    iget-object v1, p0, Lmiui/view/RingerModeLayout$8;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get11(Lmiui/view/RingerModeLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 569
    return-void
.end method
