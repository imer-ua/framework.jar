.class Lmiui/util/AutoDisableScreenButtonsManager$3;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/AutoDisableScreenButtonsManager;->showFloat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/AutoDisableScreenButtonsManager;


# direct methods
.method constructor <init>(Lmiui/util/AutoDisableScreenButtonsManager;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/util/AutoDisableScreenButtonsManager;

    .prologue
    .line 207
    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager$3;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$3;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->-get1(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->dismiss()V

    .line 210
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$3;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/AutoDisableScreenButtonsManager;->-wrap2(Lmiui/util/AutoDisableScreenButtonsManager;Z)V

    .line 211
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$3;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->-wrap1(Lmiui/util/AutoDisableScreenButtonsManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :cond_0
    return-void
.end method
