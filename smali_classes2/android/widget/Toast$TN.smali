.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN$1;,
        Landroid/widget/Toast$TN$2;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x2

.field private static final HIDE:I = 0x1

.field static final LONG_DURATION_TIMEOUT:J = 0x3e8L

.field static final SHORT_DURATION_TIMEOUT:J = 0x1388L

.field private static final SHOW:I


# instance fields
.field mDuration:I

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field mPackageName:Ljava/lang/String;

.field final mParams:Landroid/view/WindowManager$LayoutParams;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x2

    .line 386
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 327
    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    .line 335
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 340
    new-instance v1, Landroid/widget/Toast$TN$2;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$2;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    .line 389
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 390
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 391
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 392
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 393
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 394
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 395
    const-string/jumbo v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 396
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 400
    iput-object p1, p0, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    .line 386
    return-void
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    .prologue
    .line 483
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 484
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    return-void

    .line 490
    :cond_0
    const/16 v2, 0x40

    .line 489
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 491
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 494
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 481
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 421
    return-void
.end method

.method public handleHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 499
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 508
    :cond_0
    iput-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 497
    :cond_1
    return-void
.end method

.method public handleShow(Landroid/os/IBinder;)V
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 429
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v6, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v5, v6, :cond_4

    .line 431
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 432
    iget-object v5, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    iput-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 433
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 434
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "packageName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 436
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 438
    :cond_0
    const-string/jumbo v5, "window"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    .line 441
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 442
    .local v0, "config":Landroid/content/res/Configuration;
    iget v5, p0, Landroid/widget/Toast$TN;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    .line 443
    .local v3, "gravity":I
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 444
    and-int/lit8 v5, v3, 0x7

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 445
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 447
    :cond_1
    and-int/lit8 v5, v3, 0x70

    const/16 v6, 0x70

    if-ne v5, v6, :cond_2

    .line 448
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 450
    :cond_2
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mX:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 451
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mY:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 452
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 453
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 454
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v4, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 455
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mDuration:I

    .line 456
    const/4 v7, 0x1

    .line 455
    if-ne v6, v7, :cond_5

    .line 456
    const-wide/16 v6, 0x3e8

    .line 455
    :goto_0
    iput-wide v6, v5, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 457
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 458
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 460
    iget-object v5, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v6, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v5, v6}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 469
    :cond_3
    :try_start_0
    iget-object v5, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v6, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    invoke-direct {p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_1
    const-string/jumbo v5, "Toast"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Show toast from OpPackageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 476
    const-string/jumbo v7, ", PackageName:"

    .line 475
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 476
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 475
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "gravity":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4
    return-void

    .line 456
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "gravity":I
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_5
    const-wide/16 v6, 0x1388

    goto :goto_0

    .line 471
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/view/WindowManager$BadTokenException;
    goto :goto_1
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 416
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 409
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 407
    return-void
.end method
