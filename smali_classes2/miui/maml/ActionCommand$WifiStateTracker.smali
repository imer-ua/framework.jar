.class final Lmiui/maml/ActionCommand$WifiStateTracker;
.super Lmiui/maml/ActionCommand$StateTracker;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# static fields
.field private static final MAX_SCAN_ATTEMPT:I = 0x3


# instance fields
.field public zConnected:Z

.field private zScanAttempt:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 439
    invoke-direct {p0}, Lmiui/maml/ActionCommand$StateTracker;-><init>()V

    .line 442
    iput-boolean v0, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    .line 444
    iput v0, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    .line 439
    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/ActionCommand$WifiStateTracker;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/maml/ActionCommand$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .param p0, "wifiState"    # I

    .prologue
    .line 520
    packed-switch p0, :pswitch_data_0

    .line 530
    const/4 v0, 0x4

    return v0

    .line 522
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 524
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 526
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 528
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 448
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 449
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lmiui/maml/ActionCommand$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    return v1

    .line 452
    :cond_0
    const/4 v1, 0x4

    return v1
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x3

    .line 488
    const-string/jumbo v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 489
    const-string/jumbo v5, "wifi_state"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 490
    .local v2, "wifiState":I
    invoke-static {v2}, Lmiui/maml/ActionCommand$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lmiui/maml/ActionCommand$StateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 492
    if-ne v7, v2, :cond_0

    .line 493
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    .line 494
    iput v4, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    .line 487
    .end local v2    # "wifiState":I
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    const-string/jumbo v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 497
    iget v3, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    if-ge v3, v7, :cond_0

    .line 498
    iget v3, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    if-ne v3, v7, :cond_0

    .line 499
    iput-boolean v4, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    goto :goto_0

    .line 502
    :cond_2
    const-string/jumbo v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 503
    iput v7, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    .line 505
    const-string/jumbo v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 507
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 508
    .local v1, "state":Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_3

    .line 509
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v1, :cond_4

    .line 508
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    goto :goto_0

    .line 510
    :cond_4
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_3

    .line 511
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_3

    .line 512
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_3

    move v3, v4

    goto :goto_1
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 457
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 458
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v0, Lmiui/maml/util/WifiApHelper;

    invoke-direct {v0, p1}, Lmiui/maml/util/WifiApHelper;-><init>(Landroid/content/Context;)V

    .line 459
    .local v0, "wifiApHelper":Lmiui/maml/util/WifiApHelper;
    if-nez v1, :cond_0

    .line 460
    const-string/jumbo v2, "ActionCommand"

    const-string/jumbo v3, "No wifiManager."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void

    .line 468
    :cond_0
    new-instance v2, Lmiui/maml/ActionCommand$WifiStateTracker$1;

    invoke-direct {v2, p0, v1, p2, v0}, Lmiui/maml/ActionCommand$WifiStateTracker$1;-><init>(Lmiui/maml/ActionCommand$WifiStateTracker;Landroid/net/wifi/WifiManager;ZLmiui/maml/util/WifiApHelper;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 456
    return-void
.end method
