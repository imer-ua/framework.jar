.class Landroid/graphics/improve/SuperResolution$2;
.super Ljava/lang/Object;
.source "SuperResolution.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/improve/SuperResolution;->showToast(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/improve/SuperResolution;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/improve/SuperResolution;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 293
    iput-object p1, p0, Landroid/graphics/improve/SuperResolution$2;->this$0:Landroid/graphics/improve/SuperResolution;

    iput-object p2, p0, Landroid/graphics/improve/SuperResolution$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution$2;->val$context:Landroid/content/Context;

    const v1, 0x110900f0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 295
    return-void
.end method
