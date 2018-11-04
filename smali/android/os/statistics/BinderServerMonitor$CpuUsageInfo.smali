.class Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;
.super Ljava/lang/Object;
.source "BinderServerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderServerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CpuUsageInfo"
.end annotation


# instance fields
.field public binderCpuTime:J

.field public cpuUsage:D

.field public currentTimeMills:J

.field public duration:J

.field public pid:I

.field public procName:Ljava/lang/String;

.field public procState:I

.field public runningTime:J

.field public uid:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "procName"

    iget-object v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->procName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v1, "procState"

    iget v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->procState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string/jumbo v1, "duration"

    iget-wide v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->duration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 57
    const-string/jumbo v1, "runningTime"

    iget-wide v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->runningTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 58
    const-string/jumbo v1, "binderCpuTime"

    iget-wide v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->binderCpuTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 59
    const-string/jumbo v1, "cpuUsage"

    iget-wide v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->cpuUsage:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 60
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->procName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v1, " procState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->procState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v1, " cputime:%s(%s:%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->runningTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v4, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->runningTime:J

    iget-wide v6, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->binderCpuTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-wide v4, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->binderCpuTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v1, " cpuUsage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->cpuUsage:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
