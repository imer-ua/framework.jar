.class Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1$1;
.super Ljava/lang/Object;
.source "EgretRuntimeLauncher.java"

# interfaces
.implements Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;


# direct methods
.method constructor <init>(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;

    .prologue
    .line 167
    iput-object p1, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1$1;->this$1:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1$1;->this$1:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;

    iget-object v0, v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    invoke-static {v0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->-wrap0(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "length"    # I

    .prologue
    .line 179
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1$1;->this$1:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;

    iget-object v0, v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    const-string/jumbo v1, "response content is null"

    invoke-static {v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->-wrap0(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;Ljava/lang/String;)V

    .line 173
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1$1;->this$1:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;

    iget-object v0, v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$1;->this$0:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    invoke-static {v0, p1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->-wrap1(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;Ljava/lang/String;)V

    .line 170
    return-void
.end method
