.class Lmiui/util/ProximitySensorWrapper$1;
.super Ljava/lang/Object;
.source "ProximitySensorWrapper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ProximitySensorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/ProximitySensorWrapper;


# direct methods
.method constructor <init>(Lmiui/util/ProximitySensorWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/util/ProximitySensorWrapper;

    .prologue
    .line 36
    iput-object p1, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 61
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 39
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v6

    .line 41
    .local v0, "distance":F
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    const/high16 v2, 0x40800000    # 4.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    .line 42
    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->-get2(Lmiui/util/ProximitySensorWrapper;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    const/4 v1, 0x1

    .line 44
    .local v1, "isTooClose":Z
    :goto_0
    const-string/jumbo v2, "ProximitySensorWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "proximity distance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz v1, :cond_3

    .line 46
    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->-get1(Lmiui/util/ProximitySensorWrapper;)I

    move-result v2

    if-eq v2, v7, :cond_0

    .line 47
    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2, v7}, Lmiui/util/ProximitySensorWrapper;->-set0(Lmiui/util/ProximitySensorWrapper;I)I

    .line 48
    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->-get0(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 49
    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->-get0(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 38
    :cond_0
    :goto_1
    return-void

    .line 42
    .end local v1    # "isTooClose":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isTooClose":Z
    goto :goto_0

    .line 41
    .end local v1    # "isTooClose":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isTooClose":Z
    goto :goto_0

    .line 52
    :cond_3
    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->-get1(Lmiui/util/ProximitySensorWrapper;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2, v6}, Lmiui/util/ProximitySensorWrapper;->-set0(Lmiui/util/ProximitySensorWrapper;I)I

    .line 54
    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->-get0(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->-get0(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
