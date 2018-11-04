.class Lmiui/app/WifiApEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/WifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/WifiApEnabler;


# direct methods
.method constructor <init>(Lmiui/app/WifiApEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/WifiApEnabler;

    .prologue
    .line 51
    iput-object p1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    .line 57
    const-string/jumbo v2, "wifi_state"

    const/16 v3, 0xe

    .line 56
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lmiui/app/WifiApEnabler;->-wrap0(Lmiui/app/WifiApEnabler;I)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    invoke-static {v1}, Lmiui/app/WifiApEnabler;->-wrap2(Lmiui/app/WifiApEnabler;)V

    goto :goto_0

    .line 60
    :cond_2
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    invoke-static {v1}, Lmiui/app/WifiApEnabler;->-get0(Lmiui/app/WifiApEnabler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    .line 63
    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    .line 62
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lmiui/app/WifiApEnabler;->-wrap1(Lmiui/app/WifiApEnabler;I)V

    goto :goto_0
.end method
