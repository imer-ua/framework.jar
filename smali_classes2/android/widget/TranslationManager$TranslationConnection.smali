.class Landroid/widget/TranslationManager$TranslationConnection;
.super Ljava/lang/Object;
.source "TranslationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslationConnection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TranslationManager;


# direct methods
.method private constructor <init>(Landroid/widget/TranslationManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TranslationManager;

    .prologue
    .line 209
    iput-object p1, p0, Landroid/widget/TranslationManager$TranslationConnection;->this$0:Landroid/widget/TranslationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslationConnection;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TranslationManager;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TranslationManager$TranslationConnection;-><init>(Landroid/widget/TranslationManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 213
    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Landroid/widget/TranslationManager$TranslationConnection;->this$0:Landroid/widget/TranslationManager;

    invoke-static {p2}, Lcom/miui/translationservice/ITranslation$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslation;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/TranslationManager;->-wrap2(Landroid/widget/TranslationManager;Lcom/miui/translationservice/ITranslation;)V

    .line 212
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 219
    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Landroid/widget/TranslationManager$TranslationConnection;->this$0:Landroid/widget/TranslationManager;

    invoke-static {v0}, Landroid/widget/TranslationManager;->-wrap1(Landroid/widget/TranslationManager;)V

    .line 218
    return-void
.end method
