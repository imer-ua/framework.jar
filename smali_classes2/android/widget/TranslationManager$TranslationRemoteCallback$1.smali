.class Landroid/widget/TranslationManager$TranslationRemoteCallback$1;
.super Ljava/lang/Object;
.source "TranslationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationManager$TranslationRemoteCallback;->onTranslationFinished(Lcom/miui/translationservice/provider/TranslationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TranslationManager$TranslationRemoteCallback;

.field final synthetic val$result:Lcom/miui/translationservice/provider/TranslationResult;


# direct methods
.method constructor <init>(Landroid/widget/TranslationManager$TranslationRemoteCallback;Lcom/miui/translationservice/provider/TranslationResult;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/TranslationManager$TranslationRemoteCallback;
    .param p2, "val$result"    # Lcom/miui/translationservice/provider/TranslationResult;

    .prologue
    .line 200
    iput-object p1, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback$1;->this$1:Landroid/widget/TranslationManager$TranslationRemoteCallback;

    iput-object p2, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback$1;->val$result:Lcom/miui/translationservice/provider/TranslationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback$1;->this$1:Landroid/widget/TranslationManager$TranslationRemoteCallback;

    iget-object v0, v0, Landroid/widget/TranslationManager$TranslationRemoteCallback;->this$0:Landroid/widget/TranslationManager;

    iget-object v1, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback$1;->this$1:Landroid/widget/TranslationManager$TranslationRemoteCallback;

    iget-object v1, v1, Landroid/widget/TranslationManager$TranslationRemoteCallback;->mTask:Landroid/widget/TranslationManager$TranslateTask;

    iget-object v2, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback$1;->val$result:Lcom/miui/translationservice/provider/TranslationResult;

    invoke-static {v0, v1, v2}, Landroid/widget/TranslationManager;->-wrap3(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V

    .line 202
    return-void
.end method
