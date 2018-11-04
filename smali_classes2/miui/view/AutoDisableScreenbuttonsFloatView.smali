.class public Lmiui/view/AutoDisableScreenbuttonsFloatView;
.super Landroid/widget/FrameLayout;
.source "AutoDisableScreenbuttonsFloatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/AutoDisableScreenbuttonsFloatView$1;
    }
.end annotation


# static fields
.field private static final DISMISS_DELAY_TIME:I = 0x1f40


# instance fields
.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mIsShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;

    invoke-direct {v0, p0}, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;-><init>(Lmiui/view/AutoDisableScreenbuttonsFloatView;)V

    iput-object v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mDismissRunnable:Ljava/lang/Runnable;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;

    invoke-direct {v0, p0}, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;-><init>(Lmiui/view/AutoDisableScreenbuttonsFloatView;)V

    iput-object v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mDismissRunnable:Ljava/lang/Runnable;

    .line 32
    return-void
.end method

.method public static inflate(Landroid/content/Context;)Lmiui/view/AutoDisableScreenbuttonsFloatView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    const v1, 0x11030004

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/view/AutoDisableScreenbuttonsFloatView;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mIsShowing:Z

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mIsShowing:Z

    .line 72
    iget-object v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 73
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 37
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v4, -0x2

    .line 48
    iget-boolean v2, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mIsShowing:Z

    if-eqz v2, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 52
    .local v1, "wm":Landroid/view/WindowManager;
    if-nez v1, :cond_1

    .line 53
    return-void

    .line 54
    :cond_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 55
    const/16 v2, 0x7da

    .line 54
    invoke-direct {v0, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 56
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 57
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    const/16 v2, 0x108

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 59
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 60
    const v2, 0x110d0008

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 61
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v2, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f40

    invoke-virtual {p0, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView;->mIsShowing:Z

    .line 47
    return-void
.end method
