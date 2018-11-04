.class Lmiui/maml/elements/WebViewScreenElement$7;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/WebViewScreenElement;->onVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WebViewScreenElement;

.field final synthetic val$_v:Z


# direct methods
.method constructor <init>(Lmiui/maml/elements/WebViewScreenElement;Z)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/elements/WebViewScreenElement;
    .param p2, "val$_v"    # Z

    .prologue
    .line 248
    iput-object p1, p0, Lmiui/maml/elements/WebViewScreenElement$7;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    iput-boolean p2, p0, Lmiui/maml/elements/WebViewScreenElement$7;->val$_v:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$7;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/WebViewScreenElement;->-get3(Lmiui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    move-result-object v1

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement$7;->val$_v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 249
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
