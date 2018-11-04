.class public Lmiui/util/ProximitySensorWrapper;
.super Ljava/lang/Object;
.source "ProximitySensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/ProximitySensorWrapper$1;,
        Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    }
.end annotation


# static fields
.field private static final EVENT_FAR:I = 0x1

.field private static final EVENT_TOO_CLOSE:I = 0x0

.field private static final PROXIMITY_THRESHOLD:F = 4.0f

.field public static final STATE_STABLE_DELAY:I = 0x12c


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mProximitySensorChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitySensorState:I

.field private final mSensor:Landroid/hardware/Sensor;

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static synthetic -get0(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/util/ProximitySensorWrapper;)I
    .locals 1

    iget v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I

    return v0
.end method

.method static synthetic -get2(Lmiui/util/ProximitySensorWrapper;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/util/ProximitySensorWrapper;I)I
    .locals 0

    iput p1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I

    return p1
.end method

.method static synthetic -wrap0(Lmiui/util/ProximitySensorWrapper;Z)V
    .locals 0
    .param p1, "tooClose"    # Z

    .prologue
    invoke-direct {p0, p1}, Lmiui/util/ProximitySensorWrapper;->notifyListeners(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    .line 36
    new-instance v0, Lmiui/util/ProximitySensorWrapper$1;

    invoke-direct {v0, p0}, Lmiui/util/ProximitySensorWrapper$1;-><init>(Lmiui/util/ProximitySensorWrapper;)V

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 65
    iput-object p1, p0, Lmiui/util/ProximitySensorWrapper;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lmiui/util/ProximitySensorWrapper$2;

    invoke-direct {v0, p0}, Lmiui/util/ProximitySensorWrapper$2;-><init>(Lmiui/util/ProximitySensorWrapper;)V

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I

    .line 80
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 81
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    .line 64
    return-void
.end method

.method private notifyListeners(Z)V
    .locals 4
    .param p1, "tooClose"    # Z

    .prologue
    .line 85
    iget-object v3, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    monitor-enter v3

    .line 86
    :try_start_0
    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .line 87
    .local v0, "listener":Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    invoke-interface {v0, p1}, Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;->onSensorChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    .end local v0    # "listener":Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 84
    return-void
.end method

.method private unregisterSensorEventListenerLocked()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public registerListener(Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;)V
    .locals 5
    .param p1, "listener"    # Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .prologue
    .line 93
    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 98
    :cond_0
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterAllListeners()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    invoke-direct {p0}, Lmiui/util/ProximitySensorWrapper;->unregisterSensorEventListenerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 110
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterListener(Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .prologue
    .line 104
    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0}, Lmiui/util/ProximitySensorWrapper;->unregisterSensorEventListenerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
