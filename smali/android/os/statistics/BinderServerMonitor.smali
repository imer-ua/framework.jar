.class public Landroid/os/statistics/BinderServerMonitor;
.super Ljava/lang/Object;
.source "BinderServerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX_RECORDS_QUEUE_CAPACITY:I = 0xc

.field public static final PERFSHIELDER_SERVICE_NAME:Ljava/lang/String; = "perfshielder"

.field private static final TAG:Ljava/lang/String; = "BinderServerMonitor"

.field private static isEnabled:Z

.field private static mBinderClientCpuUsages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mExcessiveCpuUsageRecords:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static mExcessiveCpuUsageThershold:I

.field private static mPerfService:Lcom/android/internal/app/IPerfShielder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-string/jumbo v0, "persist.sys.excessive_cpu_usage_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/statistics/BinderServerMonitor;->isEnabled:Z

    .line 26
    const-string/jumbo v0, "persist.sys.excessive_cpu_usage"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageThershold:I

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/statistics/BinderServerMonitor;->mBinderClientCpuUsages:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native clearBinderClientCpuTimeUsed(I)J
.end method

.method public static computeCpuUsage(JJ)I
    .locals 2
    .param p0, "upCputime"    # J
    .param p2, "cputimeUsed"    # J

    .prologue
    .line 111
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p2

    div-long/2addr v0, p0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static native dumpBinderClientCpuTimeUsed(Ljava/util/HashMap;)V
.end method

.method public static getBinderClientCpuUsages()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, Landroid/os/statistics/BinderServerMonitor;->mBinderClientCpuUsages:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getExcessiveCpuUsageThreshold()I
    .locals 1

    .prologue
    .line 72
    sget v0, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageThershold:I

    return v0
.end method

.method static native nativeStart()V
.end method

.method public static recordExcessiveCpuUsage(Ljava/lang/String;IIIJJJ)V
    .locals 6
    .param p0, "procName"    # Ljava/lang/String;
    .param p1, "procState"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "uptimeSince"    # J
    .param p6, "procCputime"    # J
    .param p8, "binderCpuTime"    # J

    .prologue
    .line 85
    new-instance v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;

    invoke-direct {v0}, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;-><init>()V

    .line 86
    .local v0, "cpuUsageInfo":Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;
    iput p2, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->pid:I

    .line 87
    iput p3, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->uid:I

    .line 88
    iput-object p0, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->procName:Ljava/lang/String;

    .line 89
    iput p1, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->procState:I

    .line 90
    iput-wide p4, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->duration:J

    .line 91
    add-long v2, p6, p8

    iput-wide v2, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->runningTime:J

    .line 92
    iput-wide p8, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->binderCpuTime:J

    .line 93
    iget-wide v2, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->runningTime:J

    invoke-static {p4, p5, v2, v3}, Landroid/os/statistics/BinderServerMonitor;->computeCpuUsage(JJ)I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->cpuUsage:D

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->currentTimeMills:J

    .line 95
    sget-object v2, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    invoke-virtual {v0}, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 97
    const-string/jumbo v2, "BinderServerMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "excessive process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v2, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_1

    .line 101
    sget-object v2, Landroid/os/statistics/BinderServerMonitor;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v2, :cond_0

    .line 103
    :try_start_0
    sget-object v2, Landroid/os/statistics/BinderServerMonitor;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    sget-object v3, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    invoke-interface {v2, v3}, Lcom/android/internal/app/IPerfShielder;->reportExcessiveCpuUsageRecords(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    sget-object v2, Landroid/os/statistics/BinderServerMonitor;->mExcessiveCpuUsageRecords:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 84
    :cond_1
    return-void

    .line 104
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static start()V
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Landroid/os/statistics/BinderServerMonitor;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Landroid/os/statistics/BinderServerMonitor;->nativeStart()V

    .line 67
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v0

    sput-object v0, Landroid/os/statistics/BinderServerMonitor;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    .line 64
    :cond_0
    return-void
.end method

.method public static updateBinderClientCpuUsages()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/os/statistics/BinderServerMonitor;->mBinderClientCpuUsages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 77
    sget-object v0, Landroid/os/statistics/BinderServerMonitor;->mBinderClientCpuUsages:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/os/statistics/BinderServerMonitor;->dumpBinderClientCpuTimeUsed(Ljava/util/HashMap;)V

    .line 75
    return-void
.end method
