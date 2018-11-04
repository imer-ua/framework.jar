.class public Landroid/os/statistics/EventLogSuperviser;
.super Ljava/lang/Object;
.source "EventLogSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/EventLogSuperviser$EventLogFields;,
        Landroid/os/statistics/EventLogSuperviser$EventLogTags;,
        Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
    }
.end annotation


# static fields
.field private static final emptyEventValueStrs:[Ljava/lang/String;

.field private static final supervisedEventLogTags:[I


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/statistics/EventLogSuperviser;->emptyEventValueStrs:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/16 v0, 0xaa8

    .line 82
    const/16 v1, 0x7538

    .line 96
    const/16 v2, 0x7588

    .line 79
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/os/statistics/EventLogSuperviser;->supervisedEventLogTags:[I

    .line 101
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/os/statistics/EventLogSuperviser;->emptyEventValueStrs:[Ljava/lang/String;

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

.method private static isSupervised(I)Z
    .locals 2
    .param p0, "tag"    # I

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/statistics/EventLogSuperviser;->supervisedEventLogTags:[I

    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static notifyEvent(IF)V
    .locals 1
    .param p0, "tag"    # I
    .param p1, "value"    # F

    .prologue
    .line 270
    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    .line 269
    :cond_0
    return-void
.end method

.method public static notifyEvent(II)V
    .locals 1
    .param p0, "tag"    # I
    .param p1, "value"    # I

    .prologue
    .line 258
    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    .line 257
    :cond_0
    return-void
.end method

.method public static notifyEvent(IJ)V
    .locals 1
    .param p0, "tag"    # I
    .param p1, "value"    # J

    .prologue
    .line 264
    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    .line 263
    :cond_0
    return-void
.end method

.method public static notifyEvent(ILjava/lang/String;)V
    .locals 1
    .param p0, "tag"    # I
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {p0, p1}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    .line 275
    :cond_0
    return-void
.end method

.method public static varargs notifyEvent(I[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # I
    .param p1, "list"    # [Ljava/lang/Object;

    .prologue
    .line 282
    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {p0, p1}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    .line 281
    :cond_0
    return-void
.end method

.method private static notifyEventWithObject(ILjava/lang/Object;)V
    .locals 6
    .param p0, "tag"    # I
    .param p1, "eventLogValueObject"    # Ljava/lang/Object;

    .prologue
    .line 288
    new-instance v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    invoke-direct {v0}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;-><init>()V

    .line 289
    .local v0, "item":Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->currentTimeMillis:J

    .line 291
    iput p0, v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    .line 292
    invoke-virtual {v0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v2

    check-cast v2, Landroid/os/statistics/EventLogSuperviser$EventLogFields;

    iput-object p1, v2, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    .line 293
    iget v2, v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    const/16 v3, 0x7588

    if-ne v2, v3, :cond_0

    .line 294
    invoke-virtual {v0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v2

    check-cast v2, Landroid/os/statistics/EventLogSuperviser$EventLogFields;

    iget-object v1, v2, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 295
    .local v1, "objects":[Ljava/lang/Object;
    const/4 v2, 0x3

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x4

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->launchEventTotalTime:J

    .line 297
    .end local v1    # "objects":[Ljava/lang/Object;
    :cond_0
    invoke-static {v0}, Landroid/os/statistics/PerfEventReporter;->report(Landroid/os/statistics/PerfEvent;)V

    .line 287
    return-void
.end method
