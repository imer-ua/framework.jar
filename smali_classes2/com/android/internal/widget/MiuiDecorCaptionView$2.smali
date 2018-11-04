.class Lcom/android/internal/widget/MiuiDecorCaptionView$2;
.super Landroid/view/ViewOutlineProvider;
.source "MiuiDecorCaptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/MiuiDecorCaptionView;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$2;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$2;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$2;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-get0(Lcom/android/internal/widget/MiuiDecorCaptionView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-wrap0(Lcom/android/internal/widget/MiuiDecorCaptionView;F)F

    move-result v5

    move-object v0, p2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 227
    return-void
.end method
