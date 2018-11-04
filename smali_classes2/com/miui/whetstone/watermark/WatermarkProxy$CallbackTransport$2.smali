.class Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$2;
.super Landroid/os/Handler;
.source "WatermarkProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;-><init>(Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$2;->this$1:Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$2;->this$1:Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;

    invoke-static {v0, p1}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->-wrap0(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;Landroid/os/Message;)V

    .line 55
    return-void
.end method
