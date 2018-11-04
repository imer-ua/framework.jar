.class abstract Landroid/widget/Editor$ActionPinnedPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$Fader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ActionPinnedPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$ActionPinnedPopupWindow$1;,
        Landroid/widget/Editor$ActionPinnedPopupWindow$2;
    }
.end annotation


# static fields
.field protected static final LONG_ACTION_MENU_COUNT:I = 0x6


# instance fields
.field protected mAboveHandle:Z

.field protected mAnimationFadeIn:Landroid/animation/AnimatorSet;

.field protected mAnimationFadeOut:Landroid/animation/AnimatorSet;

.field protected mAnimationFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHandleView:Landroid/widget/Editor$HandleView;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field protected mMainPanel:Landroid/widget/TouchPanelLayout;

.field private mShower:Ljava/lang/Runnable;

.field private mSpaceOffScreen:I

.field private final mTouchableRegion:Landroid/graphics/Region;

.field protected mVisibleChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/widget/Editor$HandleView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/graphics/Region;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Editor$ActionPinnedPopupWindow;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isMiddleOffsetInSelection()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "handleView"    # Landroid/widget/Editor$HandleView;

    .prologue
    .line 2643
    iput-object p1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    .line 2644
    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    .line 2598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    .line 2612
    new-instance v0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$ActionPinnedPopupWindow$1;-><init>(Landroid/widget/Editor$ActionPinnedPopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    .line 2630
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    .line 2632
    new-instance v0, Landroid/widget/Editor$ActionPinnedPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$ActionPinnedPopupWindow$2;-><init>(Landroid/widget/Editor$ActionPinnedPopupWindow;)V

    .line 2631
    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 2645
    iput-object p2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    .line 2646
    invoke-static {p1}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2647
    const v1, 0x110b002f

    .line 2646
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    .line 2649
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->createAnimations()V

    .line 2650
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/Editor$AnimatePopupWindow;->setFader(Landroid/widget/Editor$Fader;)V

    .line 2652
    invoke-static {p1}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2653
    const-string/jumbo v1, "layout_inflater"

    .line 2652
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 2643
    return-void
.end method

.method private isMainPanelContent()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2908
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isMiddleOffsetInSelection()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2830
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 2831
    .local v0, "middleOffset":I
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setTouchableSurfaceInsetsComputer()V
    .locals 2

    .prologue
    .line 2958
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2961
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 2962
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 2957
    return-void
.end method


# virtual methods
.method public cancelAnimations()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2851
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2853
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2854
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2850
    return-void
.end method

.method protected clipVertically(I)I
    .locals 10
    .param p1, "positionY"    # I

    .prologue
    const/4 v9, 0x0

    .line 2750
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 2751
    .local v1, "layout":Landroid/text/Layout;
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 2752
    .local v5, "selectionStart":I
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 2753
    .local v4, "selectionEnd":I
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2754
    .local v3, "lineStart":I
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 2755
    .local v2, "lineEnd":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 2756
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    .line 2755
    sub-int v6, v7, v8

    .line 2757
    .local v6, "spaceBetweenSelection":I
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2758
    const v8, 0x110200f0

    .line 2757
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 2760
    .local v0, "handleHeight":I
    if-gez p1, :cond_2

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7, v5}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2761
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 2762
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr p1, v7

    .line 2766
    :goto_0
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr p1, v7

    .line 2767
    div-int/lit8 v7, v0, 0x2

    add-int/2addr p1, v7

    .line 2769
    iput-boolean v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    .line 2787
    :cond_0
    :goto_1
    return p1

    .line 2764
    :cond_1
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr p1, v7

    goto :goto_0

    .line 2770
    :cond_2
    if-gez p1, :cond_3

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2771
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    .line 2772
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    add-int/2addr p1, v7

    .line 2773
    div-int/lit8 v7, v0, 0x2

    add-int/2addr p1, v7

    .line 2775
    iput-boolean v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    goto :goto_1

    .line 2776
    :cond_3
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, p1

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-wrap10(Landroid/widget/Editor;)I

    move-result v8

    if-le v7, v8, :cond_0

    .line 2777
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7, v4}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;I)Z

    move-result v7

    .line 2776
    if-eqz v7, :cond_0

    .line 2778
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 2779
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr p1, v7

    .line 2783
    :goto_2
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr p1, v7

    .line 2784
    div-int/lit8 v7, v0, 0x2

    sub-int/2addr p1, v7

    goto :goto_1

    .line 2781
    :cond_4
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr p1, v7

    goto :goto_2
.end method

.method protected computeLocalPosition()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 2676
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 2677
    .local v6, "selectionStart":I
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 2678
    .local v5, "selectionEnd":I
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 2679
    .local v3, "layout":Landroid/text/Layout;
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    .line 2681
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->measureContent()V

    .line 2684
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9, v6}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2685
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 2686
    iget-object v10, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 2685
    sub-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    .line 2687
    iget v9, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    .line 2715
    :goto_0
    iget-object v9, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 2716
    .local v8, "width":I
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    iget v2, v9, Landroid/widget/Editor$HandleView;->mHorizontalScale:F

    .line 2718
    .local v2, "horizontalScale":F
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    .line 2719
    .local v7, "startPositionX":F
    invoke-virtual {v3, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 2720
    .local v0, "endPositionX":F
    add-float v9, v7, v0

    int-to-float v10, v8

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, v2

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    .line 2675
    return-void

    .line 2688
    .end local v0    # "endPositionX":F
    .end local v2    # "horizontalScale":F
    .end local v7    # "startPositionX":F
    .end local v8    # "width":I
    :cond_0
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9, v5}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2689
    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    iput v9, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    .line 2690
    iget v9, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    .line 2692
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 2693
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2694
    const v10, 0x110200f0

    .line 2693
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2695
    .local v1, "handleHeight":I
    iget v9, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    div-int/lit8 v10, v1, 0x2

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    .line 2698
    .end local v1    # "handleHeight":I
    :cond_1
    iput-boolean v11, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    goto :goto_0

    .line 2699
    :cond_2
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2700
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->getTextOffset()I

    move-result v4

    .line 2701
    .local v4, "offset":I
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 2702
    iget-object v10, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 2701
    sub-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    .line 2703
    iget v9, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    goto/16 :goto_0

    .line 2707
    .end local v4    # "offset":I
    :cond_3
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v9

    if-nez v9, :cond_4

    .line 2708
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v9, v10}, Landroid/widget/Editor;->-set3(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2710
    :cond_4
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2711
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    .line 2712
    iget-object v10, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    .line 2711
    sub-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    goto/16 :goto_0
.end method

.method protected abstract createAnimations()V
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 2798
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->dismiss()V

    .line 2799
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setZeroTouchableSurface()V

    .line 2797
    return-void
.end method

.method public fadeOut()V
    .locals 1

    .prologue
    .line 2846
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2845
    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 2841
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 2836
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 2792
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2793
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 2791
    return-void
.end method

.method protected measureContent()V
    .locals 7

    .prologue
    .line 2658
    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2659
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    mul-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 2661
    .local v0, "contentWidth":I
    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_1

    .line 2662
    const/4 v3, 0x5

    .line 2661
    :goto_0
    if-ge v4, v3, :cond_2

    .line 2663
    :cond_0
    const/high16 v2, -0x80000000

    .line 2668
    .local v2, "widthMode":I
    :goto_1
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 2669
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2670
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2671
    const/high16 v6, -0x80000000

    .line 2670
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2668
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 2657
    return-void

    .line 2662
    .end local v2    # "widthMode":I
    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    .line 2665
    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    .restart local v2    # "widthMode":I
    goto :goto_1
.end method

.method protected setContentAreaAsTouchableSurface(Z)V
    .locals 15
    .param p1, "needMeasure"    # Z

    .prologue
    .line 2923
    iget-object v10, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v11, 0x110c0011

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2924
    .local v7, "panel":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 2925
    .local v4, "paddingLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 2926
    .local v6, "paddingTop":I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 2927
    .local v5, "paddingRight":I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 2929
    .local v3, "paddingBottom":I
    if-nez p1, :cond_0

    iget-object v10, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2946
    :goto_0
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 2947
    .local v8, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2948
    .local v1, "height":I
    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    add-int/2addr v11, v4

    .line 2949
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v12, v6

    .line 2950
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    add-int/2addr v13, v8

    sub-int/2addr v13, v5

    .line 2951
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v14

    add-int/2addr v14, v1

    sub-int/2addr v14, v3

    .line 2948
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Region;->set(IIII)Z

    .line 2922
    return-void

    .line 2930
    .end local v1    # "height":I
    .end local v8    # "width":I
    :cond_0
    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2931
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    mul-int/lit8 v11, v11, 0x2

    add-int v2, v10, v11

    .line 2933
    .local v2, "maxWidth":I
    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v10, :cond_1

    .line 2934
    const/4 v10, 0x5

    .line 2933
    :goto_1
    if-ge v11, v10, :cond_2

    .line 2935
    const/high16 v9, -0x80000000

    .line 2941
    .local v9, "widthMode":I
    :goto_2
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 2942
    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2943
    const/high16 v12, -0x80000000

    .line 2942
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 2940
    invoke-virtual {v7, v10, v11}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 2934
    .end local v9    # "widthMode":I
    :cond_1
    const/4 v10, 0x6

    goto :goto_1

    .line 2937
    :cond_2
    const/high16 v9, 0x40000000    # 2.0f

    .restart local v9    # "widthMode":I
    goto :goto_2
.end method

.method protected setMainPanelAsContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2870
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2871
    invoke-virtual {p0, v4}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    .line 2872
    return-void

    .line 2874
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2875
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2878
    invoke-virtual {p0, v4}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    .line 2869
    return-void
.end method

.method protected setSubPanelAsContent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "subView"    # Landroid/view/View;
    .param p2, "panelBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, -0x1

    .line 2882
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->dismiss()V

    .line 2884
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    instance-of v2, v2, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_0

    .line 2885
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    check-cast v2, Landroid/widget/Editor$InsertionHandleView;

    invoke-static {v2}, Landroid/widget/Editor$InsertionHandleView;->-wrap1(Landroid/widget/Editor$InsertionHandleView;)V

    .line 2888
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2889
    .local v1, "subPanel":Landroid/widget/LinearLayout;
    if-eqz p2, :cond_1

    .line 2890
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2891
    const v2, 0x110c0011

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 2893
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2895
    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2896
    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2899
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2900
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->computeLocalPosition()V

    .line 2901
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 2902
    .local v0, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/Editor$ActionPinnedPopupWindow;->updatePosition(II)V

    .line 2904
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    .line 2881
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 2858
    return-void
.end method

.method protected setZeroTouchableSurface()V
    .locals 1

    .prologue
    .line 2916
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 2915
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 2865
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setMainPanelAsContent()V

    .line 2866
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    .line 2864
    return-void
.end method

.method show(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 2825
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2826
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2824
    return-void
.end method

.method protected updatePosition(II)V
    .locals 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    .line 2726
    iget v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    add-int v1, p1, v4

    .line 2727
    .local v1, "positionX":I
    iget v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    add-int v2, p2, v4

    .line 2728
    .local v2, "positionY":I
    invoke-virtual {p0, v2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->clipVertically(I)I

    move-result v2

    .line 2730
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2731
    .local v3, "width":I
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2734
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2735
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2736
    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2738
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2739
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2725
    :goto_0
    return-void

    .line 2741
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2744
    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setTouchableSurfaceInsetsComputer()V

    goto :goto_0
.end method

.method public updatePosition(IIZZ)V
    .locals 3
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 2805
    if-nez p4, :cond_0

    if-eqz p3, :cond_2

    .line 2806
    :cond_0
    const/4 v1, 0x0

    .line 2807
    .local v1, "insertionMode":Z
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    instance-of v2, v2, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_1

    .line 2808
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    check-cast v0, Landroid/widget/Editor$InsertionHandleView;

    .line 2809
    .local v0, "insertionHandle":Landroid/widget/Editor$InsertionHandleView;
    invoke-static {v0}, Landroid/widget/Editor$InsertionHandleView;->-wrap1(Landroid/widget/Editor$InsertionHandleView;)V

    .line 2810
    const/4 v2, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v2}, Landroid/widget/Editor$InsertionHandleView;->-set0(Landroid/widget/Editor$InsertionHandleView;Z)Z

    .line 2813
    .end local v0    # "insertionHandle":Landroid/widget/Editor$InsertionHandleView;
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isMainPanelContent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2814
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->hide()V

    .line 2815
    const/16 v2, 0x1f4

    invoke-virtual {p0, v2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->show(I)V

    .line 2804
    .end local v1    # "insertionMode":Z
    :cond_2
    :goto_0
    return-void

    .line 2816
    .restart local v1    # "insertionMode":Z
    :cond_3
    if-eqz v1, :cond_4

    .line 2817
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->hide()V

    goto :goto_0

    .line 2819
    :cond_4
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->stopSelectionActionMode()V

    goto :goto_0
.end method
