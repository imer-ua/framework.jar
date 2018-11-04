.class public Lmiui/os/MiuiPowerManager;
.super Ljava/lang/Object;
.source "MiuiPowerManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reboot(ZLjava/lang/String;Z)V
    .locals 3
    .param p0, "confim"    # Z
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "wait"    # Z

    .prologue
    .line 17
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 16
    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 18
    .local v1, "powermanager":Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 19
    invoke-interface {v1, p0, p1, p2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .end local v1    # "powermanager":Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
