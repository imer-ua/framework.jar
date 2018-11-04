.class Lmiui/util/AutoDisableScreenButtonsManager$5;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/AutoDisableScreenButtonsManager;->showPromptsIfNeeds()Z
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
    .line 243
    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager$5;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 246
    check-cast p1, Lmiui/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$5;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->-get0(Lmiui/util/AutoDisableScreenButtonsManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "ADSB_NOT_SHOW_PROMPTS"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/util/AutoDisableScreenButtonsHelper;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    :cond_0
    return-void
.end method
