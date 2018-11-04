.class final Lmiui/view/VolumeDialog$H;
.super Landroid/os/Handler;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final DISMISS:I = 0x2

.field private static final RECHECK:I = 0x3

.field private static final RECHECK_ALL:I = 0x4

.field private static final RESCHEDULE_TIMEOUT:I = 0x5

.field private static final RESET_SCREENSHOT:I = 0xb

.field private static final SHOW:I = 0x1

.field private static final SHOW_SAFE_WARNING:I = 0x9

.field private static final STATE_CHANGED:I = 0x6

.field private static final UPDATE_BOTTOM_MARGIN:I = 0x7

.field private static final UPDATE_LAYOUT_DIRECTION:I = 0x8

.field private static final VIBRATE:I = 0xa


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method public constructor <init>(Lmiui/view/VolumeDialog;)V
    .locals 1
    .param p1, "this$0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 787
    iput-object p1, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    .line 788
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 787
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 793
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 792
    :goto_0
    return-void

    .line 795
    :pswitch_0
    const-string/jumbo v0, "VolumeDialog"

    const-string/jumbo v1, "SHOW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->-wrap4(Lmiui/view/VolumeDialog;I)V

    goto :goto_0

    .line 799
    :pswitch_1
    const-string/jumbo v0, "VolumeDialog"

    const-string/jumbo v1, "DISMISS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-wrap1(Lmiui/view/VolumeDialog;)V

    goto :goto_0

    .line 803
    :pswitch_2
    const-string/jumbo v0, "VolumeDialog"

    const-string/jumbo v1, "RECHECK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v1, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-static {v1, v0}, Lmiui/view/VolumeDialog;->-wrap2(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 807
    :pswitch_3
    const-string/jumbo v0, "VolumeDialog"

    const-string/jumbo v1, "RECHECK_ALL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->-wrap2(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 811
    :pswitch_4
    const-string/jumbo v0, "VolumeDialog"

    const-string/jumbo v1, "RESCHEDULE_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-wrap3(Lmiui/view/VolumeDialog;)V

    goto :goto_0

    .line 815
    :pswitch_5
    const-string/jumbo v0, "VolumeDialog"

    const-string/jumbo v1, "UPDATE_BOTTOM_MARGIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-wrap8(Lmiui/view/VolumeDialog;)V

    goto :goto_0

    .line 819
    :pswitch_6
    const-string/jumbo v0, "VolumeDialog"

    const-string/jumbo v1, "STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lmiui/view/VolumeDialog;->-wrap6(Lmiui/view/VolumeDialog;II)V

    goto :goto_0

    .line 823
    :pswitch_7
    const-string/jumbo v0, "VolumeDialog"

    const-string/jumbo v1, "UPDATE_LAYOUT_DIRECTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->-wrap10(Lmiui/view/VolumeDialog;I)V

    goto/16 :goto_0

    .line 827
    :pswitch_8
    const-string/jumbo v0, "VolumeDialog"

    const-string/jumbo v1, "SHOW_SAFE_WARNING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->-wrap5(Lmiui/view/VolumeDialog;I)V

    goto/16 :goto_0

    .line 831
    :pswitch_9
    const-string/jumbo v0, "VolumeDialog"

    const-string/jumbo v1, "VIBRATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-wrap12(Lmiui/view/VolumeDialog;)V

    goto/16 :goto_0

    .line 835
    :pswitch_a
    const-string/jumbo v0, "VolumeDialog"

    const-string/jumbo v1, "RESET_SCREENSHOT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->-set0(Lmiui/view/VolumeDialog;Z)Z

    goto/16 :goto_0

    .line 793
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
