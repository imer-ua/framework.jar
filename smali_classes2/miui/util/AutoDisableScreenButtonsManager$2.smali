.class Lmiui/util/AutoDisableScreenButtonsManager$2;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/AutoDisableScreenButtonsManager;->showToast(Ljava/lang/CharSequence;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/AutoDisableScreenButtonsManager;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lmiui/util/AutoDisableScreenButtonsManager;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/util/AutoDisableScreenButtonsManager;
    .param p2, "val$text"    # Ljava/lang/CharSequence;

    .prologue
    .line 183
    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager$2;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    iput-object p2, p0, Lmiui/util/AutoDisableScreenButtonsManager$2;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$2;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    iget-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager$2;->val$text:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lmiui/util/AutoDisableScreenButtonsManager;->-wrap5(Lmiui/util/AutoDisableScreenButtonsManager;Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method
