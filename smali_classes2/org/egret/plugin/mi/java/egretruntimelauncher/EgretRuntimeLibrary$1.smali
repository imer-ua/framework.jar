.class Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;
.super Ljava/lang/Object;
.source "EgretRuntimeLibrary.java"

# interfaces
.implements Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->doDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;


# direct methods
.method constructor <init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)V
    .locals 0
    .param p1, "this$0"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->-get0(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onError(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onProgress(II)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "length"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->-get0(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$OnDownloadListener;->onProgress(II)V

    .line 70
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->-get1(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->-wrap0(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;

    invoke-static {v0}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;->-wrap1(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLibrary;)V

    .line 60
    :cond_1
    return-void
.end method
