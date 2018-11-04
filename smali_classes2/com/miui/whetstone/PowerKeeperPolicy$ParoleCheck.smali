.class Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParoleCheck"
.end annotation


# static fields
.field private static final MSG_PAROLE_CHECK_RUNNING:I = 0x3ea

.field private static final MSG_START_PAROLE_CHECK:I = 0x3e9

.field private static final STATE_RUNNING:I = 0x4

.field private static final STATE_STARTED:I = 0x3

.field private static final STATE_STARTING:I = 0x1

.field private static final STATE_STOPPED:I = 0x0

.field private static final STATE_STOPPING:I = 0x2


# instance fields
.field private mInParole:Z

.field private mMsgWhat:I

.field private mNotifyHandler:Landroid/os/Handler;

.field private mParoleArray:[J

.field private mParoleCheckHandler:Landroid/os/Handler;

.field private mParoleIndex:I

.field private mParoleLock:Ljava/lang/Object;

.field private state:I

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method static synthetic -get0(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->onParoleMessageHandlerLocked(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Handler;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/miui/whetstone/PowerKeeperPolicy;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "msgWhat"    # I

    .prologue
    const/4 v2, 0x0

    .line 1272
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1262
    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    .line 1264
    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1266
    iput-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1267
    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1268
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    .line 1273
    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    .line 1274
    iput p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    .line 1275
    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)V

    .line 1283
    .local v0, "paroleCheckCallback":Landroid/os/Handler$Callback;
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    .line 1272
    return-void

    .line 1262
    :array_0
    .array-data 8
        0x6ddd000
        0x7530
    .end array-data
.end method

.method private enterParoleAndNotifyLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1351
    iput-boolean v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1352
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1350
    return-void
.end method

.method private enterParoleLocked()V
    .locals 1

    .prologue
    .line 1343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1342
    return-void
.end method

.method private exitParoleAndNotifyLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1356
    iput-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1357
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mNotifyHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mMsgWhat:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1355
    return-void
.end method

.method private exitParoleLocked()V
    .locals 1

    .prologue
    .line 1347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z

    .line 1346
    return-void
.end method

.method private onParoleMessageHandlerLocked(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x3ea

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 1361
    const/4 v3, 0x1

    .line 1362
    .local v3, "ret":Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1400
    const/4 v3, 0x0

    .line 1404
    :cond_0
    :goto_0
    return v3

    .line 1364
    :pswitch_0
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1367
    iput v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1368
    iput v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1369
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    if-eqz v4, :cond_0

    .line 1370
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    aget-wide v0, v4, v6

    .line 1371
    .local v0, "delayMillis":J
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1376
    .end local v0    # "delayMillis":J
    :pswitch_1
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-ne v4, v7, :cond_0

    .line 1379
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    if-nez v4, :cond_1

    .line 1380
    const-string/jumbo v4, "PowerKeeperPolicy"

    const-string/jumbo v5, "Parole check array is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1384
    :cond_1
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 1385
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->enterParoleAndNotifyLocked()V

    .line 1389
    :goto_1
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    array-length v2, v4

    .line 1390
    .local v2, "length":I
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v2, :cond_3

    .line 1391
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1395
    :goto_2
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    iget v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    aget-wide v0, v4, v5

    .line 1396
    .restart local v0    # "delayMillis":J
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1387
    .end local v0    # "delayMillis":J
    .end local v2    # "length":I
    :cond_2
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleAndNotifyLocked()V

    goto :goto_1

    .line 1393
    .restart local v2    # "length":I
    :cond_3
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    goto :goto_2

    .line 1362
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isInParoleState()Z
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mInParole:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1337
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isWorking()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1328
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1329
    :try_start_0
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    .line 1330
    return v2

    .line 1332
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1328
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setParoleCheckParam([J)V
    .locals 4
    .param p1, "array"    # [J

    .prologue
    const/4 v3, 0x4

    .line 1307
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1308
    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1309
    .local v0, "initState":I
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-ne v1, v3, :cond_1

    .line 1310
    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1311
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleAndNotifyLocked()V

    .line 1313
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->-wrap3(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 1315
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleIndex:I

    .line 1316
    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_5

    .line 1317
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J

    .line 1321
    :cond_3
    :goto_0
    if-ne v0, v3, :cond_4

    .line 1322
    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v2

    .line 1306
    return-void

    .line 1318
    :cond_5
    :try_start_1
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 1319
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleArray:[J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1307
    .end local v0    # "initState":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public startParoleCheck()V
    .locals 3

    .prologue
    .line 1287
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1288
    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-nez v0, :cond_0

    .line 1289
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1290
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleLocked()V

    .line 1291
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1286
    return-void

    .line 1287
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stopParoleCheck()V
    .locals 3

    .prologue
    .line 1297
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1298
    :try_start_0
    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    if-eqz v0, :cond_0

    .line 1299
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->state:I

    .line 1300
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->exitParoleLocked()V

    .line 1301
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->mParoleCheckHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1296
    return-void

    .line 1297
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
