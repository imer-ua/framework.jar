.class Lmiui/view/MiuiSecurityPermissionHandler$3;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiSecurityPermissionHandler;

.field final synthetic val$btn:Landroid/widget/Button;

.field final synthetic val$parentView:Landroid/view/View;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;ILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/view/MiuiSecurityPermissionHandler;
    .param p2, "val$btn"    # Landroid/widget/Button;
    .param p3, "val$result"    # I
    .param p4, "val$parentView"    # Landroid/view/View;

    .prologue
    .line 249
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    iput-object p2, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$btn:Landroid/widget/Button;

    iput p3, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$result:I

    iput-object p4, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 252
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$btn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 253
    iget v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$result:I

    if-ne v1, v2, :cond_1

    .line 255
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 254
    check-cast v0, Landroid/view/WindowManager;

    .line 256
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$parentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 251
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$result:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 258
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$btn:Landroid/widget/Button;

    const v2, 0x110900c4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 259
    :cond_2
    iget v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$result:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 260
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$3;->val$btn:Landroid/widget/Button;

    const v2, 0x110900c5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
