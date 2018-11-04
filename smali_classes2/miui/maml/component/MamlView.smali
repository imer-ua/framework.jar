.class public Lmiui/maml/component/MamlView;
.super Landroid/widget/FrameLayout;
.source "MamlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/component/MamlView$InnerView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MamlView"


# instance fields
.field private mHasDelay:Z

.field private mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

.field protected mNeedDisallowInterceptTouchEvent:Z

.field private mPivotX:I

.field private mPivotY:I

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mScale:F

.field private mUpdater:Lmiui/maml/RenderVsyncUpdater;

.field private mView:Lmiui/maml/component/MamlView$InnerView;


# direct methods
.method static synthetic -get0(Lmiui/maml/component/MamlView;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/component/MamlView;->mHasDelay:Z

    return v0
.end method

.method static synthetic -get1(Lmiui/maml/component/MamlView;)I
    .locals 1

    iget v0, p0, Lmiui/maml/component/MamlView;->mPivotX:I

    return v0
.end method

.method static synthetic -get2(Lmiui/maml/component/MamlView;)I
    .locals 1

    iget v0, p0, Lmiui/maml/component/MamlView;->mPivotY:I

    return v0
.end method

.method static synthetic -get3(Lmiui/maml/component/MamlView;)F
    .locals 1

    iget v0, p0, Lmiui/maml/component/MamlView;->mScale:F

    return v0
.end method

.method static synthetic -get4(Lmiui/maml/component/MamlView;)Lmiui/maml/RenderVsyncUpdater;
    .locals 1

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    return-object v0
.end method

.method static synthetic -get5(Lmiui/maml/component/MamlView;)Lmiui/maml/component/MamlView$InnerView;
    .locals 1

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 47
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p3, "startDelay"    # J

    .prologue
    .line 51
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p3, "h"    # Landroid/os/Handler;
    .param p4, "startDelay"    # J

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 57
    invoke-virtual {p0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 58
    invoke-virtual {p0, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 59
    if-nez p2, :cond_0

    .line 60
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 62
    :cond_0
    new-instance v3, Lmiui/maml/component/MamlView$InnerView;

    invoke-direct {v3, p0, p1}, Lmiui/maml/component/MamlView$InnerView;-><init>(Lmiui/maml/component/MamlView;Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    .line 63
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 66
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iput-object p2, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 68
    iget-object v3, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3, p0}, Lmiui/maml/ScreenElementRoot;->setViewManager(Landroid/view/ViewManager;)V

    .line 69
    iget-object v3, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    new-instance v4, Lmiui/maml/component/MamlView$1;

    invoke-direct {v4, p0}, Lmiui/maml/component/MamlView$1;-><init>(Lmiui/maml/component/MamlView;)V

    invoke-virtual {v3, v4}, Lmiui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    .line 76
    new-instance v3, Lmiui/maml/component/MamlView$2;

    iget-object v4, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v3, p0, v4, p3}, Lmiui/maml/component/MamlView$2;-><init>(Lmiui/maml/component/MamlView;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    .line 82
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_1

    .line 83
    iput-boolean v6, p0, Lmiui/maml/component/MamlView;->mHasDelay:Z

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 85
    .local v0, "createTime":J
    iget-object v3, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    invoke-virtual {v3, v0, v1, p4, p5}, Lmiui/maml/RenderVsyncUpdater;->setStartDelay(JJ)V

    .line 87
    .end local v0    # "createTime":J
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->init()V

    .line 89
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    .line 90
    new-instance v3, Lmiui/maml/util/MamlAccessHelper;

    iget-object v4, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v3, v4, p0}, Lmiui/maml/util/MamlAccessHelper;-><init>(Lmiui/maml/ScreenElementRoot;Landroid/view/View;)V

    iput-object v3, p0, Lmiui/maml/component/MamlView;->mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

    .line 91
    iget-object v3, p0, Lmiui/maml/component/MamlView;->mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

    invoke-virtual {p0, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 54
    :cond_2
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->cleanUp(Z)V

    .line 146
    return-void
.end method

.method public cleanUp(Z)V
    .locals 1
    .param p1, "keepResource"    # Z

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 154
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater;->cleanUp()V

    .line 151
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    return v0

    .line 100
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 143
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater;->init()V

    .line 140
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 202
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onResume()V

    .line 200
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 254
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 208
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onPause()V

    .line 206
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 195
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    .line 196
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 129
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string/jumbo v2, "accessibilityText"

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 128
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 221
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 223
    iget-object v5, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v2, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 224
    .local v2, "vars":Lmiui/maml/data/Variables;
    const-string/jumbo v5, "view_width"

    sub-int v6, p4, p2

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 225
    const-string/jumbo v5, "view_height"

    sub-int v6, p5, p3

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 227
    move v3, p2

    .line 228
    .local v3, "x":I
    move v4, p3

    .line 229
    .local v4, "y":I
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 230
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v5, v0, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 231
    check-cast v1, Landroid/view/View;

    .line 232
    .local v1, "parentView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 237
    .end local v1    # "parentView":Landroid/view/View;
    :cond_0
    const-string/jumbo v5, "view_x"

    int-to-float v6, v3

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 238
    const-string/jumbo v5, "view_y"

    int-to-float v6, v4

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 240
    iget-object v5, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    invoke-virtual {v5}, Lmiui/maml/RenderVsyncUpdater;->triggerUpdate()V

    .line 220
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater;->onPause()V

    .line 211
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater;->onResume()V

    .line 215
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .line 184
    .local v0, "b":Z
    iget-boolean v1, p0, Lmiui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v1, v0, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 186
    iput-boolean v0, p0, Lmiui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    .line 189
    :cond_0
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    .line 190
    const/4 v1, 0x1

    return v1
.end method

.method public setAutoCleanup(Z)Lmiui/maml/component/MamlView;
    .locals 1
    .param p1, "autoCleanup"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    invoke-virtual {v0, p1}, Lmiui/maml/RenderVsyncUpdater;->setAutoCleanup(Z)V

    .line 136
    return-object p0
.end method

.method public setScale(FII)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 246
    iput p1, p0, Lmiui/maml/component/MamlView;->mScale:F

    .line 247
    iput p2, p0, Lmiui/maml/component/MamlView;->mPivotX:I

    .line 248
    iput p3, p0, Lmiui/maml/component/MamlView;->mPivotY:I

    .line 245
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 174
    if-nez p1, :cond_1

    .line 175
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onResume()V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 177
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onPause()V

    goto :goto_0
.end method
