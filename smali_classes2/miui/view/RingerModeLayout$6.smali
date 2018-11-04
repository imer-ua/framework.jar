.class Lmiui/view/RingerModeLayout$6;
.super Ljava/lang/Object;
.source "RingerModeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/RingerModeLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method constructor <init>(Lmiui/view/RingerModeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/view/RingerModeLayout;

    .prologue
    .line 418
    iput-object p1, p0, Lmiui/view/RingerModeLayout$6;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lmiui/view/RingerModeLayout$6;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->-get0(Lmiui/view/RingerModeLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/view/RingerModeLayout$6;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->-get16(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;

    move-result-object v0

    iget-boolean v0, v0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v0, :cond_1

    .line 422
    :cond_0
    return-void

    .line 423
    :cond_1
    iget-object v2, p0, Lmiui/view/RingerModeLayout$6;->this$0:Lmiui/view/RingerModeLayout;

    iget-object v0, p0, Lmiui/view/RingerModeLayout$6;->this$0:Lmiui/view/RingerModeLayout;

    iget-boolean v0, v0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lmiui/view/RingerModeLayout;->expandSilenceModeContent(Z)V

    .line 424
    iget-object v0, p0, Lmiui/view/RingerModeLayout$6;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->-get16(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog;->setExpandedH(Z)V

    .line 420
    return-void

    .line 423
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
