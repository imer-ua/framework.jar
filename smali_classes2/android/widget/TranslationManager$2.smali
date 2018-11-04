.class Landroid/widget/TranslationManager$2;
.super Landroid/os/AsyncTask;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationManager;->doDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TranslationManager;


# direct methods
.method constructor <init>(Landroid/widget/TranslationManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TranslationManager;

    .prologue
    .line 89
    iput-object p1, p0, Landroid/widget/TranslationManager$2;->this$0:Landroid/widget/TranslationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/TranslationManager$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/TranslationManager$2;->this$0:Landroid/widget/TranslationManager;

    invoke-static {v0}, Landroid/widget/TranslationManager;->-get1(Landroid/widget/TranslationManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TranslationManager$2;->this$0:Landroid/widget/TranslationManager;

    invoke-static {v1}, Landroid/widget/TranslationManager;->-get0(Landroid/widget/TranslationManager;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "aVoid":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/TranslationManager$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/TranslationManager$2;->this$0:Landroid/widget/TranslationManager;

    invoke-static {v0}, Landroid/widget/TranslationManager;->-wrap0(Landroid/widget/TranslationManager;)V

    .line 97
    return-void
.end method
