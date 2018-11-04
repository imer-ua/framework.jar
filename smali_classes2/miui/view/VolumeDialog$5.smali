.class Lmiui/view/VolumeDialog$5;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog;->setExpandedH(Z)V
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
    .line 503
    iput-object p1, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    .line 507
    iget-object v0, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-wrap9(Lmiui/view/VolumeDialog;)V

    .line 505
    return-void
.end method
