.class public Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_REPLACE_ACTION:I = 0xc8

.field private static final DRAG_ACCELERATOR_MODE_CHARACTER:I = 0x1

.field private static final DRAG_ACCELERATOR_MODE_INACTIVE:I = 0x0

.field private static final DRAG_ACCELERATOR_MODE_PARAGRAPH:I = 0x3

.field private static final DRAG_ACCELERATOR_MODE_WORD:I = 0x2


# instance fields
.field private mDoubleTabed:Z

.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mDragAcceleratorMode:I

.field private mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

.field private mGestureStayedInTapRegion:Z

.field private mInSwipeSelectionMode:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

.field private mSwipeSelectionStart:I

.field private mTextSelectionModeEnable:Z

.field private mTranslationCache:[F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$SelectionModifierCursorController;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    return v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$SelectionModifierCursorController;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTextSelectionModeEnable:Z

    return v0
.end method

.method constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Editor;

    .prologue
    .line 5455
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5427
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 5442
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTranslationCache:[F

    .line 5445
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    .line 5456
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 5455
    return-void

    .line 5442
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initDrawables()V
    .locals 3

    .prologue
    .line 5469
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get1(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5470
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5471
    const v2, 0x110200f0

    .line 5470
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/Editor;->-set1(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5473
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5474
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5475
    const v2, 0x110200f2

    .line 5474
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/Editor;->-set2(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5468
    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 4

    .prologue
    .line 5481
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-nez v0, :cond_0

    .line 5482
    new-instance v0, Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get1(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionStartHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    .line 5484
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-nez v0, :cond_1

    .line 5485
    new-instance v0, Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get1(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionEndHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    .line 5488
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTranslationCache:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->setTranslation(F)V

    .line 5489
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTranslationCache:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->setTranslation(F)V

    .line 5491
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->show()V

    .line 5492
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->show()V

    .line 5496
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->showActionPopupWindow(I)V

    .line 5497
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V

    .line 5499
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 5479
    return-void
.end method

.method private requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 5606
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5605
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 5614
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 5615
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 5616
    .local v1, "offset":I
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    .line 5617
    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5619
    :cond_0
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    .line 5620
    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 5614
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5612
    .end local v1    # "offset":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 5634
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 5626
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 5503
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTextSelectionModeEnable:Z

    .line 5504
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    .line 5505
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hide()V

    .line 5507
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    .line 5508
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->hide()V

    .line 5502
    :cond_1
    return-void
.end method

.method public invalidateHandles()V
    .locals 1

    .prologue
    .line 5690
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    .line 5691
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->invalidate()V

    .line 5693
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    .line 5694
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->invalidate()V

    .line 5689
    :cond_1
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 5686
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCursorBeingModified()Z
    .locals 1

    .prologue
    .line 5654
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5655
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->isDragging()Z

    move-result v0

    .line 5654
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5655
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDragAcceleratorActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5662
    iget v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 5649
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 5673
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5674
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 5676
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_0

    .line 5677
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->hideActionPopupWindow()V

    .line 5679
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v1, :cond_1

    .line 5680
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->hideActionPopupWindow()V

    .line 5672
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5515
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 5516
    .local v12, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 5517
    .local v13, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 5599
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionModifierCursorController;->requestDisallowInterceptTouchEvent(Z)V

    .line 5600
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDoubleTabed:Z

    .line 5512
    :cond_1
    :goto_1
    return-void

    .line 5519
    :pswitch_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    .line 5522
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5525
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v14, :cond_2

    .line 5526
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    move-wide/from16 v16, v0

    sub-long v8, v14, v16

    .line 5527
    .local v8, "duration":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v8, v14

    if-gtz v14, :cond_2

    .line 5528
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    sub-float v2, v12, v14

    .line 5529
    .local v2, "deltaX":F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    sub-float v3, v13, v14

    .line 5530
    .local v3, "deltaY":F
    mul-float v14, v2, v2

    mul-float v15, v3, v3

    add-float v4, v14, v15

    .line 5533
    .local v4, "distanceSquared":F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 5532
    invoke-static {v14}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    .line 5534
    .local v11, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v5

    .line 5535
    .local v5, "doubleTapSlop":I
    mul-int v14, v5, v5

    int-to-float v14, v14

    cmpg-float v14, v4, v14

    if-gez v14, :cond_3

    const/4 v10, 0x1

    .line 5537
    .local v10, "stayedInArea":Z
    :goto_2
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14, v12, v13}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;FF)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5538
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwipeSelectionStart:I

    .line 5539
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    .line 5540
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 5541
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionModifierCursorController;->requestDisallowInterceptTouchEvent(Z)V

    .line 5542
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDoubleTabed:Z

    .line 5547
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    .end local v4    # "distanceSquared":F
    .end local v5    # "doubleTapSlop":I
    .end local v8    # "duration":J
    .end local v10    # "stayedInArea":Z
    .end local v11    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_2
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    .line 5548
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    .line 5549
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    goto/16 :goto_1

    .line 5535
    .restart local v2    # "deltaX":F
    .restart local v3    # "deltaY":F
    .restart local v4    # "distanceSquared":F
    .restart local v5    # "doubleTapSlop":I
    .restart local v8    # "duration":J
    .restart local v11    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 5556
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    .end local v4    # "distanceSquared":F
    .end local v5    # "doubleTapSlop":I
    .end local v8    # "duration":J
    .end local v11    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 5557
    const-string/jumbo v15, "android.hardware.touchscreen.multitouch.distinct"

    .line 5556
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 5558
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 5563
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v14, :cond_4

    .line 5564
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    sub-float v2, v12, v14

    .line 5565
    .restart local v2    # "deltaX":F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    sub-float v3, v13, v14

    .line 5566
    .restart local v3    # "deltaY":F
    mul-float v14, v2, v2

    mul-float v15, v3, v3

    add-float v4, v14, v15

    .line 5569
    .restart local v4    # "distanceSquared":F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 5568
    invoke-static {v14}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    .line 5570
    .restart local v11    # "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v6

    .line 5572
    .local v6, "doubleTapTouchSlop":I
    mul-int v14, v6, v6

    int-to-float v14, v14

    cmpl-float v14, v4, v14

    if-lez v14, :cond_4

    .line 5573
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 5574
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDoubleTabed:Z

    .line 5578
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    .end local v4    # "distanceSquared":F
    .end local v6    # "doubleTapTouchSlop":I
    .end local v11    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    if-eqz v14, :cond_1

    .line 5579
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v7

    .line 5580
    .local v7, "offset":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwipeSelectionStart:I

    if-lt v7, v14, :cond_5

    .line 5581
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwipeSelectionStart:I

    invoke-static {v14, v15, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5584
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwipeSelectionStart:I

    if-eq v14, v7, :cond_6

    .line 5585
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    goto/16 :goto_1

    .line 5587
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto/16 :goto_1

    .line 5593
    .end local v7    # "offset":I
    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 5594
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    .line 5595
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDoubleTabed:Z

    if-eqz v14, :cond_0

    .line 5596
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto/16 :goto_0

    .line 5517
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 5666
    if-nez p1, :cond_0

    .line 5667
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 5665
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5642
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5641
    return-void
.end method

.method public setMaxTouchOffset(I)V
    .locals 0
    .param p1, "maxTouchOffset"    # I

    .prologue
    .line 5638
    iput p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 5637
    return-void
.end method

.method public setMinTouchOffset(I)V
    .locals 0
    .param p1, "minTouchOffset"    # I

    .prologue
    .line 5630
    iput p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5629
    return-void
.end method

.method public setTranslationCache([F)V
    .locals 0
    .param p1, "translationCache"    # [F

    .prologue
    .line 5699
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTranslationCache:[F

    .line 5698
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 5460
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5461
    return-void

    .line 5463
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    .line 5464
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    .line 5465
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTextSelectionModeEnable:Z

    .line 5459
    return-void
.end method
