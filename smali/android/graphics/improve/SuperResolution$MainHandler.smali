.class Landroid/graphics/improve/SuperResolution$MainHandler;
.super Landroid/os/Handler;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/improve/SuperResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/improve/SuperResolution;


# direct methods
.method public constructor <init>(Landroid/graphics/improve/SuperResolution;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/improve/SuperResolution;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 64
    iput-object p1, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;

    .line 73
    .local v2, "info":Landroid/graphics/improve/SuperResolution$ImproveInfo;
    invoke-virtual {v2}, Landroid/graphics/improve/SuperResolution$ImproveInfo;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 74
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v4, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v4, v1}, Landroid/graphics/improve/SuperResolution;->-wrap0(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v4, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-wide v6, v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    invoke-static {v4, v6, v7}, Landroid/graphics/improve/SuperResolution;->-wrap3(Landroid/graphics/improve/SuperResolution;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    return-void

    .line 80
    :cond_1
    iget-object v4, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v4, v1, v2}, Landroid/graphics/improve/SuperResolution;->-wrap1(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;Landroid/graphics/improve/SuperResolution$ImproveInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    return-void

    .line 84
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 85
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget-object v4, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v4}, Landroid/graphics/improve/SuperResolution;->-get1(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/ImproveHookAble;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Landroid/graphics/improve/ImproveHookAble;->setBitmap(Landroid/graphics/improve/SuperResolution$ImproveInfo;Landroid/widget/ImageView;)V

    .line 86
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 87
    const-string/jumbo v4, "handle message"

    const-string/jumbo v5, "update drawable successful"

    invoke-static {v4, v5}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "hook fail"

    invoke-static {v4, v5}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v4, "update drawable fail"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/improve/SRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
