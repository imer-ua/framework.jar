.class Lmiui/maml/component/MamlDrawable$3;
.super Lmiui/maml/RenderUpdater;
.source "MamlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/component/MamlDrawable;-><init>(Lmiui/maml/ScreenElementRoot;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/component/MamlDrawable;


# direct methods
.method constructor <init>(Lmiui/maml/component/MamlDrawable;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/component/MamlDrawable;
    .param p2, "$anonymous0"    # Lmiui/maml/ScreenElementRoot;
    .param p3, "$anonymous1"    # Landroid/os/Handler;
    .param p4, "$anonymous2"    # Z

    .prologue
    .line 54
    iput-object p1, p0, Lmiui/maml/component/MamlDrawable$3;->this$0:Lmiui/maml/component/MamlDrawable;

    invoke-direct {p0, p2, p3, p4}, Lmiui/maml/RenderUpdater;-><init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    return-void
.end method


# virtual methods
.method public doRenderImp()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/maml/component/MamlDrawable$3;->this$0:Lmiui/maml/component/MamlDrawable;

    invoke-static {v0}, Lmiui/maml/component/MamlDrawable;->-get0(Lmiui/maml/component/MamlDrawable;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/component/MamlDrawable$3;->this$0:Lmiui/maml/component/MamlDrawable;

    invoke-static {v1}, Lmiui/maml/component/MamlDrawable;->-get2(Lmiui/maml/component/MamlDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    iget-object v0, p0, Lmiui/maml/component/MamlDrawable$3;->this$0:Lmiui/maml/component/MamlDrawable;

    invoke-static {v0}, Lmiui/maml/component/MamlDrawable;->-get0(Lmiui/maml/component/MamlDrawable;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/component/MamlDrawable$3;->this$0:Lmiui/maml/component/MamlDrawable;

    invoke-static {v1}, Lmiui/maml/component/MamlDrawable;->-get2(Lmiui/maml/component/MamlDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    iget-object v0, p0, Lmiui/maml/component/MamlDrawable$3;->this$0:Lmiui/maml/component/MamlDrawable;

    invoke-static {v0}, Lmiui/maml/component/MamlDrawable;->-get0(Lmiui/maml/component/MamlDrawable;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/component/MamlDrawable$3;->this$0:Lmiui/maml/component/MamlDrawable;

    invoke-static {v1}, Lmiui/maml/component/MamlDrawable;->-get1(Lmiui/maml/component/MamlDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method
