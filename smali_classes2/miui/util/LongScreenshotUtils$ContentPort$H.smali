.class public Lmiui/util/LongScreenshotUtils$ContentPort$H;
.super Landroid/os/Handler;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils$ContentPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation


# static fields
.field public static final MSG_BROADCAST_CALLBACK:I = 0x3

.field public static final MSG_FINISH:I = 0x4

.field public static final MSG_SCROLL:I = 0x2

.field public static final MSG_START:I = 0x1


# instance fields
.field final synthetic this$1:Lmiui/util/LongScreenshotUtils$ContentPort;


# direct methods
.method public constructor <init>(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 1
    .param p1, "this$1"    # Lmiui/util/LongScreenshotUtils$ContentPort;

    .prologue
    .line 195
    iput-object p1, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$1:Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 196
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$1:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-wrap3(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$1:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-get0(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$1:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-wrap2(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    .line 208
    const-wide/16 v0, 0xc8

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$1:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-get0(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$1:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-wrap0(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_0

    .line 217
    :pswitch_3
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$1:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-wrap1(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
