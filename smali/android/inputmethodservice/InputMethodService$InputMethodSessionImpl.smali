.class public Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;
.super Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodSessionImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 488
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 557
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 506
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 501
    return-void
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 489
    return-void
.end method

.method public toggleSoftInput(II)V
    .locals 1
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .prologue
    .line 568
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->-wrap4(Landroid/inputmethodservice/InputMethodService;II)V

    .line 567
    return-void
.end method

.method public updateCursor(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newCursor"    # Landroid/graphics/Rect;

    .prologue
    .line 547
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateCursor(Landroid/graphics/Rect;)V

    .line 546
    return-void
.end method

.method public updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .prologue
    .line 576
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 575
    return-void
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 513
    return-void
.end method

.method public updateSelection(IIIIII)V
    .locals 7
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 527
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 526
    return-void
.end method

.method public viewClicked(Z)V
    .locals 1
    .param p1, "focusChanged"    # Z

    .prologue
    .line 536
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    .line 535
    return-void
.end method
