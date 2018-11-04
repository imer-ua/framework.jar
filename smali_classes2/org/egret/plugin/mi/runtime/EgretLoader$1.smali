.class Lorg/egret/plugin/mi/runtime/EgretLoader$1;
.super Ljava/lang/Object;
.source "EgretLoader.java"

# interfaces
.implements Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/egret/plugin/mi/runtime/EgretLoader;->start(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/egret/plugin/mi/runtime/EgretLoader;


# direct methods
.method constructor <init>(Lorg/egret/plugin/mi/runtime/EgretLoader;)V
    .locals 0
    .param p1, "this$0"    # Lorg/egret/plugin/mi/runtime/EgretLoader;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader$1;->this$0:Lorg/egret/plugin/mi/runtime/EgretLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 125
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "length"    # I

    .prologue
    .line 134
    const-string/jumbo v0, "EgretLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public onProgressTotal(II)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "length"    # I

    .prologue
    .line 129
    const-string/jumbo v0, "EgretLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public onSuccess(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "gameEngineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader$1;->this$0:Lorg/egret/plugin/mi/runtime/EgretLoader;

    invoke-static {v0, p1}, Lorg/egret/plugin/mi/runtime/EgretLoader;->-wrap1(Lorg/egret/plugin/mi/runtime/EgretLoader;Ljava/lang/Class;)V

    .line 121
    return-void
.end method
