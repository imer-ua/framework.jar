.class Lmiui/view/MiuiSecurityPermissionHandler$2$1;
.super Ljava/lang/Thread;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$action:Landroid/widget/Button;

.field final synthetic val$permissionView:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler$2;Landroid/view/View;Landroid/widget/Button;Landroid/accounts/Account;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/view/MiuiSecurityPermissionHandler$2;
    .param p2, "val$permissionView"    # Landroid/view/View;
    .param p3, "val$action"    # Landroid/widget/Button;
    .param p4, "val$account"    # Landroid/accounts/Account;

    .prologue
    .line 132
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->val$permissionView:Landroid/view/View;

    iput-object p3, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->val$action:Landroid/widget/Button;

    iput-object p4, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$2;

    iget-object v1, v0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->val$permissionView:Landroid/view/View;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->val$action:Landroid/widget/Button;

    .line 136
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->val$account:Landroid/accounts/Account;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    .line 135
    :goto_0
    invoke-static {v1, v2, v3, v0}, Lmiui/view/MiuiSecurityPermissionHandler;->-wrap3(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V

    .line 134
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler$2$1;->val$account:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method
