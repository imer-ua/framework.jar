.class Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
.super Lcom/android/internal/view/IInputConnectionWrapper;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControlledInputConnectionWrapper"
.end annotation


# instance fields
.field private final mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "mainLooper"    # Landroid/os/Looper;
    .param p2, "conn"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 542
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V

    .line 543
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 541
    return-void
.end method


# virtual methods
.method deactivate()V
    .locals 1

    .prologue
    .line 552
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    return-void

    .line 557
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->closeConnection()V

    .line 551
    return-void
.end method

.method public isActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 548
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v1, v1, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onReportFullscreenMode(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "calledInBackground"    # Z

    .prologue
    .line 567
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 568
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->getInputMethodId()Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-virtual {v0, p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->onReportFullscreenMode(ZZLjava/lang/String;)V

    .line 566
    return-void
.end method

.method protected onUserAction()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->notifyUserAction()V

    .line 561
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ControlledInputConnectionWrapper{connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 574
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 575
    const-string/jumbo v1, " finished="

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 575
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->isFinished()Z

    move-result v1

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 576
    const-string/jumbo v1, " mParentInputMethodManager.mActive="

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 576
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v1, v1, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 577
    const-string/jumbo v1, " mInputMethodId="

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 577
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->getInputMethodId()Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 578
    const-string/jumbo v1, "}"

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
