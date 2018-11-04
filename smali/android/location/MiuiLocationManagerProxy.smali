.class public Landroid/location/MiuiLocationManagerProxy;
.super Ljava/lang/Object;
.source "MiuiLocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;,
        Landroid/location/MiuiLocationManagerProxy$ProxyBinder;
    }
.end annotation


# static fields
.field private static sInvokeMonitor:Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;


# direct methods
.method static synthetic -get0()Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;
    .locals 1

    sget-object v0, Landroid/location/MiuiLocationManagerProxy;->sInvokeMonitor:Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProxy(Landroid/location/ILocationManager;)Landroid/location/ILocationManager;
    .locals 2
    .param p0, "locationManager"    # Landroid/location/ILocationManager;

    .prologue
    .line 27
    new-instance v0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;

    invoke-interface {p0}, Landroid/location/ILocationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    return-object v0
.end method

.method public static setInvokeMonitor(Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;)V
    .locals 2
    .param p0, "m"    # Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;

    .prologue
    .line 21
    const-class v0, Landroid/location/MiuiLocationManagerProxy;

    monitor-enter v0

    .line 22
    :try_start_0
    sput-object p0, Landroid/location/MiuiLocationManagerProxy;->sInvokeMonitor:Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
