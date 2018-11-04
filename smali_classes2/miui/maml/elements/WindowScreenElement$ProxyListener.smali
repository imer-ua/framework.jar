.class Lmiui/maml/elements/WindowScreenElement$ProxyListener;
.super Lmiui/maml/RendererController$EmptyListener;
.source "WindowScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/WindowScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WindowScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/WindowScreenElement;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/elements/WindowScreenElement;

    .prologue
    .line 97
    iput-object p1, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-direct {p0}, Lmiui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/WindowScreenElement;Lmiui/maml/elements/WindowScreenElement$ProxyListener;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/elements/WindowScreenElement;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/WindowScreenElement$ProxyListener;-><init>(Lmiui/maml/elements/WindowScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/WindowScreenElement;->-get0(Lmiui/maml/elements/WindowScreenElement;)Lmiui/maml/elements/WindowScreenElement$WindowView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 105
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->onHover(Landroid/view/MotionEvent;)Z

    .line 115
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 111
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    .line 110
    return-void
.end method

.method public tick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 101
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->doTick(J)V

    .line 100
    return-void
.end method

.method public triggerUpdate()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RendererController;->triggerUpdate()V

    .line 120
    return-void
.end method
