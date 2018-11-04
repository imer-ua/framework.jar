.class final Lmiui/app/ToggleManager$WorkHandler;
.super Landroid/os/Handler;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# static fields
.field private static final MSG_APPLY_BRIGHTNESS:I = 0x3

.field private static final MSG_TOGGLE_BLUETOOTH:I = 0x2

.field private static final MSG_TOGGLE_SYNC:I = 0x5

.field private static final MSG_TOGGLE_WIFI:I = 0x1

.field private static final MSG_UPDATE_SYNC:I = 0x4


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method public constructor <init>(Lmiui/app/ToggleManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/ToggleManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 364
    iput-object p1, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    .line 365
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 364
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 370
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 371
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 369
    :goto_0
    return-void

    .line 373
    :pswitch_0
    invoke-static {}, Lmiui/app/ToggleManager;->-get7()Landroid/net/wifi/WifiManager;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 376
    :pswitch_1
    iget-object v3, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    :goto_2
    invoke-static {v3, v1}, Lmiui/app/ToggleManager;->-wrap3(Lmiui/app/ToggleManager;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 379
    :pswitch_2
    iget-object v3, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v1, :cond_2

    :goto_3
    invoke-static {v3, v4, v1}, Lmiui/app/ToggleManager;->-wrap1(Lmiui/app/ToggleManager;IZ)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_3

    .line 382
    :pswitch_3
    iget-object v3, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v3}, Lmiui/app/ToggleManager;->-wrap0(Lmiui/app/ToggleManager;)Z

    move-result v0

    .line 383
    .local v0, "isSyncOn":Z
    iget-object v3, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v3}, Lmiui/app/ToggleManager;->-get2(Lmiui/app/ToggleManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v0, :cond_3

    :goto_4
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_4

    .line 386
    .end local v0    # "isSyncOn":Z
    :pswitch_4
    iget-object v1, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-wrap4(Lmiui/app/ToggleManager;)V

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
