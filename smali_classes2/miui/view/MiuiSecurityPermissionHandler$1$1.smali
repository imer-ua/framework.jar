.class Lmiui/view/MiuiSecurityPermissionHandler$1$1;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/MiuiSecurityPermissionHandler$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/view/MiuiSecurityPermissionHandler$1;


# direct methods
.method constructor <init>(Lmiui/view/MiuiSecurityPermissionHandler$1;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/view/MiuiSecurityPermissionHandler$1;

    .prologue
    .line 66
    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$1;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-get1(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 70
    const-string/jumbo v2, "device_provisioned"

    .line 69
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 71
    .local v0, "provisioned":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 72
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$1;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-wrap1(Lmiui/view/MiuiSecurityPermissionHandler;)V

    .line 73
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler$1$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$1;

    iget-object v1, v1, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v1}, Lmiui/view/MiuiSecurityPermissionHandler;->-get1(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler$1$1;->this$1:Lmiui/view/MiuiSecurityPermissionHandler$1;

    iget-object v2, v2, Lmiui/view/MiuiSecurityPermissionHandler$1;->this$0:Lmiui/view/MiuiSecurityPermissionHandler;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->-get0(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 68
    :cond_1
    return-void
.end method
