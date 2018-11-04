.class Landroid/inputmethodservice/RecodingStateAnimatorView$1;
.super Ljava/lang/Object;
.source "RecodingStateAnimatorView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView;->checkSize()V
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
    .line 50
    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$1;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$1;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get3(Landroid/inputmethodservice/RecodingStateAnimatorView;)I

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$1;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$1;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-static {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-get2(Landroid/inputmethodservice/RecodingStateAnimatorView;)I

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$1;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 54
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$1;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-virtual {v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->init()V

    .line 56
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
