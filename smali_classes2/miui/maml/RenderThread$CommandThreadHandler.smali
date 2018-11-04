.class Lmiui/maml/RenderThread$CommandThreadHandler;
.super Landroid/os/Handler;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/RenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandThreadHandler"
.end annotation


# static fields
.field private static final MSG_PAUSE:I = 0x0

.field private static final MSG_RESUME:I = 0x1


# instance fields
.field final synthetic this$0:Lmiui/maml/RenderThread;


# direct methods
.method public constructor <init>(Lmiui/maml/RenderThread;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/RenderThread;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 295
    iput-object p1, p0, Lmiui/maml/RenderThread$CommandThreadHandler;->this$0:Lmiui/maml/RenderThread;

    .line 296
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 295
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 301
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 300
    :goto_0
    return-void

    .line 303
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/RenderThread$CommandThreadHandler;->this$0:Lmiui/maml/RenderThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/maml/RenderThread;->-wrap0(Lmiui/maml/RenderThread;Z)V

    goto :goto_0

    .line 306
    :pswitch_1
    iget-object v0, p0, Lmiui/maml/RenderThread$CommandThreadHandler;->this$0:Lmiui/maml/RenderThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/maml/RenderThread;->-wrap0(Lmiui/maml/RenderThread;Z)V

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPause(Z)V
    .locals 2
    .param p1, "pause"    # Z

    .prologue
    .line 314
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 315
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/os/Message;->what:I

    .line 316
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 313
    return-void

    .line 315
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
