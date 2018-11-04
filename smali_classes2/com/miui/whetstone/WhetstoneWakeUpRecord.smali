.class public Lcom/miui/whetstone/WhetstoneWakeUpRecord;
.super Ljava/lang/Object;
.source "WhetstoneWakeUpRecord.java"


# static fields
.field private static final DELAY_STOP_RTC_APP_TIME:I = 0x1388


# instance fields
.field public intent:Landroid/app/PendingIntent;

.field public packageName:Ljava/lang/String;

.field public status:Z

.field public uid:I

.field public updateTime:J

.field public wakeup_count:I


# direct methods
.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->uid:I

    .line 17
    iput-object p2, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->intent:Landroid/app/PendingIntent;

    .line 18
    iput-object p3, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->packageName:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->status:Z

    .line 15
    return-void
.end method


# virtual methods
.method public clearWakeupCount()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    .line 23
    return-void
.end method

.method public disableWakeUpStatus()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->status:Z

    .line 27
    return-void
.end method

.method public getLastWakeUpTime()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->updateTime:J

    return-wide v0
.end method

.method public getRecordPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->intent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRecordStatus()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->status:Z

    return v0
.end method

.method public getWakeUpCount()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    return v0
.end method

.method public increaseWakeUpCount()V
    .locals 4

    .prologue
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->updateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 33
    iget v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->updateTime:J

    .line 31
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; wakeup_count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->wakeup_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->status:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; updateTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/whetstone/WhetstoneWakeUpRecord;->updateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
