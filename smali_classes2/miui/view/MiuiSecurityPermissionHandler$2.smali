.class Lmiui/view/MiuiSecurityPermissionHandler$2;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic val$action:Landroid/widget/Button;

.field final synthetic val$permissionView:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/view/MiuiSecurityPermissionHandler;
    .param p2, "val$action"    # Landroid/widget/Button;
    .param p3, "val$permissionView"    # Landroid/view/View;

    .prologue
    .line 126
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->val$action:Landroid/widget/Button;

    iput-object p3, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->val$permissionView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-wrap0(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;

    move-result-object v0

    .line 131
    .local v0, "account":Landroid/accounts/Account;
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->val$action:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 132
    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$2$1;

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->val$permissionView:Landroid/view/View;

    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler$2;->val$action:Landroid/widget/Button;

    invoke-direct {v1, p0, v2, v3, v0}, Lmiui/view/MiuiSecurityPermissionHandler$2$1;-><init>(Lmiui/view/MiuiSecurityPermissionHandler$2;Landroid/view/View;Landroid/widget/Button;Landroid/accounts/Account;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method
