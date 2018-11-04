.class public Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
.super Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 379
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 384
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    .line 386
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/SoftInputWindow;->setToken(Landroid/os/IBinder;)V

    .line 383
    :cond_0
    return-void
.end method

.method public bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 3
    .param p1, "binding"    # Landroid/view/inputmethod/InputBinding;

    .prologue
    .line 396
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v1, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    .line 397
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iput-object v2, v1, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 400
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 401
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v1, v1, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 402
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 403
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->onBindInput()V

    .line 395
    return-void
.end method

.method public changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 479
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 478
    return-void
.end method

.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 432
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    .line 433
    .local v0, "wasVis":Z
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput v1, v2, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 434
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-boolean v1, v2, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 435
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-wrap2(Landroid/inputmethodservice/InputMethodService;)V

    .line 436
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-wrap1(Landroid/inputmethodservice/InputMethodService;)V

    .line 437
    if-eqz p2, :cond_1

    .line 438
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v2

    if-eq v0, v2, :cond_2

    .line 439
    const/4 v1, 0x3

    .line 438
    :cond_0
    :goto_0
    invoke-virtual {p2, v1, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 430
    :cond_1
    return-void

    .line 440
    :cond_2
    if-nez v0, :cond_0

    .line 441
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 424
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 422
    return-void
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 11
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 450
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v2

    .line 451
    .local v2, "wasVis":Z
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3, p1, v5}, Landroid/inputmethodservice/InputMethodService;->-wrap0(Landroid/inputmethodservice/InputMethodService;IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    :try_start_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService;->-wrap1(Landroid/inputmethodservice/InputMethodService;)V

    .line 467
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v1

    .line 468
    .local v1, "showing":Z
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v7, v3, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v8, v3, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_2

    move v3, v4

    :goto_1
    or-int/lit8 v3, v3, 0x1

    .line 469
    iget-object v9, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget v9, v9, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    .line 468
    invoke-virtual {v7, v8, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 470
    if-eqz p2, :cond_1

    .line 471
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v3

    if-eq v2, v3, :cond_3

    :goto_2
    invoke-virtual {p2, v4, v10}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 448
    :cond_1
    return-void

    .line 454
    .end local v1    # "showing":Z
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3, v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->onBadTokenException(Landroid/inputmethodservice/InputMethodService;Landroid/view/WindowManager$BadTokenException;)V

    goto :goto_0

    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    .restart local v1    # "showing":Z
    :cond_2
    move v3, v5

    .line 468
    goto :goto_1

    .line 473
    :cond_3
    if-eqz v2, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v6

    .line 474
    goto :goto_2
.end method

.method public startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 419
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 417
    return-void
.end method

.method public unbindInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 412
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onUnbindInput()V

    .line 413
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object v1, v0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    .line 414
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object v1, v0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 409
    return-void
.end method
