.class Lmiui/maml/elements/WebViewScreenElement$9;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/WebViewScreenElement;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WebViewScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/WebViewScreenElement;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/elements/WebViewScreenElement;

    .prologue
    .line 285
    iput-object p1, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/WebViewScreenElement;->-get2(Lmiui/maml/elements/WebViewScreenElement;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/WebViewScreenElement;->-get1(Lmiui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/elements/WebViewScreenElement;->-wrap0(Lmiui/maml/elements/WebViewScreenElement;Landroid/view/ViewGroup$LayoutParams;)Z

    .line 289
    const-string/jumbo v0, "MAML WebViewScreenElement"

    const-string/jumbo v1, "addWebView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getViewManager()Landroid/view/ViewManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/WebViewScreenElement;->-get3(Lmiui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-static {v2}, Lmiui/maml/elements/WebViewScreenElement;->-get1(Lmiui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/maml/elements/WebViewScreenElement;->-set0(Lmiui/maml/elements/WebViewScreenElement;Z)Z

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/WebViewScreenElement;->-get0(Lmiui/maml/elements/WebViewScreenElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$9;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/WebViewScreenElement;->-get3(Lmiui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    goto :goto_0
.end method
