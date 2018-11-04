.class public Lmiui/securitycenter/powercenter/HistoryItemWrapper;
.super Ljava/lang/Object;
.source "HistoryItemWrapper.java"


# static fields
.field static final CMD_CURRENT_TIME:B = 0x5t

.field static final CMD_NULL:B = -0x1t

.field static final CMD_OVERFLOW:B = 0x6t

.field static final CMD_RESET:B = 0x7t

.field static final CMD_SHUTDOWN:B = 0x8t

.field static final CMD_START:B = 0x4t

.field static final CMD_UPDATE:B


# instance fields
.field batteryHealth:B

.field batteryLevel:B

.field batteryPlugType:B

.field batteryStatus:B

.field batteryTemperature:S

.field batteryVoltage:C

.field charging:Z

.field cmd:B

.field cpuRunning:Z

.field gpsOn:Z

.field phoneSignalStrength:I

.field screenOn:Z

.field time:J

.field wakelockOn:Z

.field wifiOn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    .line 5
    return-void
.end method


# virtual methods
.method public getObjectValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 52
    :cond_1
    const-string/jumbo v0, "batteryLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryLevel:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 55
    :cond_2
    const-string/jumbo v0, "batteryStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryStatus:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 58
    :cond_3
    const-string/jumbo v0, "batteryHealth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryHealth:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 61
    :cond_4
    const-string/jumbo v0, "batteryPlugType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 62
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryPlugType:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 64
    :cond_5
    const-string/jumbo v0, "batteryTemperature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    iget-short v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryTemperature:S

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 67
    :cond_6
    const-string/jumbo v0, "batteryVoltage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 68
    iget-char v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryVoltage:C

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 70
    :cond_7
    const-string/jumbo v0, "wifiOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 71
    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wifiOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 73
    :cond_8
    const-string/jumbo v0, "gpsOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 74
    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->gpsOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 76
    :cond_9
    const-string/jumbo v0, "charging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 77
    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->charging:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 79
    :cond_a
    const-string/jumbo v0, "screenOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 80
    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->screenOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 82
    :cond_b
    const-string/jumbo v0, "wakelockOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 83
    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wakelockOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 85
    :cond_c
    const-string/jumbo v0, "phoneSignalStrength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 86
    iget v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->phoneSignalStrength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 88
    :cond_d
    const-string/jumbo v0, "cpuRunning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 89
    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cpuRunning:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 91
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->time:J

    return-wide v0
.end method

.method public isDeltaData()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 34
    iget-byte v2, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 37
    :cond_1
    iget-byte v2, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isOverflow()Z
    .locals 2

    .prologue
    .line 42
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
