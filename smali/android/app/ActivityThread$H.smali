.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final BACKGROUND_VISIBLE_BEHIND_CHANGED:I = 0x94

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CANCEL_VISIBLE_BEHIND:I = 0x93

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final INSTALL_PROVIDER:I = 0x91

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOCAL_VOICE_INTERACTION_STARTED:I = 0x9a

.field public static final LOW_MEMORY:I = 0x7c

.field public static final MULTI_WINDOW_MODE_CHANGED:I = 0x98

.field public static final NEW_INTENT:I = 0x70

.field public static final ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PICTURE_IN_PICTURE_MODE_CHANGED:I = 0x99

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final START_BINDER_TRACKING:I = 0x96

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_BINDER_TRACKING_AND_DUMP:I = 0x97

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    .line 1430
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$H;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private maybeSnapshot()V
    .locals 8

    .prologue
    .line 1812
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1815
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1816
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1818
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1819
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1820
    const-string/jumbo v5, "ActivityThread"

    const-string/jumbo v6, "cannot get a valid context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    return-void

    .line 1823
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1824
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_1

    .line 1825
    const-string/jumbo v5, "ActivityThread"

    const-string/jumbo v6, "cannot get a valid PackageManager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    return-void

    .line 1829
    :cond_1
    const/4 v5, 0x1

    .line 1828
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1833
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    .line 1811
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    return-void

    .line 1830
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1831
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cannot get package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1488
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v0, :cond_0

    .line 1489
    packed-switch p1, :pswitch_data_0

    .line 1544
    :cond_0
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1490
    :pswitch_1
    const-string/jumbo v0, "LAUNCH_ACTIVITY"

    return-object v0

    .line 1491
    :pswitch_2
    const-string/jumbo v0, "PAUSE_ACTIVITY"

    return-object v0

    .line 1492
    :pswitch_3
    const-string/jumbo v0, "PAUSE_ACTIVITY_FINISHING"

    return-object v0

    .line 1493
    :pswitch_4
    const-string/jumbo v0, "STOP_ACTIVITY_SHOW"

    return-object v0

    .line 1494
    :pswitch_5
    const-string/jumbo v0, "STOP_ACTIVITY_HIDE"

    return-object v0

    .line 1495
    :pswitch_6
    const-string/jumbo v0, "SHOW_WINDOW"

    return-object v0

    .line 1496
    :pswitch_7
    const-string/jumbo v0, "HIDE_WINDOW"

    return-object v0

    .line 1497
    :pswitch_8
    const-string/jumbo v0, "RESUME_ACTIVITY"

    return-object v0

    .line 1498
    :pswitch_9
    const-string/jumbo v0, "SEND_RESULT"

    return-object v0

    .line 1499
    :pswitch_a
    const-string/jumbo v0, "DESTROY_ACTIVITY"

    return-object v0

    .line 1500
    :pswitch_b
    const-string/jumbo v0, "BIND_APPLICATION"

    return-object v0

    .line 1501
    :pswitch_c
    const-string/jumbo v0, "EXIT_APPLICATION"

    return-object v0

    .line 1502
    :pswitch_d
    const-string/jumbo v0, "NEW_INTENT"

    return-object v0

    .line 1503
    :pswitch_e
    const-string/jumbo v0, "RECEIVER"

    return-object v0

    .line 1504
    :pswitch_f
    const-string/jumbo v0, "CREATE_SERVICE"

    return-object v0

    .line 1505
    :pswitch_10
    const-string/jumbo v0, "SERVICE_ARGS"

    return-object v0

    .line 1506
    :pswitch_11
    const-string/jumbo v0, "STOP_SERVICE"

    return-object v0

    .line 1507
    :pswitch_12
    const-string/jumbo v0, "CONFIGURATION_CHANGED"

    return-object v0

    .line 1508
    :pswitch_13
    const-string/jumbo v0, "CLEAN_UP_CONTEXT"

    return-object v0

    .line 1509
    :pswitch_14
    const-string/jumbo v0, "GC_WHEN_IDLE"

    return-object v0

    .line 1510
    :pswitch_15
    const-string/jumbo v0, "BIND_SERVICE"

    return-object v0

    .line 1511
    :pswitch_16
    const-string/jumbo v0, "UNBIND_SERVICE"

    return-object v0

    .line 1512
    :pswitch_17
    const-string/jumbo v0, "DUMP_SERVICE"

    return-object v0

    .line 1513
    :pswitch_18
    const-string/jumbo v0, "LOW_MEMORY"

    return-object v0

    .line 1514
    :pswitch_19
    const-string/jumbo v0, "ACTIVITY_CONFIGURATION_CHANGED"

    return-object v0

    .line 1515
    :pswitch_1a
    const-string/jumbo v0, "RELAUNCH_ACTIVITY"

    return-object v0

    .line 1516
    :pswitch_1b
    const-string/jumbo v0, "PROFILER_CONTROL"

    return-object v0

    .line 1517
    :pswitch_1c
    const-string/jumbo v0, "CREATE_BACKUP_AGENT"

    return-object v0

    .line 1518
    :pswitch_1d
    const-string/jumbo v0, "DESTROY_BACKUP_AGENT"

    return-object v0

    .line 1519
    :pswitch_1e
    const-string/jumbo v0, "SUICIDE"

    return-object v0

    .line 1520
    :pswitch_1f
    const-string/jumbo v0, "REMOVE_PROVIDER"

    return-object v0

    .line 1521
    :pswitch_20
    const-string/jumbo v0, "ENABLE_JIT"

    return-object v0

    .line 1522
    :pswitch_21
    const-string/jumbo v0, "DISPATCH_PACKAGE_BROADCAST"

    return-object v0

    .line 1523
    :pswitch_22
    const-string/jumbo v0, "SCHEDULE_CRASH"

    return-object v0

    .line 1524
    :pswitch_23
    const-string/jumbo v0, "DUMP_HEAP"

    return-object v0

    .line 1525
    :pswitch_24
    const-string/jumbo v0, "DUMP_ACTIVITY"

    return-object v0

    .line 1526
    :pswitch_25
    const-string/jumbo v0, "SLEEPING"

    return-object v0

    .line 1527
    :pswitch_26
    const-string/jumbo v0, "SET_CORE_SETTINGS"

    return-object v0

    .line 1528
    :pswitch_27
    const-string/jumbo v0, "UPDATE_PACKAGE_COMPATIBILITY_INFO"

    return-object v0

    .line 1529
    :pswitch_28
    const-string/jumbo v0, "TRIM_MEMORY"

    return-object v0

    .line 1530
    :pswitch_29
    const-string/jumbo v0, "DUMP_PROVIDER"

    return-object v0

    .line 1531
    :pswitch_2a
    const-string/jumbo v0, "UNSTABLE_PROVIDER_DIED"

    return-object v0

    .line 1532
    :pswitch_2b
    const-string/jumbo v0, "REQUEST_ASSIST_CONTEXT_EXTRAS"

    return-object v0

    .line 1533
    :pswitch_2c
    const-string/jumbo v0, "TRANSLUCENT_CONVERSION_COMPLETE"

    return-object v0

    .line 1534
    :pswitch_2d
    const-string/jumbo v0, "INSTALL_PROVIDER"

    return-object v0

    .line 1535
    :pswitch_2e
    const-string/jumbo v0, "ON_NEW_ACTIVITY_OPTIONS"

    return-object v0

    .line 1536
    :pswitch_2f
    const-string/jumbo v0, "CANCEL_VISIBLE_BEHIND"

    return-object v0

    .line 1537
    :pswitch_30
    const-string/jumbo v0, "BACKGROUND_VISIBLE_BEHIND_CHANGED"

    return-object v0

    .line 1538
    :pswitch_31
    const-string/jumbo v0, "ENTER_ANIMATION_COMPLETE"

    return-object v0

    .line 1539
    :pswitch_32
    const-string/jumbo v0, "MULTI_WINDOW_MODE_CHANGED"

    return-object v0

    .line 1540
    :pswitch_33
    const-string/jumbo v0, "PICTURE_IN_PICTURE_MODE_CHANGED"

    return-object v0

    .line 1541
    :pswitch_34
    const-string/jumbo v0, "LOCAL_VOICE_INTERACTION_STARTED"

    return-object v0

    .line 1489
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_0
        :pswitch_0
        :pswitch_32
        :pswitch_33
        :pswitch_34
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1547
    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ">>> handling: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 1550
    .local v18, "startTime":J
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1802
    :goto_0
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1803
    .local v14, "obj":Ljava/lang/Object;
    instance-of v4, v14, Lcom/android/internal/os/SomeArgs;

    if-eqz v4, :cond_1

    .line 1804
    check-cast v14, Lcom/android/internal/os/SomeArgs;

    .end local v14    # "obj":Ljava/lang/Object;
    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1807
    :cond_1
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThreadInjector;->checkHandleMessageTime(JLandroid/os/Message;)V

    .line 1808
    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<<< done: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_2
    return-void

    .line 1552
    :pswitch_1
    const-string/jumbo v4, "activityStart"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1553
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1555
    .local v16, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 1556
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1555
    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v4

    move-object/from16 v0, v16

    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 1557
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const-string/jumbo v5, "LAUNCH_ACTIVITY"

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-static {v4, v0, v6, v5}, Landroid/app/ActivityThread;->-wrap12(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1559
    invoke-static {}, Landroid/app/ActivityThreadInjector;->clearCachedDrawables()V

    .line 1560
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1563
    .end local v16    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_2
    const-string/jumbo v4, "activityRestart"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1564
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1565
    .restart local v16    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/app/ActivityThread;->-wrap19(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 1566
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1569
    .end local v16    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_3
    const-string/jumbo v4, "activityPause"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1570
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 1571
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    .line 1572
    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    const/4 v7, 0x1

    :goto_1
    iget v8, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1573
    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    const/4 v9, 0x1

    :goto_2
    iget v10, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1571
    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Landroid/app/ActivityThread;->-wrap16(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V

    .line 1574
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1575
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1572
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 1573
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 1578
    .end local v11    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    const-string/jumbo v4, "activityPause"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1579
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 1580
    .restart local v11    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    const/4 v7, 0x1

    .line 1581
    :goto_3
    iget v8, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_6

    const/4 v9, 0x1

    :goto_4
    iget v10, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1580
    const/4 v6, 0x1

    invoke-static/range {v4 .. v10}, Landroid/app/ActivityThread;->-wrap16(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V

    .line 1582
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1580
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1581
    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    .line 1585
    .end local v11    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    const-string/jumbo v4, "activityStop"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1586
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 1587
    .restart local v11    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v7, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    const/4 v8, 0x1

    invoke-static {v5, v4, v8, v6, v7}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;Landroid/os/IBinder;ZII)V

    .line 1588
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1591
    .end local v11    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    const-string/jumbo v4, "activityStop"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1592
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 1593
    .restart local v11    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v7, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    const/4 v8, 0x0

    invoke-static {v5, v4, v8, v6, v7}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;Landroid/os/IBinder;ZII)V

    .line 1594
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1597
    .end local v11    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    const-string/jumbo v4, "activityShowWindow"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1598
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Landroid/app/ActivityThread;->-wrap30(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1599
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1602
    :pswitch_8
    const-string/jumbo v4, "activityHideWindow"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Landroid/app/ActivityThread;->-wrap30(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1604
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1607
    :pswitch_9
    const-string/jumbo v4, "activityResume"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1608
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 1609
    .restart local v11    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget v6, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v6, :cond_7

    const/4 v7, 0x1

    .line 1610
    :goto_5
    iget v9, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    const-string/jumbo v10, "RESUME_ACTIVITY"

    .line 1609
    const/4 v6, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZILjava/lang/String;)V

    .line 1611
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1609
    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .line 1614
    .end local v11    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    const-string/jumbo v4, "activityDeliverResult"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ResultData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap20(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    .line 1616
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1619
    :pswitch_b
    const-string/jumbo v4, "activityDestroy"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    .line 1621
    :goto_6
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    const/4 v8, 0x0

    .line 1620
    invoke-static {v6, v4, v5, v7, v8}, Landroid/app/ActivityThread;->-wrap6(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    .line 1622
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1620
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 1625
    :pswitch_c
    const-string/jumbo v4, "bindApplication"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1626
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/app/ActivityThread$AppBindData;

    .line 1627
    .local v13, "data":Landroid/app/ActivityThread$AppBindData;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v4, v13}, Landroid/app/ActivityThread;->-wrap2(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 1628
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1631
    .end local v13    # "data":Landroid/app/ActivityThread$AppBindData;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v4, :cond_9

    .line 1632
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->onTerminate()V

    .line 1634
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 1637
    :pswitch_e
    const-string/jumbo v4, "activityNewIntent"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$NewIntentData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap15(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    .line 1639
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1642
    :pswitch_f
    const-string/jumbo v4, "broadcastReceiveComp"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ReceiverData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap18(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    .line 1644
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1645
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1648
    :pswitch_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serviceCreate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1649
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$CreateServiceData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap5(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    .line 1650
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1653
    :pswitch_11
    const-string/jumbo v4, "serviceBind"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap3(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1655
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1658
    :pswitch_12
    const-string/jumbo v4, "serviceUnbind"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap28(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1660
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1663
    :pswitch_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serviceStart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap21(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    .line 1665
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1668
    :pswitch_14
    const-string/jumbo v4, "serviceStop"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1669
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap27(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1670
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1671
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1674
    :pswitch_15
    const-string/jumbo v4, "configChanged"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    iput v4, v5, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 1676
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    .line 1677
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 1678
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    .line 1679
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1682
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 1683
    .local v12, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v4, v12, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v5, v12, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v6, v12, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1686
    .end local v12    # "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_0

    .line 1689
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap10(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1692
    :pswitch_19
    const-string/jumbo v4, "lowMemory"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 1694
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1697
    :pswitch_1a
    const-string/jumbo v4, "activityConfigChanged"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1698
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ActivityConfigChangeData;

    .line 1699
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_a

    const/4 v5, 0x1

    .line 1698
    :goto_7
    invoke-virtual {v6, v4, v5}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;Z)V

    .line 1700
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1699
    :cond_a
    const/4 v5, 0x0

    goto :goto_7

    .line 1703
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    move v5, v4

    :goto_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ProfilerInfo;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v5, v4, v7}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x0

    move v5, v4

    goto :goto_8

    .line 1706
    :pswitch_1c
    const-string/jumbo v4, "backupCreateAgent"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1707
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap4(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1708
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1711
    :pswitch_1d
    const-string/jumbo v4, "backupDestroyAgent"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1712
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap7(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1713
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1716
    :pswitch_1e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 1719
    :pswitch_1f
    const-string/jumbo v4, "providerRemove"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v5, v4}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 1721
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1724
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto/16 :goto_0

    .line 1727
    :pswitch_21
    const-string/jumbo v4, "broadcastPackage"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 1729
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1732
    :pswitch_22
    new-instance v5, Landroid/app/RemoteServiceException;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1734
    :pswitch_23
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    move v5, v4

    :goto_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x0

    move v5, v4

    goto :goto_9

    .line 1737
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap8(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1740
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap9(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1743
    :pswitch_26
    const-string/jumbo v4, "sleeping"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1744
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    :goto_a
    invoke-static {v6, v4, v5}, Landroid/app/ActivityThread;->-wrap23(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1745
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1744
    :cond_d
    const/4 v5, 0x0

    goto :goto_a

    .line 1748
    :pswitch_27
    const-string/jumbo v4, "setCoreSettings"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap22(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 1750
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1753
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap29(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_0

    .line 1756
    :pswitch_29
    const-string/jumbo v4, "trimMemory"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1757
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    .line 1758
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1761
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    .line 1764
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-virtual {v5, v4}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    goto/16 :goto_0

    .line 1767
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_e

    const/4 v5, 0x1

    :goto_b
    invoke-virtual {v6, v4, v5}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v5, 0x0

    goto :goto_b

    .line 1770
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v5, v4}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto/16 :goto_0

    .line 1773
    :pswitch_2e
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/util/Pair;

    .line 1774
    .local v15, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget-object v5, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityOptions;

    invoke-virtual {v6, v4, v5}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 1777
    .end local v15    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Landroid/app/ActivityThread;->handleCancelVisibleBehind(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1780
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-lez v5, :cond_f

    const/4 v5, 0x1

    :goto_c
    invoke-virtual {v6, v4, v5}, Landroid/app/ActivityThread;->handleOnBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_f
    const/4 v5, 0x0

    goto :goto_c

    .line 1783
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap11(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1786
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v4}, Landroid/app/ActivityThread;->-wrap24(Landroid/app/ActivityThread;)V

    goto/16 :goto_0

    .line 1789
    :pswitch_33
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    invoke-static {v5, v4}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_0

    .line 1792
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_10

    const/4 v5, 0x1

    :goto_d
    invoke-static {v6, v4, v5}, Landroid/app/ActivityThread;->-wrap14(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_10
    const/4 v5, 0x0

    goto :goto_d

    .line 1795
    :pswitch_35
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_11

    const/4 v5, 0x1

    :goto_e
    invoke-static {v6, v4, v5}, Landroid/app/ActivityThread;->-wrap17(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_11
    const/4 v5, 0x0

    goto :goto_e

    .line 1798
    :pswitch_36
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    iget-object v4, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    .line 1799
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/os/SomeArgs;

    iget-object v5, v5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/app/IVoiceInteractor;

    .line 1798
    invoke-static {v6, v4, v5}, Landroid/app/ActivityThread;->-wrap13(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    goto/16 :goto_0

    .line 1550
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_11
        :pswitch_12
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_2
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_25
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
    .end packed-switch
.end method
