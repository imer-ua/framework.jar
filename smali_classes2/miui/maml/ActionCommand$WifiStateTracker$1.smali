.class Lmiui/maml/ActionCommand$WifiStateTracker$1;
.super Landroid/os/AsyncTask;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ActionCommand$WifiStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/ActionCommand$WifiStateTracker;

.field final synthetic val$desiredState:Z

.field final synthetic val$wifiApHelper:Lmiui/maml/util/WifiApHelper;

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lmiui/maml/ActionCommand$WifiStateTracker;Landroid/net/wifi/WifiManager;ZLmiui/maml/util/WifiApHelper;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/maml/ActionCommand$WifiStateTracker;
    .param p2, "val$wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "val$desiredState"    # Z
    .param p4, "val$wifiApHelper"    # Lmiui/maml/util/WifiApHelper;

    .prologue
    .line 468
    iput-object p1, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->this$1:Lmiui/maml/ActionCommand$WifiStateTracker;

    iput-object p2, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p3, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$desiredState:Z

    iput-object p4, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$wifiApHelper:Lmiui/maml/util/WifiApHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 470
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/maml/ActionCommand$WifiStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 474
    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 475
    .local v0, "wifiApState":I
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$desiredState:Z

    if-eqz v1, :cond_1

    .line 476
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 477
    :cond_0
    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$wifiApHelper:Lmiui/maml/util/WifiApHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/maml/util/WifiApHelper;->setWifiApEnabled(Z)V

    .line 480
    :cond_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v2, p0, Lmiui/maml/ActionCommand$WifiStateTracker$1;->val$desiredState:Z

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 481
    const/4 v1, 0x0

    return-object v1
.end method
