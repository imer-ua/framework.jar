.class Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;
.super Lmiui/maml/RendererController$EmptyListener;
.source "GLLayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/GLLayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/GLLayerScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/GLLayerScreenElement;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/elements/GLLayerScreenElement;

    .prologue
    .line 102
    iput-object p1, p0, Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-direct {p0}, Lmiui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/GLLayerScreenElement;Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/elements/GLLayerScreenElement;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;-><init>(Lmiui/maml/elements/GLLayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get5(Lmiui/maml/elements/GLLayerScreenElement;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 110
    return-void
.end method

.method public tick(J)V
    .locals 0
    .param p1, "currentTime"    # J

    .prologue
    .line 105
    return-void
.end method

.method public triggerUpdate()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RendererController;->triggerUpdate()V

    .line 115
    return-void
.end method
