.class Lmiui/app/ToggleManager$20;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 1277
    iput-object p1, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 4
    .param p1, "which"    # I

    .prologue
    .line 1280
    iget-object v0, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-get2(Lmiui/app/ToggleManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-get6(Lmiui/app/ToggleManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1281
    iget-object v0, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-get2(Lmiui/app/ToggleManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/ToggleManager$20;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-get6(Lmiui/app/ToggleManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1279
    return-void
.end method
