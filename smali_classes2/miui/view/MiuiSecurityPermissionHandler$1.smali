.class Lmiui/view/MiuiSecurityPermissionHandler$1;
.super Landroid/database/ContentObserver;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->mayBringUpPermissionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/view/MiuiSecurityPermissionHandler;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$handler"    # Landroid/os/Handler;

    .prologue
    .line 62
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p3, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 66
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$1$1;

    invoke-direct {v1, p0}, Lmiui/view/MiuiSecurityPermissionHandler$1$1;-><init>(Lmiui/view/MiuiSecurityPermissionHandler$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method
