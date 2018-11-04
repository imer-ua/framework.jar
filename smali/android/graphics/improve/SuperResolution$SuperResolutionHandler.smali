.class Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;
.super Landroid/os/Handler;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/improve/SuperResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperResolutionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/improve/SuperResolution;


# direct methods
.method public constructor <init>(Landroid/graphics/improve/SuperResolution;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/improve/SuperResolution;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 103
    iput-object p1, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    .line 104
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v3}, Landroid/graphics/improve/SuperResolution;->-wrap8(Landroid/graphics/improve/SuperResolution;)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;

    .line 115
    .local v1, "info":Landroid/graphics/improve/SuperResolution$ImproveInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 117
    .local v4, "startTime":J
    invoke-static {}, Landroid/graphics/improve/SRReporter;->reportImprove()V

    .line 118
    const-string/jumbo v3, "start improve bitmap"

    iget-object v8, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-object v9, v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    invoke-static {v8, v9}, Landroid/graphics/improve/SuperResolution;->-wrap4(Landroid/graphics/improve/SuperResolution;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v3}, Landroid/graphics/improve/SuperResolution;->-get0(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/BitmapImproveAble;

    move-result-object v3

    iget-object v8, v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v8}, Landroid/graphics/improve/BitmapImproveAble;->improveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 121
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/improve/SuperResolution$ImproveInfo;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 122
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    :cond_1
    const-string/jumbo v3, "handle message"

    const-string/jumbo v8, "improve fail !!!"

    invoke-static {v3, v8}, Landroid/graphics/improve/SRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v8, "algorithm error"

    invoke-static {v3, v8}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    return-void

    .line 130
    :cond_2
    const-string/jumbo v3, "handle message"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "improve bitmap successful"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v9, v2}, Landroid/graphics/improve/SuperResolution;->-wrap4(Landroid/graphics/improve/SuperResolution;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-object v2, v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->newBitmap:Landroid/graphics/Bitmap;

    .line 134
    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-object v8, v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->newBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v0, v8}, Landroid/graphics/improve/SuperResolution;->-wrap5(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v4

    .line 137
    .local v6, "useTime":J
    invoke-static {v6, v7}, Landroid/graphics/improve/SRReporter;->reportImproveTime(J)V

    .line 139
    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    const-string/jumbo v8, "check improve use time"

    invoke-static {v3, v4, v5, v8}, Landroid/graphics/improve/SuperResolution;->-wrap6(Landroid/graphics/improve/SuperResolution;JLjava/lang/String;)V

    .line 140
    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-wide v8, v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    invoke-static {v3, v8, v9}, Landroid/graphics/improve/SuperResolution;->-wrap3(Landroid/graphics/improve/SuperResolution;J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    return-void

    .line 143
    :cond_3
    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v3}, Landroid/graphics/improve/SuperResolution;->-get2(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/SuperResolution$MainHandler;

    move-result-object v3

    iget-object v8, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v8}, Landroid/graphics/improve/SuperResolution;->-get2(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/SuperResolution$MainHandler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    iget-wide v10, v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    const-wide/16 v12, 0x1f4

    add-long/2addr v10, v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-virtual {v3, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x3e6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
