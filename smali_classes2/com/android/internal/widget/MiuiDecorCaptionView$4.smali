.class Lcom/android/internal/widget/MiuiDecorCaptionView$4;
.super Landroid/os/ResultReceiver;
.source "MiuiDecorCaptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/MiuiDecorCaptionView;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$taskId"    # I

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$4;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    iput p3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$4;->val$taskId:I

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 549
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 550
    return-void

    .line 553
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$4;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-get1(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lcom/miui/freeform/IMiuiFreeformWindowService;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$4;->val$taskId:I

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$4;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/miui/freeform/IMiuiFreeformWindowService;->windowResize(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
