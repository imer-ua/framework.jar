.class final Landroid/view/ViewRootImpl$ViewPostImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPostImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .prologue
    .line 4361
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 4362
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 4361
    return-void
.end method

.method private maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 4520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 4522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 4525
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v2}, Landroid/view/ViewRootImpl;->-set0(Landroid/view/ViewRootImpl;I)I

    .line 4528
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 4529
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-wrap4(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 4531
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v2}, Landroid/view/ViewRootImpl;->-set0(Landroid/view/ViewRootImpl;I)I

    .line 4519
    :cond_2
    return-void
.end method

.method private processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 4547
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 4550
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4551
    const/4 v1, 0x1

    return v1

    .line 4553
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 9
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4394
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/KeyEvent;

    .line 4397
    .local v1, "event":Landroid/view/KeyEvent;
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4398
    return v6

    .line 4401
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4402
    return v8

    .line 4406
    :cond_1
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    .line 4407
    invoke-virtual {v1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    .line 4406
    if-eqz v4, :cond_2

    .line 4408
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 4409
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4419
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v4, v1}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4420
    return v6

    .line 4410
    :cond_3
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4411
    return v6

    .line 4413
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4414
    return v8

    .line 4422
    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4423
    return v8

    .line 4427
    :cond_6
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_c

    .line 4428
    const/4 v0, 0x0

    .line 4429
    .local v0, "direction":I
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 4458
    :cond_7
    :goto_0
    if-eqz v0, :cond_c

    .line 4459
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 4460
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_b

    .line 4461
    invoke-virtual {v2, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    .line 4462
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_a

    if-eq v3, v2, :cond_a

    .line 4466
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 4467
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 4468
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    .line 4469
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 4468
    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4470
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    .line 4471
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 4470
    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4473
    :cond_8
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4474
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 4476
    return v6

    .line 4431
    .end local v2    # "focused":Landroid/view/View;
    .end local v3    # "v":Landroid/view/View;
    :sswitch_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4432
    const/16 v0, 0x11

    goto :goto_0

    .line 4436
    :sswitch_1
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4437
    const/16 v0, 0x42

    goto :goto_0

    .line 4441
    :sswitch_2
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4442
    const/16 v0, 0x21

    goto :goto_0

    .line 4446
    :sswitch_3
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4447
    const/16 v0, 0x82

    goto :goto_0

    .line 4451
    :sswitch_4
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4452
    const/4 v0, 0x2

    goto :goto_0

    .line 4453
    :cond_9
    invoke-virtual {v1, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4454
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 4481
    .restart local v2    # "focused":Landroid/view/View;
    .restart local v3    # "v":Landroid/view/View;
    :cond_a
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v2, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4482
    return v6

    .line 4486
    .end local v3    # "v":Landroid/view/View;
    :cond_b
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4, v5, v0}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 4487
    .restart local v3    # "v":Landroid/view/View;
    if-eqz v3, :cond_c

    invoke-virtual {v3, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4488
    return v6

    .line 4493
    .end local v0    # "direction":I
    .end local v2    # "focused":Landroid/view/View;
    .end local v3    # "v":Landroid/view/View;
    :cond_c
    return v7

    .line 4429
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4497
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 4500
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-static {v0}, Landroid/view/ViewRootImplInjector;->checkForThreeGesture(Landroid/view/MotionEvent;)V

    .line 4502
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    .line 4504
    const/16 v5, 0x2002

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mCapturingView:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 4505
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v5, Landroid/view/ViewRootImpl;->mCapturingView:Landroid/view/View;

    .line 4506
    .local v1, "eventTarget":Landroid/view/View;
    :goto_0
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v5, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    .line 4507
    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 4508
    .local v2, "handled":Z
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V

    .line 4509
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    .line 4510
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-eqz v5, :cond_2

    .line 4516
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    :goto_2
    return v3

    .line 4505
    .end local v1    # "eventTarget":Landroid/view/View;
    .end local v2    # "handled":Z
    :cond_1
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .restart local v1    # "eventTarget":Landroid/view/View;
    goto :goto_0

    .line 4511
    .restart local v2    # "handled":Z
    :cond_2
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v3, v5, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    .line 4512
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v5, :cond_0

    .line 4513
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInputImmediately()V

    goto :goto_1

    :cond_3
    move v3, v4

    .line 4516
    goto :goto_2
.end method

.method private processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 4538
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 4540
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4541
    const/4 v1, 0x1

    return v1

    .line 4543
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 4383
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-eqz v0, :cond_0

    .line 4384
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    .line 4383
    if-eqz v0, :cond_0

    .line 4385
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    .line 4383
    if-eqz v0, :cond_0

    .line 4386
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 4383
    if-eqz v0, :cond_0

    .line 4387
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    .line 4388
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 4390
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 4382
    return-void
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 4367
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_0

    .line 4368
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    .line 4370
    :cond_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    .line 4371
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 4372
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    .line 4373
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 4374
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    .line 4376
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1
.end method
