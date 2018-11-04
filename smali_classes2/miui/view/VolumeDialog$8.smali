.class Lmiui/view/VolumeDialog$8;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog;->showSafetyWarningH(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 747
    iput-object p1, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 750
    iget-object v0, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-get13(Lmiui/view/VolumeDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 751
    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmiui/view/VolumeDialog;->-set3(Lmiui/view/VolumeDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 749
    return-void

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
