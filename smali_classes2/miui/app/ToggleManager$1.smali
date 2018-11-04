.class Lmiui/app/ToggleManager$1;
.super Landroid/os/Handler;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/ToggleManager;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 310
    iput-object p1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 313
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 314
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 312
    :goto_0
    return-void

    .line 316
    :pswitch_0
    iget-object v0, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-wrap20(Lmiui/app/ToggleManager;)V

    goto :goto_0

    .line 319
    :pswitch_1
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_1
    invoke-static {v1, v0}, Lmiui/app/ToggleManager;->-wrap18(Lmiui/app/ToggleManager;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
