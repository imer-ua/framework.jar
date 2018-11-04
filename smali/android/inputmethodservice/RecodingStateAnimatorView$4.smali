.class Landroid/inputmethodservice/RecodingStateAnimatorView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecodingStateAnimatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView;->processStateChange()V
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
    .line 108
    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$4;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 112
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$4;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    sget-object v1, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-static {v0, v1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->-wrap1(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    .line 110
    return-void
.end method
