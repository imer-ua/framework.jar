.class public Lmiui/maml/util/WifiApHelper;
.super Ljava/lang/Object;
.source "WifiApHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lmiui/maml/util/WifiApHelper;->mContext:Landroid/content/Context;

    .line 16
    iget-object v0, p0, Lmiui/maml/util/WifiApHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lmiui/maml/util/WifiApHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 14
    return-void
.end method


# virtual methods
.method public setWifiApEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 20
    const-string/jumbo v0, "WifiApHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiApEnabled() enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v0, p0, Lmiui/maml/util/WifiApHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 19
    return-void
.end method
