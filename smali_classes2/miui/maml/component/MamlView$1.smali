.class Lmiui/maml/component/MamlView$1;
.super Ljava/lang/Object;
.source "MamlView.java"

# interfaces
.implements Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/component/MamlView;


# direct methods
.method constructor <init>(Lmiui/maml/component/MamlView;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/component/MamlView;

    .prologue
    .line 69
    iput-object p1, p0, Lmiui/maml/component/MamlView$1;->this$0:Lmiui/maml/component/MamlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lmiui/maml/component/MamlView$1;->this$0:Lmiui/maml/component/MamlView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lmiui/maml/component/MamlView$1;->this$0:Lmiui/maml/component/MamlView;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 71
    return-void
.end method
