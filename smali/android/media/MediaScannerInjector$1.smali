.class final Landroid/media/MediaScannerInjector$1;
.super Landroid/os/HandlerThread;
.source "MediaScannerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaScannerInjector;->initMediaFileCapture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/media/MediaScannerInjector$1$1;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/MediaScannerInjector$1$1;-><init>(Landroid/media/MediaScannerInjector$1;Landroid/os/Looper;)V

    invoke-static {v0}, Landroid/media/MediaScannerInjector;->-set0(Landroid/os/Handler;)Landroid/os/Handler;

    .line 80
    return-void
.end method
