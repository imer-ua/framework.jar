.class public abstract Lcom/android/internal/os/BatteryStatsImpl$Timer;
.super Landroid/os/BatteryStats$Timer;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Timer"
.end annotation


# instance fields
.field protected final mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

.field protected mCount:I

.field protected mLastCount:I

.field protected mLastTime:J

.field protected mLoadedCount:I

.field protected mLoadedTime:J

.field protected final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field protected mTimeBeforeMark:J

.field protected mTotalTime:J

.field protected final mType:I

.field protected mUnpluggedCount:I

.field protected mUnpluggedTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .prologue
    .line 1098
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 1099
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 1100
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mType:I

    .line 1101
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1102
    invoke-virtual {p3, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 1098
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p4, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1080
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 1081
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 1082
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mType:I

    .line 1083
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1085
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 1086
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    .line 1087
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    .line 1088
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    .line 1089
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 1090
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    .line 1091
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    .line 1092
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    .line 1093
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    .line 1094
    invoke-virtual {p3, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 1080
    return-void
.end method

.method public static writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V
    .locals 2
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "timer"    # Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 1175
    if-nez p1, :cond_0

    .line 1176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    return-void

    .line 1179
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1174
    return-void
.end method


# virtual methods
.method protected abstract computeCurrentCountLocked()I
.end method

.method protected abstract computeRunTimeLocked(J)J
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 1122
    return-void
.end method

.method public getCountLocked(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v0

    .line 1199
    .local v0, "val":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1200
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    sub-int/2addr v0, v1

    .line 1205
    :cond_0
    :goto_0
    return v0

    .line 1201
    :cond_1
    if-eqz p1, :cond_0

    .line 1202
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getTimeSinceMarkLocked(J)J
    .locals 5
    .param p1, "elapsedRealtimeUs"    # J

    .prologue
    .line 1210
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    move-result-wide v0

    .line 1211
    .local v0, "val":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public getTotalTimeLocked(JI)J
    .locals 5
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 1186
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    move-result-wide v0

    .line 1187
    .local v0, "val":J
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 1188
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    sub-long/2addr v0, v2

    .line 1193
    :cond_0
    :goto_0
    return-wide v0

    .line 1189
    :cond_1
    if-eqz p3, :cond_0

    .line 1190
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1217
    const-string/jumbo v1, " mLoadedCount="

    .line 1216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1217
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    .line 1216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1217
    const-string/jumbo v1, " mLastCount="

    .line 1216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1217
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    .line 1216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1218
    const-string/jumbo v1, " mUnpluggedCount="

    .line 1216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1218
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    .line 1216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1220
    const-string/jumbo v1, " mLoadedTime="

    .line 1219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1220
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    .line 1219
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1222
    const-string/jumbo v1, " mUnpluggedTime="

    .line 1221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1222
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    .line 1221
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1215
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "timeBaseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 1145
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    .line 1146
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    .line 1139
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 1160
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 1161
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 1155
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1234
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 1235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    .line 1236
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    .line 1237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 1238
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    .line 1239
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    .line 1242
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    .line 1232
    return-void
.end method

.method public reset(Z)Z
    .locals 3
    .param p1, "detachIfReset"    # Z

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 1114
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    .line 1115
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 1116
    if-eqz p1, :cond_0

    .line 1117
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    .line 1119
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 1227
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    move-result-wide v0

    .line 1228
    .local v0, "runTime":J
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1229
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1133
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1134
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1135
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1126
    return-void
.end method
