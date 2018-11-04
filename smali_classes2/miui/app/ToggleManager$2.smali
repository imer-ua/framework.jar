.class Lmiui/app/ToggleManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ToggleManager.java"


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
    .line 1104
    iput-object p1, p0, Lmiui/app/ToggleManager$2;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1109
    invoke-static {}, Lmiui/app/ToggleManager;->-get9()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1110
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1111
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "com.xiaomi.midrop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1112
    const/4 v2, 0x1

    invoke-static {v2}, Lmiui/app/ToggleManager;->-set2(Z)Z

    .line 1106
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1116
    invoke-static {}, Lmiui/app/ToggleManager;->-get9()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1117
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1118
    .restart local v1    # "packageName":Ljava/lang/String;
    const-string/jumbo v2, "com.xiaomi.midrop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1119
    const/4 v2, 0x0

    invoke-static {v2}, Lmiui/app/ToggleManager;->-set2(Z)Z

    goto :goto_0
.end method
