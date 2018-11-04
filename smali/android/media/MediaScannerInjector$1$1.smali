.class Landroid/media/MediaScannerInjector$1$1;
.super Landroid/os/Handler;
.source "MediaScannerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaScannerInjector$1;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaScannerInjector$1;


# direct methods
.method constructor <init>(Landroid/media/MediaScannerInjector$1;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/MediaScannerInjector$1;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 81
    iput-object p1, p0, Landroid/media/MediaScannerInjector$1$1;->this$1:Landroid/media/MediaScannerInjector$1;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    const-string/jumbo v2, "MediaScannerInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 86
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v2, "MediaScannerInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ProcessFile timeout, path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.ACTION_MEDIASCANNER_TIMEOUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "miui.intent.extra.EXTRA_FILE_PATH"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v2, "miui.intent.extra.EXTRA_PROCESS_NAME"

    .line 92
    invoke-static {}, Landroid/media/MediaScannerInjector;->-get1()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string/jumbo v2, "com.miui.securitycenter"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-static {}, Landroid/media/MediaScannerInjector;->-get0()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method
