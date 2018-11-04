.class Landroid/widget/DateTimeView$ReceiverInfo;
.super Ljava/lang/Object;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo$-void_updateAll__LambdaImpl0;,
        Landroid/widget/DateTimeView$ReceiverInfo$1;,
        Landroid/widget/DateTimeView$ReceiverInfo$2;
    }
.end annotation


# instance fields
.field private final mAttachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/DateTimeView;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -android_widget_DateTimeView$ReceiverInfo_lambda$1(Landroid/widget/DateTimeView;)V
    .locals 0
    .param p0, "view"    # Landroid/widget/DateTimeView;

    .prologue
    .line 457
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->clearFormatAndUpdate()V

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    .line 407
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo$1;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;)V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$ReceiverInfo$2;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mObserver:Landroid/database/ContentObserver;

    .line 431
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mHandler:Landroid/os/Handler;

    .line 405
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/DateTimeView$ReceiverInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>()V

    return-void
.end method

.method static final getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 479
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/widget/DateTimeView;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/DateTimeView;

    .prologue
    .line 434
    iget-object v2, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v2

    .line 435
    :try_start_0
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 436
    .local v0, "register":Z
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/DateTimeView$ReceiverInfo;->getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/DateTimeView$ReceiverInfo;->register(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 433
    return-void

    .line 434
    .end local v0    # "register":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getSoonestUpdateTime()J
    .locals 8

    .prologue
    .line 463
    const-wide v2, 0x7fffffffffffffffL

    .line 464
    .local v2, "result":J
    iget-object v7, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v7

    .line 465
    :try_start_0
    iget-object v6, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 466
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 467
    iget-object v6, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/DateTimeView;

    invoke-static {v6}, Landroid/widget/DateTimeView;->-get0(Landroid/widget/DateTimeView;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 468
    .local v4, "time":J
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 469
    move-wide v2, v4

    .line 466
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "time":J
    :cond_1
    monitor-exit v7

    .line 473
    return-wide v2

    .line 464
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method register(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 483
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 484
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 482
    return-void
.end method

.method public removeView(Landroid/widget/DateTimeView;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/DateTimeView;

    .prologue
    .line 444
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/DateTimeView$ReceiverInfo;->getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView$ReceiverInfo;->unregister(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 443
    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 496
    iput-object p1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mHandler:Landroid/os/Handler;

    .line 497
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v1

    .line 498
    :try_start_0
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView;

    invoke-virtual {v0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView$ReceiverInfo;->unregister(Landroid/content/Context;)V

    .line 500
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView;

    invoke-virtual {v0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView$ReceiverInfo;->register(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 495
    return-void

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method unregister(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 492
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 491
    return-void
.end method

.method updateAll()V
    .locals 5

    .prologue
    .line 453
    iget-object v4, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v4

    .line 454
    :try_start_0
    iget-object v3, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 455
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 456
    iget-object v3, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/DateTimeView;

    .line 457
    .local v2, "view":Landroid/widget/DateTimeView;
    new-instance v3, Landroid/widget/DateTimeView$ReceiverInfo$-void_updateAll__LambdaImpl0;

    invoke-direct {v3, v2}, Landroid/widget/DateTimeView$ReceiverInfo$-void_updateAll__LambdaImpl0;-><init>(Landroid/widget/DateTimeView;)V

    invoke-virtual {v2, v3}, Landroid/widget/DateTimeView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "view":Landroid/widget/DateTimeView;
    :cond_0
    monitor-exit v4

    .line 452
    return-void

    .line 453
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
