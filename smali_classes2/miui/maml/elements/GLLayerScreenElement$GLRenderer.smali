.class Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;
.super Ljava/lang/Object;
.source "GLLayerScreenElement.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/GLLayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/GLLayerScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/GLLayerScreenElement;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/elements/GLLayerScreenElement;

    .prologue
    .line 68
    iput-object p1, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/GLLayerScreenElement;Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/elements/GLLayerScreenElement;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lmiui/maml/elements/GLLayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get4(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get0(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get4(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 95
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get0(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    .line 91
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get2(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get0(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get6(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    int-to-double v2, p2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 84
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get1(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    int-to-double v2, p3

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 85
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get2(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 86
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get0(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get3(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get0(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get3(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 75
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get0(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    return-void
.end method
