.class public Landroid/os/statistics/SingleJankRecord$JankRecordFields;
.super Landroid/os/statistics/PerfEvent$DetailFields;
.source "SingleJankRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SingleJankRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JankRecordFields"
.end annotation


# instance fields
.field public appCause:Ljava/lang/String;

.field public batteryLevel:I

.field public batteryTemperature:I

.field public conclusion:Ljava/lang/String;

.field public isCharging:Z

.field public receivedCurrentTimeMillis:J

.field public receivedUptimeMillis:J

.field public sysCause:Ljava/lang/String;

.field public windowName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/os/statistics/PerfEvent$DetailFields;-><init>()V

    .line 146
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    .line 147
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    .line 148
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    .line 149
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

    .line 145
    return-void
.end method
