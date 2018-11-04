.class Lmiui/view/VolumeDialog$2;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
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
    .line 760
    iput-object p1, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 763
    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    iget-boolean v0, v0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v0, :cond_0

    .line 764
    return-void

    .line 766
    :cond_0
    iget-object v2, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    iget-boolean v0, v0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lmiui/view/VolumeDialog;->setExpandedH(Z)V

    .line 767
    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    iget-boolean v0, v0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    iget-object v2, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2}, Lmiui/view/VolumeDialog;->-get11(Lmiui/view/VolumeDialog;)Lmiui/view/RingerModeLayout;

    move-result-object v2

    iget-boolean v2, v2, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    invoke-static {v0, v2}, Lmiui/view/VolumeDialog;->-set1(Lmiui/view/VolumeDialog;Z)Z

    .line 770
    :cond_1
    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-get11(Lmiui/view/VolumeDialog;)Lmiui/view/RingerModeLayout;

    move-result-object v0

    iget-object v2, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    iget-boolean v2, v2, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-nez v2, :cond_2

    iget-object v1, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->-get9(Lmiui/view/VolumeDialog;)Z

    move-result v1

    :cond_2
    invoke-virtual {v0, v1}, Lmiui/view/RingerModeLayout;->expandSilenceModeContent(Z)V

    .line 762
    return-void

    .line 766
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
