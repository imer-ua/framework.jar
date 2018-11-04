.class final Lmiui/view/VolumeDialog$CustomDialog;
.super Landroid/app/Dialog;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method public constructor <init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/view/VolumeDialog;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 981
    iput-object p1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    .line 982
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 981
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 987
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 988
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->-get6(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 989
    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->-get6(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 992
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 993
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 996
    :cond_1
    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->-wrap3(Lmiui/view/VolumeDialog;)V

    .line 998
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 994
    :cond_2
    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->-wrap1(Lmiui/view/VolumeDialog;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1003
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1005
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1006
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1007
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1008
    const-string/jumbo v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1009
    const-string/jumbo v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1010
    const-string/jumbo v0, "miui.intent.TAKE_SCREENSHOT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-get2(Lmiui/view/VolumeDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->-get1(Lmiui/view/VolumeDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1002
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1016
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1017
    iget-object v0, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-get2(Lmiui/view/VolumeDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->-get1(Lmiui/view/VolumeDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1018
    iget-object v0, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-get8(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1015
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1024
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1026
    iget-object v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2}, Lmiui/view/VolumeDialog;->-wrap1(Lmiui/view/VolumeDialog;)V

    .line 1027
    return v5

    .line 1030
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_2

    .line 1031
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownX:F

    .line 1032
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownY:F

    .line 1042
    :cond_1
    return v4

    .line 1033
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1034
    iget v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1035
    .local v0, "diffx":F
    iget v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 1036
    .local v1, "diffy":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    iget-object v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2}, Lmiui/view/VolumeDialog;->-get2(Lmiui/view/VolumeDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 1037
    iget-object v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2}, Lmiui/view/VolumeDialog;->-wrap1(Lmiui/view/VolumeDialog;)V

    .line 1038
    return v5
.end method
