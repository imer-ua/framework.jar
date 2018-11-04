.class Lmiui/view/VolumeDialog$SafetyWarningDialog$1;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog$SafetyWarningDialog;-><init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog$SafetyWarningDialog;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/view/VolumeDialog$SafetyWarningDialog;

    .prologue
    .line 944
    iput-object p1, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog$1;->this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 946
    iget-object v0, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog$1;->this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;

    iget-object v0, v0, Lmiui/view/VolumeDialog$SafetyWarningDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-get3(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$VolumePanelDelegate;

    move-result-object v0

    invoke-interface {v0}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->disableSafeMediaVolume()V

    .line 945
    return-void
.end method
