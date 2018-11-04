.class public Landroid/os/statistics/PerfEventFilter;
.super Ljava/lang/Object;
.source "PerfEventFilter.java"


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x40

.field private static final DEFAULT_SUSPECTED_CAPACITY:I = 0x80


# instance fields
.field private final effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final isAppSideFilter:Z

.field private lastBatchBeginTimeMillis:J

.field private nativeBacktraceMapUpdated:Z

.field private final suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final tempCompletedMacroEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MacroscopicEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 4
    .param p1, "_isAppSideFilter"    # Z

    .prologue
    const/16 v3, 0x40

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MicroscopicEvent;

    invoke-direct {v0, v1, v3}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    .line 15
    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    .line 18
    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MicroscopicEvent;

    invoke-direct {v0, v1, v3}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    .line 17
    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    .line 20
    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MicroscopicEvent;

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    .line 19
    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/statistics/PerfEventFilter;->lastBatchBeginTimeMillis:J

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/statistics/PerfEventFilter;->nativeBacktraceMapUpdated:Z

    .line 25
    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MacroscopicEvent;

    invoke-direct {v0, v1, v3}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    .line 24
    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMacroEvents:Landroid/os/statistics/FastPerfEventList;

    .line 27
    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MicroscopicEvent;

    invoke-direct {v0, v1, v3}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    .line 26
    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    .line 30
    iput-boolean p1, p0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    .line 29
    return-void
.end method

.method private addCompletedEvent(Landroid/os/statistics/MicroscopicEvent;)V
    .locals 8
    .param p1, "perfEvent"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    .line 90
    iget-boolean v4, p0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/os/statistics/PerfEvent;->resolveLazyInfo()V

    .line 93
    :cond_0
    const/4 v3, 0x0

    .line 94
    .local v3, "pos":I
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v1, v4, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v1, [Landroid/os/statistics/MicroscopicEvent;

    .line 95
    .local v1, "events":[Landroid/os/statistics/MicroscopicEvent;
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    iget v4, v4, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 96
    aget-object v0, v1, v2

    .line 97
    .local v0, "current":Landroid/os/statistics/MicroscopicEvent;
    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v6, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 95
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 99
    :cond_2
    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v6, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 100
    add-int/lit8 v3, v2, 0x1

    .line 112
    .end local v0    # "current":Landroid/os/statistics/MicroscopicEvent;
    :cond_3
    :goto_1
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v4, v3, p1}, Landroid/os/statistics/FastPerfEventList;->add(ILandroid/os/statistics/PerfEvent;)V

    .line 113
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isInTestMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 114
    const-string/jumbo v4, "MiuiPerfSuperviser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "completed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/statistics/PerfEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_4
    return-void

    .line 102
    .restart local v0    # "current":Landroid/os/statistics/MicroscopicEvent;
    :cond_5
    invoke-virtual {v0}, Landroid/os/statistics/MicroscopicEvent;->isRootEvent()Z

    move-result v4

    invoke-virtual {p1}, Landroid/os/statistics/MicroscopicEvent;->isRootEvent()Z

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v4

    if-gtz v4, :cond_6

    .line 103
    add-int/lit8 v3, v2, 0x1

    .line 104
    goto :goto_1

    .line 105
    :cond_6
    invoke-virtual {v0}, Landroid/os/statistics/MicroscopicEvent;->isMasterEvent()Z

    move-result v4

    invoke-virtual {p1}, Landroid/os/statistics/MicroscopicEvent;->isMasterEvent()Z

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v4

    if-gtz v4, :cond_1

    .line 106
    add-int/lit8 v3, v2, 0x1

    .line 107
    goto :goto_1
.end method

.method private checkEffectivePerfEvent(Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 12
    .param p1, "checkingEvent"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 173
    iget-boolean v3, p0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    if-eqz v3, :cond_2

    .line 174
    invoke-virtual {p1}, Landroid/os/statistics/MicroscopicEvent;->hasNativeStack()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/os/statistics/PerfEventFilter;->nativeBacktraceMapUpdated:Z

    if-eqz v3, :cond_1

    .line 178
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/statistics/PerfEvent;->resolveLazyInfo()V

    .line 179
    invoke-virtual {p1}, Landroid/os/statistics/PerfEvent;->isMeaningful()Z

    move-result v3

    if-nez v3, :cond_2

    .line 180
    return v4

    .line 175
    :cond_1
    invoke-static {}, Landroid/os/statistics/NativeBackTrace;->updateBacktraceMap()I

    .line 176
    iput-boolean v10, p0, Landroid/os/statistics/PerfEventFilter;->nativeBacktraceMapUpdated:Z

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p1}, Landroid/os/statistics/MicroscopicEvent;->hasPeerBlockingEvent()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 185
    iget-boolean v3, p0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/os/statistics/MicroscopicEvent;->isBlockedBySameProcess()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    :cond_3
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v3, p1}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    .line 188
    :cond_4
    return v10

    .line 191
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget v3, v3, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v0, v3, :cond_8

    .line 192
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v3, v3, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v3, [Landroid/os/statistics/MicroscopicEvent;

    aget-object v2, v3, v0

    .line 193
    .local v2, "suspectedPerfEvent":Landroid/os/statistics/MicroscopicEvent;
    if-nez v2, :cond_7

    .line 191
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_7
    iget-wide v6, v2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v3, v6, v8

    if-ltz v3, :cond_9

    .line 212
    .end local v2    # "suspectedPerfEvent":Landroid/os/statistics/MicroscopicEvent;
    :cond_8
    return v10

    .line 199
    .restart local v2    # "suspectedPerfEvent":Landroid/os/statistics/MicroscopicEvent;
    :cond_9
    iget-wide v6, v2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_6

    .line 202
    invoke-virtual {v2}, Landroid/os/statistics/MicroscopicEvent;->isPeerBlockingEvent()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-direct {p0, p1, v2}, Landroid/os/statistics/PerfEventFilter;->isIncludedEnough(Landroid/os/statistics/MicroscopicEvent;Landroid/os/statistics/MicroscopicEvent;)Z

    move-result v1

    .line 203
    .local v1, "isEffectiveEvent":Z
    :goto_3
    if-eqz v1, :cond_6

    .line 204
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v3, v3, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v3, [Landroid/os/statistics/MicroscopicEvent;

    aput-object v11, v3, v0

    .line 205
    iget v3, v2, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    and-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_a

    .line 207
    iget v3, v2, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    iget v5, p1, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    iput v3, v2, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    .line 209
    :cond_a
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v3, v2}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    goto :goto_2

    .end local v1    # "isEffectiveEvent":Z
    :cond_b
    move v1, v4

    .line 202
    goto :goto_3
.end method

.method private checkEffectivePerfEvents(II)V
    .locals 5
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 156
    move v1, p1

    .line 157
    .local v1, "checkingEventPos":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 158
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v3, v3, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v3, [Landroid/os/statistics/MicroscopicEvent;

    aget-object v0, v3, v1

    .line 159
    .local v0, "checkingEvent":Landroid/os/statistics/MicroscopicEvent;
    if-nez v0, :cond_0

    .line 160
    add-int/lit8 v1, v1, 0x1

    .line 161
    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0, v0}, Landroid/os/statistics/PerfEventFilter;->checkEffectivePerfEvent(Landroid/os/statistics/MicroscopicEvent;)Z

    move-result v2

    .line 164
    .local v2, "isMeaningful":Z
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v3, v3, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v3, [Landroid/os/statistics/MicroscopicEvent;

    aput-object v4, v3, v1

    .line 165
    if-eqz v2, :cond_1

    .line 166
    invoke-direct {p0, v0}, Landroid/os/statistics/PerfEventFilter;->addCompletedEvent(Landroid/os/statistics/MicroscopicEvent;)V

    .line 168
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "checkingEvent":Landroid/os/statistics/MicroscopicEvent;
    .end local v2    # "isMeaningful":Z
    :cond_2
    return-void
.end method

.method private checkEventWaitingBlockingPeer(Landroid/os/statistics/MicroscopicEvent;J)Z
    .locals 34
    .param p1, "checkingEvent"    # Landroid/os/statistics/MicroscopicEvent;
    .param p2, "batchBeginTimeMillis"    # J

    .prologue
    .line 233
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->matchedPeerBlockingDuration:J

    move-wide/from16 v24, v0

    .line 234
    .local v24, "peerBlockingDuration":J
    const-wide/16 v10, 0x0

    .line 235
    .local v10, "criticalPeerDuration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/os/statistics/FastPerfEventList;->size:I

    move/from16 v27, v0

    .line 236
    .local v27, "suspectedSize":I
    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 237
    .local v4, "checkingBeginUptimeMillis":J
    move-object/from16 v0, p1

    iget-wide v8, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 238
    .local v8, "checkingEndUptimeMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    move-object/from16 v17, v0

    check-cast v17, [Landroid/os/statistics/MicroscopicEvent;

    .line 239
    .local v17, "suspectedEvents":[Landroid/os/statistics/MicroscopicEvent;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v27

    if-ge v15, v0, :cond_2

    .line 240
    aget-object v26, v17, v15

    .line 241
    .local v26, "suspectedPerfEvent":Landroid/os/statistics/MicroscopicEvent;
    if-nez v26, :cond_1

    .line 239
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 244
    :cond_1
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-wide/from16 v28, v0

    cmp-long v28, v28, v8

    if-ltz v28, :cond_5

    .line 279
    .end local v26    # "suspectedPerfEvent":Landroid/os/statistics/MicroscopicEvent;
    :cond_2
    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/os/statistics/MicroscopicEvent;->matchedPeerBlockingDuration:J

    .line 281
    sub-long v6, v8, v4

    .line 283
    .local v6, "checkingDuration":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c

    .line 284
    move-wide/from16 v22, v6

    .line 285
    .local v22, "maxWaitingTimeInMillis":J
    const-wide/16 v28, 0x7d0

    cmp-long v28, v6, v28

    if-gez v28, :cond_3

    .line 286
    const-wide/16 v22, 0x7d0

    .line 295
    :cond_3
    :goto_2
    const/16 v28, 0x1

    shr-long v28, v6, v28

    const/16 v30, 0x2

    shr-long v30, v6, v30

    add-long v28, v28, v30

    .line 296
    const/16 v30, 0x3

    shr-long v30, v6, v30

    .line 295
    add-long v28, v28, v30

    .line 296
    const/16 v30, 0x4

    shr-long v30, v6, v30

    .line 295
    add-long v20, v28, v30

    .line 297
    .local v20, "maxPeerBlockingDuration":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/statistics/MicroscopicEvent;->hasMultiplePeerBlockingEvents()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 298
    const/16 v28, 0x1

    shr-long v28, v6, v28

    const/16 v30, 0x2

    shr-long v30, v6, v30

    add-long v28, v28, v30

    const/16 v30, 0x4

    shr-long v30, v6, v30

    add-long v18, v28, v30

    .line 299
    .local v18, "maxCriticalPeerDuration":J
    cmp-long v28, v10, v18

    if-gez v28, :cond_d

    .line 300
    cmp-long v28, v24, v20

    if-ltz v28, :cond_e

    const/4 v14, 0x1

    .line 304
    .end local v18    # "maxCriticalPeerDuration":J
    .local v14, "foundEnoughPeers":Z
    :goto_3
    if-nez v14, :cond_4

    add-long v28, v8, v22

    cmp-long v28, v28, p2

    if-gez v28, :cond_11

    :cond_4
    const/16 v28, 0x1

    :goto_4
    return v28

    .line 247
    .end local v6    # "checkingDuration":J
    .end local v14    # "foundEnoughPeers":Z
    .end local v20    # "maxPeerBlockingDuration":J
    .end local v22    # "maxWaitingTimeInMillis":J
    .restart local v26    # "suspectedPerfEvent":Landroid/os/statistics/MicroscopicEvent;
    :cond_5
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    move-wide/from16 v28, v0

    cmp-long v28, v28, v4

    if-lez v28, :cond_0

    .line 251
    invoke-virtual/range {v26 .. v26}, Landroid/os/statistics/MicroscopicEvent;->isPeerBlockingEvent()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 252
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/statistics/MicroscopicEvent;->isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z

    move-result v28

    .line 251
    if-eqz v28, :cond_9

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/PerfEventFilter;->isTimeIncludedEnough(Landroid/os/statistics/MicroscopicEvent;Landroid/os/statistics/MicroscopicEvent;)Z

    move-result v16

    .line 254
    .local v16, "isBlockingEvent":Z
    :goto_5
    if-eqz v16, :cond_0

    .line 258
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    move-wide/from16 v30, v0

    .line 259
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-wide/from16 v32, v0

    cmp-long v28, v28, v32

    if-ltz v28, :cond_a

    .line 260
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-wide/from16 v28, v0

    .line 258
    :goto_6
    sub-long v12, v30, v28

    .line 261
    .local v12, "currentPeerBlockingDuration":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/statistics/MicroscopicEvent;->hasMultiplePeerBlockingEvents()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 262
    add-long v24, v24, v12

    .line 268
    :cond_6
    :goto_7
    cmp-long v28, v10, v12

    if-gez v28, :cond_7

    .line 269
    move-wide v10, v12

    .line 272
    :cond_7
    const/16 v28, 0x0

    aput-object v28, v17, v15

    .line 273
    move-object/from16 v0, v26

    iget v0, v0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x3

    if-nez v28, :cond_8

    .line 275
    move-object/from16 v0, v26

    iget v0, v0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x3

    or-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    .line 277
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    goto/16 :goto_1

    .line 251
    .end local v12    # "currentPeerBlockingDuration":J
    .end local v16    # "isBlockingEvent":Z
    :cond_9
    const/16 v16, 0x0

    goto :goto_5

    .line 260
    .restart local v16    # "isBlockingEvent":Z
    :cond_a
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-wide/from16 v28, v0

    goto :goto_6

    .line 264
    .restart local v12    # "currentPeerBlockingDuration":J
    :cond_b
    cmp-long v28, v24, v12

    if-gez v28, :cond_6

    .line 265
    move-wide/from16 v24, v12

    goto :goto_7

    .line 289
    .end local v12    # "currentPeerBlockingDuration":J
    .end local v16    # "isBlockingEvent":Z
    .end local v26    # "suspectedPerfEvent":Landroid/os/statistics/MicroscopicEvent;
    .restart local v6    # "checkingDuration":J
    :cond_c
    const/16 v28, 0x1

    shl-long v22, v6, v28

    .line 290
    .restart local v22    # "maxWaitingTimeInMillis":J
    const-wide/16 v28, 0x2710

    cmp-long v28, v22, v28

    if-gez v28, :cond_3

    .line 291
    const-wide/16 v22, 0x2710

    goto/16 :goto_2

    .line 299
    .restart local v18    # "maxCriticalPeerDuration":J
    .restart local v20    # "maxPeerBlockingDuration":J
    :cond_d
    const/4 v14, 0x1

    .restart local v14    # "foundEnoughPeers":Z
    goto/16 :goto_3

    .line 300
    .end local v14    # "foundEnoughPeers":Z
    :cond_e
    const/4 v14, 0x0

    .restart local v14    # "foundEnoughPeers":Z
    goto/16 :goto_3

    .line 302
    .end local v14    # "foundEnoughPeers":Z
    .end local v18    # "maxCriticalPeerDuration":J
    :cond_f
    cmp-long v28, v24, v20

    if-ltz v28, :cond_10

    const/4 v14, 0x1

    .restart local v14    # "foundEnoughPeers":Z
    goto/16 :goto_3

    .end local v14    # "foundEnoughPeers":Z
    :cond_10
    const/4 v14, 0x0

    .restart local v14    # "foundEnoughPeers":Z
    goto/16 :goto_3

    .line 304
    :cond_11
    const/16 v28, 0x0

    goto/16 :goto_4
.end method

.method private checkEventsWaitingBlockingPeer(IIJ)V
    .locals 7
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "batchBeginTimeMillis"    # J

    .prologue
    const/4 v5, 0x0

    .line 216
    move v1, p1

    .line 217
    .local v1, "checkingEventPos":I
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    iget-object v2, v4, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v2, [Landroid/os/statistics/MicroscopicEvent;

    .line 218
    .local v2, "events":[Landroid/os/statistics/MicroscopicEvent;
    :goto_0
    if-ge v1, p2, :cond_2

    .line 219
    aget-object v0, v2, v1

    .line 220
    .local v0, "checkingEvent":Landroid/os/statistics/MicroscopicEvent;
    if-nez v0, :cond_0

    .line 221
    add-int/lit8 v1, v1, 0x1

    .line 222
    goto :goto_0

    .line 224
    :cond_0
    invoke-direct {p0, v0, p3, p4}, Landroid/os/statistics/PerfEventFilter;->checkEventWaitingBlockingPeer(Landroid/os/statistics/MicroscopicEvent;J)Z

    move-result v3

    .line 225
    .local v3, "isCompleted":Z
    if-eqz v3, :cond_1

    .line 226
    aput-object v5, v2, v1

    .line 228
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "checkingEvent":Landroid/os/statistics/MicroscopicEvent;
    .end local v3    # "isCompleted":Z
    :cond_2
    return-void
.end method

.method private checkSuspectedPerfEvents(JJ)V
    .locals 11
    .param p1, "earliestExecutingRootEventBeginUptimeMillis"    # J
    .param p3, "batchBeginTimeMillis"    # J

    .prologue
    .line 344
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget v6, v6, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v4, v6, :cond_6

    .line 345
    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v6, v6, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v6, [Landroid/os/statistics/MicroscopicEvent;

    aget-object v5, v6, v4

    .line 346
    .local v5, "suspectedPerfEvent":Landroid/os/statistics/MicroscopicEvent;
    if-nez v5, :cond_1

    .line 344
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 349
    :cond_1
    iget-wide v6, v5, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v6, v6, p1

    if-gez v6, :cond_2

    .line 350
    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v6, v6, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v6, [Landroid/os/statistics/MicroscopicEvent;

    const/4 v7, 0x0

    aput-object v7, v6, v4

    goto :goto_1

    .line 353
    :cond_2
    iget-wide v6, v5, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v8, v5, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v2, v6, v8

    .line 355
    .local v2, "eventSpentTimeMillis":J
    iget-boolean v6, p0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    if-eqz v6, :cond_4

    .line 357
    const/4 v6, 0x5

    shl-long v6, v2, v6

    const-wide/32 v8, 0x1d4c0

    cmp-long v6, v8, v6

    if-gez v6, :cond_3

    const-wide/32 v6, 0x1d4c0

    .line 356
    :goto_2
    sub-long v0, p3, v6

    .line 362
    .local v0, "earliestEffectiveEventTime":J
    :goto_3
    iget-wide v6, v5, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v6, v6, v0

    if-gez v6, :cond_0

    .line 365
    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v6, v6, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v6, [Landroid/os/statistics/MicroscopicEvent;

    const/4 v7, 0x0

    aput-object v7, v6, v4

    .line 366
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isInTestMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 367
    const-string/jumbo v6, "MiuiPerfSuperviser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "discarded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/os/statistics/PerfEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 357
    .end local v0    # "earliestEffectiveEventTime":J
    :cond_3
    const/4 v6, 0x5

    shl-long v6, v2, v6

    goto :goto_2

    .line 360
    :cond_4
    const/4 v6, 0x5

    shl-long v6, v2, v6

    const-wide/32 v8, 0x1d4c0

    cmp-long v6, v8, v6

    if-gez v6, :cond_5

    const-wide/32 v6, 0x1d4c0

    .line 359
    :goto_4
    sub-long v0, p3, v6

    .restart local v0    # "earliestEffectiveEventTime":J
    goto :goto_3

    .line 360
    .end local v0    # "earliestEffectiveEventTime":J
    :cond_5
    const/4 v6, 0x5

    shl-long v6, v2, v6

    goto :goto_4

    .line 343
    .end local v2    # "eventSpentTimeMillis":J
    .end local v5    # "suspectedPerfEvent":Landroid/os/statistics/MicroscopicEvent;
    :cond_6
    return-void
.end method

.method private getEarliestEventBeginUptimeMillisInBatch(Landroid/os/statistics/FastPerfEventList;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/statistics/PerfEvent;",
            ">(",
            "Landroid/os/statistics/FastPerfEventList",
            "<TT;>;)J"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "perfEvents":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<TT;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 375
    .local v2, "earliest":J
    iget v7, p1, Landroid/os/statistics/FastPerfEventList;->size:I

    .line 376
    .local v7, "size":I
    iget-object v4, p1, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    .line 377
    .local v4, "events":[Landroid/os/statistics/PerfEvent;, "[TT;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 378
    aget-object v6, v4, v5

    .line 379
    .local v6, "perfEvent":Landroid/os/statistics/PerfEvent;, "TT;"
    invoke-virtual {v6}, Landroid/os/statistics/PerfEvent;->getBeginUptimeMillis()J

    move-result-wide v0

    .line 380
    .local v0, "beginUptimeMillis":J
    cmp-long v8, v2, v0

    if-lez v8, :cond_0

    .line 381
    move-wide v2, v0

    .line 377
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "beginUptimeMillis":J
    .end local v6    # "perfEvent":Landroid/os/statistics/PerfEvent;, "TT;"
    :cond_1
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v2, v8

    if-nez v8, :cond_2

    const-wide/16 v2, 0x0

    .end local v2    # "earliest":J
    :cond_2
    return-wide v2
.end method

.method private isIncludedEnough(Landroid/os/statistics/MicroscopicEvent;Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 2
    .param p1, "checkingEvent"    # Landroid/os/statistics/MicroscopicEvent;
    .param p2, "suspectedPerfEvent"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    .line 308
    iget v0, p1, Landroid/os/statistics/PerfEvent;->pid:I

    iget v1, p2, Landroid/os/statistics/PerfEvent;->pid:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    iget v1, p2, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    if-eq v0, v1, :cond_1

    .line 309
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 311
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/os/statistics/PerfEventFilter;->isTimeIncludedEnough(Landroid/os/statistics/MicroscopicEvent;Landroid/os/statistics/MicroscopicEvent;)Z

    move-result v0

    return v0
.end method

.method private isTimeIncludedEnough(Landroid/os/statistics/MicroscopicEvent;Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 12
    .param p1, "checkingEvent"    # Landroid/os/statistics/MicroscopicEvent;
    .param p2, "suspectedPerfEvent"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    const/4 v6, 0x1

    .line 315
    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p1, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v0, v8, v10

    .line 316
    .local v0, "checkingDurationMs":J
    iget-wide v8, p2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v4, v8, v10

    .line 318
    .local v4, "suspectedDurationMs":J
    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 319
    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 320
    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    .line 321
    iget-wide v8, p2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p1, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v2, v8, v10

    .line 338
    .local v2, "includedTimeMs":J
    :goto_0
    cmp-long v7, v2, v4

    if-eqz v7, :cond_0

    .line 339
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    int-to-long v8, v7

    mul-long/2addr v8, v2

    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-ltz v7, :cond_6

    .line 338
    :cond_0
    :goto_1
    return v6

    .line 323
    .end local v2    # "includedTimeMs":J
    :cond_1
    const-wide/16 v2, 0x0

    .restart local v2    # "includedTimeMs":J
    goto :goto_0

    .line 325
    .end local v2    # "includedTimeMs":J
    :cond_2
    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 326
    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    .line 327
    iget-wide v8, p2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v2, v8, v10

    .restart local v2    # "includedTimeMs":J
    goto :goto_0

    .line 329
    .end local v2    # "includedTimeMs":J
    :cond_3
    const-wide/16 v2, 0x0

    .restart local v2    # "includedTimeMs":J
    goto :goto_0

    .line 332
    .end local v2    # "includedTimeMs":J
    :cond_4
    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_5

    .line 333
    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v2, v8, v10

    .restart local v2    # "includedTimeMs":J
    goto :goto_0

    .line 335
    .end local v2    # "includedTimeMs":J
    :cond_5
    const-wide/16 v2, 0x0

    .restart local v2    # "includedTimeMs":J
    goto :goto_0

    .line 340
    :cond_6
    const-wide/16 v8, 0x5

    mul-long/2addr v8, v2

    cmp-long v7, v8, v0

    if-gez v7, :cond_0

    const/4 v6, 0x0

    goto :goto_1
.end method

.method private mergeSuspectedEvents(Landroid/os/statistics/FastPerfEventList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "newSuspectedEvents":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<Landroid/os/statistics/PerfEvent;>;"
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/statistics/FastPerfEventList;->size:I

    .line 120
    .local v12, "size":I
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    .line 121
    .local v5, "events":[Landroid/os/statistics/PerfEvent;
    if-nez v12, :cond_0

    .line 122
    return-void

    .line 125
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget v3, v13, Landroid/os/statistics/FastPerfEventList;->size:I

    .line 126
    .local v3, "currentSuspectedCount":I
    add-int v11, v12, v3

    .line 127
    .local v11, "resultSize":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v13, v13, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v13, [Landroid/os/statistics/MicroscopicEvent;

    array-length v13, v13

    if-le v11, v13, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v13, v11}, Landroid/os/statistics/FastPerfEventList;->ensureCapacity(I)V

    .line 130
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v4, v13, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v4, [Landroid/os/statistics/MicroscopicEvent;

    .line 132
    .local v4, "currentSuspectedEvents":[Landroid/os/statistics/MicroscopicEvent;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v12, :cond_6

    .line 133
    aget-object v8, v5, v6

    .line 134
    .local v8, "newSuspectedEvent":Landroid/os/statistics/PerfEvent;
    instance-of v13, v8, Landroid/os/statistics/MacroscopicEvent;

    if-eqz v13, :cond_3

    .line 135
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    if-eqz v13, :cond_2

    .line 136
    invoke-virtual {v8}, Landroid/os/statistics/PerfEvent;->resolveLazyInfo()V

    .line 138
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMacroEvents:Landroid/os/statistics/FastPerfEventList;

    nop

    nop

    .end local v8    # "newSuspectedEvent":Landroid/os/statistics/PerfEvent;
    invoke-virtual {v13, v8}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    .line 132
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .restart local v8    # "newSuspectedEvent":Landroid/os/statistics/PerfEvent;
    :cond_3
    move-object v9, v8

    .line 141
    check-cast v9, Landroid/os/statistics/MicroscopicEvent;

    .line 142
    .local v9, "newSuspectedMicroscopicEvent":Landroid/os/statistics/MicroscopicEvent;
    const/4 v10, 0x0

    .line 143
    .local v10, "pos":I
    add-int/lit8 v7, v3, -0x1

    .local v7, "j":I
    :goto_2
    if-ltz v7, :cond_4

    .line 144
    aget-object v2, v4, v7

    .line 145
    .local v2, "current":Landroid/os/statistics/MicroscopicEvent;
    iget-wide v14, v2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    iget-wide v0, v9, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_5

    .line 146
    add-int/lit8 v10, v7, 0x1

    .line 150
    .end local v2    # "current":Landroid/os/statistics/MicroscopicEvent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v13, v10, v9}, Landroid/os/statistics/FastPerfEventList;->add(ILandroid/os/statistics/PerfEvent;)V

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 143
    .restart local v2    # "current":Landroid/os/statistics/MicroscopicEvent;
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 118
    .end local v2    # "current":Landroid/os/statistics/MicroscopicEvent;
    .end local v7    # "j":I
    .end local v8    # "newSuspectedEvent":Landroid/os/statistics/PerfEvent;
    .end local v9    # "newSuspectedMicroscopicEvent":Landroid/os/statistics/MicroscopicEvent;
    .end local v10    # "pos":I
    :cond_6
    return-void
.end method


# virtual methods
.method public filter(Landroid/os/statistics/FastPerfEventList;Landroid/os/statistics/FastPerfEventList;JLandroid/os/statistics/FastPerfEventList;)V
    .locals 15
    .param p3, "earliestExecutingRootEventBeginUptimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;",
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;J",
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "newEffectiveEvents":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<Landroid/os/statistics/MicroscopicEvent;>;"
    .local p2, "newSuspectedEvents":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<Landroid/os/statistics/PerfEvent;>;"
    .local p5, "completedEvents":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<Landroid/os/statistics/PerfEvent;>;"
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/os/statistics/PerfEventFilter;->nativeBacktraceMapUpdated:Z

    .line 44
    invoke-direct/range {p0 .. p1}, Landroid/os/statistics/PerfEventFilter;->getEarliestEventBeginUptimeMillisInBatch(Landroid/os/statistics/FastPerfEventList;)J

    move-result-wide v10

    .line 45
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/os/statistics/PerfEventFilter;->getEarliestEventBeginUptimeMillisInBatch(Landroid/os/statistics/FastPerfEventList;)J

    move-result-wide v12

    .line 43
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 46
    .local v8, "tempBatchBeginTimeMillis":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_0

    .line 47
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v8

    .line 49
    :cond_0
    iget-wide v10, p0, Landroid/os/statistics/PerfEventFilter;->lastBatchBeginTimeMillis:J

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 50
    .local v2, "batchBeginTimeMillis":J
    iput-wide v2, p0, Landroid/os/statistics/PerfEventFilter;->lastBatchBeginTimeMillis:J

    .line 52
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-lez v10, :cond_1

    .line 53
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/os/statistics/FastPerfEventList;->addAll(Landroid/os/statistics/FastPerfEventList;)V

    .line 55
    :cond_1
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/os/statistics/PerfEventFilter;->mergeSuspectedEvents(Landroid/os/statistics/FastPerfEventList;)V

    .line 57
    const/4 v4, 0x0

    .line 58
    .local v4, "checkingEffectiveStartIndex":I
    const/4 v5, 0x0

    .line 59
    .local v5, "checkingWaitingStartIndex":I
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    iget v7, v10, Landroid/os/statistics/FastPerfEventList;->size:I

    .line 60
    .local v7, "waitingSize":I
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget v6, v10, Landroid/os/statistics/FastPerfEventList;->size:I

    .line 61
    .local v6, "effectiveSize":I
    :goto_0
    if-ne v7, v5, :cond_2

    if-eq v6, v4, :cond_3

    .line 62
    :cond_2
    invoke-direct {p0, v5, v7, v2, v3}, Landroid/os/statistics/PerfEventFilter;->checkEventsWaitingBlockingPeer(IIJ)V

    .line 63
    move v5, v7

    .line 64
    invoke-direct {p0, v4, v6}, Landroid/os/statistics/PerfEventFilter;->checkEffectivePerfEvents(II)V

    .line 65
    move v4, v6

    .line 66
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    iget v7, v10, Landroid/os/statistics/FastPerfEventList;->size:I

    .line 67
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget v6, v10, Landroid/os/statistics/FastPerfEventList;->size:I

    goto :goto_0

    .line 70
    :cond_3
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/statistics/PerfEventFilter;->checkSuspectedPerfEvents(JJ)V

    .line 72
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMacroEvents:Landroid/os/statistics/FastPerfEventList;

    iget v10, v10, Landroid/os/statistics/FastPerfEventList;->size:I

    iget-object v11, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    iget v11, v11, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/2addr v10, v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/os/statistics/FastPerfEventList;->ensureCapacity(I)V

    .line 73
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMacroEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/os/statistics/FastPerfEventList;->addAll(Landroid/os/statistics/FastPerfEventList;)V

    .line 74
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/os/statistics/FastPerfEventList;->addAll(Landroid/os/statistics/FastPerfEventList;)V

    .line 76
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v10}, Landroid/os/statistics/FastPerfEventList;->compact()V

    .line 77
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    .line 78
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v10}, Landroid/os/statistics/FastPerfEventList;->compact()V

    .line 79
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    .line 80
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v10}, Landroid/os/statistics/FastPerfEventList;->compact()V

    .line 81
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    const/16 v11, 0x80

    invoke-virtual {v10, v11}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    .line 83
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMacroEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v10}, Landroid/os/statistics/FastPerfEventList;->clear()V

    .line 84
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMacroEvents:Landroid/os/statistics/FastPerfEventList;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    .line 85
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v10}, Landroid/os/statistics/FastPerfEventList;->clear()V

    .line 86
    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    .line 40
    return-void
.end method

.method public hasPendingPerfEvents()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 34
    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v1}, Landroid/os/statistics/FastPerfEventList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v1}, Landroid/os/statistics/FastPerfEventList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v1}, Landroid/os/statistics/FastPerfEventList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
