.class public Landroid/os/AnrMonitor;
.super Ljava/lang/Object;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/AnrMonitor$FileInfo;,
        Landroid/os/AnrMonitor$TimerThread;,
        Landroid/os/AnrMonitor$UploadInfo;,
        Landroid/os/AnrMonitor$WorkHandler;
    }
.end annotation


# static fields
.field public static final ANR_DIRECTORY:Ljava/lang/String; = "/data/anr/"

.field public static final ANR_INFO_HEAD:Ljava/lang/String; = "anr_info_"

.field public static final ANR_INFO_LIMIT:I = 0x5

.field public static final ANR_TRACES_LIMIT:I = 0x5

.field public static final BINDER_CALL_MONITOR_TIMEOUT:J = 0x3e8L

.field private static final CHECK_PARCEL_SIZE_ENABLE:Z

.field private static final CHECK_PARCEL_SIZE_KB:I

.field private static final DATE:Ljava/util/Date;

.field private static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static final DBG:Z

.field private static final DEFAULT_LOCK_WAIT_THRESHOLD:J = 0x1f4L

.field public static final DEFAULT_MESSAGE_HISTORY_DUMP_DURATION:I = 0x2710

.field public static final DUMP_APP_TRACE_TAG:Ljava/lang/String; = "dump-app-trace"

.field public static final DUMP_MESSAGE_TIMEOUT:J = 0x1f4L

.field private static final DUMP_TRACE_TAG:Ljava/lang/String; = "DUMP_APP_TRACE"

.field public static final INPUT_DISPATCHING_TIMEOUT:I = 0x1f40

.field public static final INPUT_MONITOR_TIMEOUT:J = 0x3e8L

.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final LOCK_WAIT_THRESHOLD:J

.field public static final LT_MESSAGE_CHECK_TIME:J = 0xc8L

.field public static final MAX_MESSAGE_SUMMARY_HISTORY:I = 0x32

.field public static final MAX_TIMEOUT:J = 0x186a0L

.field public static final MESSAGE_EXECUTION_TIMEOUT:J = 0x7d0L

.field public static final MESSAGE_MONITOR_TIMEOUT:J

.field private static final MESSAGE_UPLOAD_CHECK_TIME:J = 0xbb8L

.field private static final MONITOR_MSG_EXECUTION:Z

.field private static final MONITOR_TAG:Ljava/lang/String; = "MIUI-BLOCK-MONITOR"

.field private static final NOT_CTS_BUILD:Z

.field public static final PERF_EVENT_LOGGING_TIMEOUT:J = 0xbb8L

.field public static final SEPARATOR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "AnrMonitor"

.field public static final TRACES_FILE_TYPE:Ljava/lang/String; = ".txt"

.field public static final TRACES_HEAD:Ljava/lang/String; = "traces_"

.field private static final TRACE_DIR:Ljava/lang/String; = "/data/anr/"

.field private static final mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInputEvnetStartTimeSeqMap"
    .end annotation
.end field

.field private static sBinderRecordIndex:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "AnrMonitor.class"
    .end annotation
.end field

.field private static sInputRecordIndex:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "AnrMonitor.class"
    .end annotation
.end field

.field private static final sInstanceSync:Ljava/lang/Object;

.field private static sIsSystemApp:Ljava/lang/Boolean;

.field private static final sMonitorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMsgRecordIndex:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "AnrMonitor.class"
    .end annotation
.end field

.field private static sPkgName:Ljava/lang/String;

.field private static sProcessName:Ljava/lang/String;

.field private static sSystemBootCompleted:Z

.field private static final sUploadBinderRecords:[Landroid/os/AnrMonitor$UploadInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "AnrMonitor.class"
    .end annotation
.end field

.field private static final sUploadInputRecords:[Landroid/os/AnrMonitor$UploadInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "AnrMonitor.class"
    .end annotation
.end field

.field private static final sUploadMsgRecords:[Landroid/os/AnrMonitor$UploadInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "AnrMonitor.class"
    .end annotation
.end field

.field private static sVersionCode:I

.field private static sVersionName:Ljava/lang/String;

.field private static volatile sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sInstanceSync"
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Landroid/os/AnrMonitor;->isSystemBootCompleted()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/16 v6, 0xa

    const/4 v2, 0x0

    .line 58
    const-string/jumbo v0, "anr.monitor.debug.on"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/AnrMonitor;->DBG:Z

    .line 59
    const-string/jumbo v0, "monitor.msg.execution"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    .line 60
    const-string/jumbo v0, "persist.sys.miui_optimization"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/AnrMonitor;->NOT_CTS_BUILD:Z

    .line 66
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Landroid/os/AnrMonitor;->DATE:Ljava/util/Date;

    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd_HH_mm_ss.SSS"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/AnrMonitor;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    .line 68
    const-string/jumbo v0, "line.separator"

    const-string/jumbo v3, "\n"

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/AnrMonitor;->LINE_SEPARATOR:Ljava/lang/String;

    .line 70
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x7d0

    :goto_0
    int-to-long v4, v0

    sput-wide v4, Landroid/os/AnrMonitor;->MESSAGE_MONITOR_TIMEOUT:J

    .line 81
    const-string/jumbo v0, "persist.vm.lockprof.threshold"

    const-wide/16 v4, 0x1f4

    .line 80
    invoke-static {v0, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Landroid/os/AnrMonitor;->LOCK_WAIT_THRESHOLD:J

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/AnrMonitor;->sInstanceSync:Ljava/lang/Object;

    .line 101
    const-string/jumbo v0, "persist.binder.check.size"

    const/16 v3, 0xc8

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 100
    sput v0, Landroid/os/AnrMonitor;->CHECK_PARCEL_SIZE_KB:I

    .line 102
    sget v0, Landroid/os/AnrMonitor;->CHECK_PARCEL_SIZE_KB:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/os/AnrMonitor;->CHECK_PARCEL_SIZE_ENABLE:Z

    .line 105
    sput v2, Landroid/os/AnrMonitor;->sMsgRecordIndex:I

    .line 107
    new-array v0, v6, [Landroid/os/AnrMonitor$UploadInfo;

    sput-object v0, Landroid/os/AnrMonitor;->sUploadMsgRecords:[Landroid/os/AnrMonitor$UploadInfo;

    .line 109
    sput v2, Landroid/os/AnrMonitor;->sInputRecordIndex:I

    .line 111
    new-array v0, v6, [Landroid/os/AnrMonitor$UploadInfo;

    sput-object v0, Landroid/os/AnrMonitor;->sUploadInputRecords:[Landroid/os/AnrMonitor$UploadInfo;

    .line 113
    sput v2, Landroid/os/AnrMonitor;->sBinderRecordIndex:I

    .line 115
    new-array v0, v6, [Landroid/os/AnrMonitor$UploadInfo;

    sput-object v0, Landroid/os/AnrMonitor;->sUploadBinderRecords:[Landroid/os/AnrMonitor$UploadInfo;

    .line 117
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    .line 120
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    return-void

    .line 70
    :cond_1
    const/16 v0, 0xbb8

    goto :goto_0

    :cond_2
    move v0, v2

    .line 102
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized addBinderCallTimeToHistory(J)V
    .locals 8
    .param p0, "tookTime"    # J

    .prologue
    const-class v5, Landroid/os/AnrMonitor;

    monitor-enter v5

    .line 616
    :try_start_0
    new-instance v3, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v3}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    .line 617
    .local v3, "uploadBinderInfo":Landroid/os/AnrMonitor$UploadInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "The binder call "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/AnrMonitor;->binderCallToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    .line 620
    iput-wide p0, v3, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    .line 621
    invoke-static {}, Landroid/os/AnrMonitor;->currentThreadName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    .line 623
    sget-object v4, Landroid/os/AnrMonitor;->sUploadBinderRecords:[Landroid/os/AnrMonitor$UploadInfo;

    sget v6, Landroid/os/AnrMonitor;->sBinderRecordIndex:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Landroid/os/AnrMonitor;->sBinderRecordIndex:I

    aput-object v3, v4, v6

    .line 624
    sget v4, Landroid/os/AnrMonitor;->sBinderRecordIndex:I

    sget-object v6, Landroid/os/AnrMonitor;->sUploadBinderRecords:[Landroid/os/AnrMonitor$UploadInfo;

    array-length v6, v6

    if-lt v4, v6, :cond_2

    .line 625
    sget-object v4, Landroid/os/AnrMonitor;->sUploadBinderRecords:[Landroid/os/AnrMonitor$UploadInfo;

    invoke-static {v4}, Landroid/os/AnrMonitor$UploadInfo;->-wrap0([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, "reportContent":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 627
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 628
    .local v1, "message":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v1, Landroid/os/Message;->what:I

    .line 629
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 630
    sget-boolean v4, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "AnrMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "binder call report content : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 633
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    const/4 v4, 0x0

    sput v4, Landroid/os/AnrMonitor;->sBinderRecordIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "reportContent":Ljava/lang/String;
    :cond_2
    monitor-exit v5

    .line 615
    return-void

    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v3    # "uploadBinderInfo":Landroid/os/AnrMonitor$UploadInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static declared-synchronized addInputToHistory(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;Landroid/view/InputChannel;J)V
    .locals 9
    .param p0, "event"    # Landroid/view/InputEvent;
    .param p1, "receiver"    # Landroid/view/InputEventReceiver;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "tookTime"    # J

    .prologue
    const-class v5, Landroid/os/AnrMonitor;

    monitor-enter v5

    .line 412
    :try_start_0
    new-instance v3, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v3}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    .line 413
    .local v3, "uploadInputInfo":Landroid/os/AnrMonitor$UploadInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "The inputEvent "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Landroid/os/AnrMonitor;->inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " {"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string/jumbo v4, " target reveicer = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string/jumbo v4, " target InputChannel = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {p2}, Landroid/os/AnrMonitor;->inputChannelToString(Landroid/view/InputChannel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    .line 421
    iput-wide p3, v3, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    .line 422
    sget-object v4, Landroid/os/AnrMonitor;->sUploadInputRecords:[Landroid/os/AnrMonitor$UploadInfo;

    sget v6, Landroid/os/AnrMonitor;->sInputRecordIndex:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Landroid/os/AnrMonitor;->sInputRecordIndex:I

    aput-object v3, v4, v6

    .line 423
    sget v4, Landroid/os/AnrMonitor;->sInputRecordIndex:I

    sget-object v6, Landroid/os/AnrMonitor;->sUploadInputRecords:[Landroid/os/AnrMonitor$UploadInfo;

    array-length v6, v6

    if-lt v4, v6, :cond_2

    .line 424
    sget-object v4, Landroid/os/AnrMonitor;->sUploadInputRecords:[Landroid/os/AnrMonitor$UploadInfo;

    invoke-static {v4}, Landroid/os/AnrMonitor$UploadInfo;->-wrap0([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "reportContent":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 426
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 427
    .local v1, "message":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v1, Landroid/os/Message;->what:I

    .line 428
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 429
    sget-boolean v4, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "AnrMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "report content : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 432
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    const/4 v4, 0x0

    sput v4, Landroid/os/AnrMonitor;->sInputRecordIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "reportContent":Ljava/lang/String;
    :cond_2
    monitor-exit v5

    .line 411
    return-void

    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v3    # "uploadInputInfo":Landroid/os/AnrMonitor$UploadInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static declared-synchronized addLockWaitTimeToHistory(Landroid/os/statistics/MonitorSuperviser$SingleLockWait;IJJLandroid/os/statistics/MonitorSuperviser$SingleLockHold;)V
    .locals 1
    .param p0, "lockWaitInfo"    # Landroid/os/statistics/MonitorSuperviser$SingleLockWait;
    .param p1, "contentionCount"    # I
    .param p2, "contentionTotalMillis"    # J
    .param p4, "criticalContentionMillis"    # J
    .param p6, "lockContentionInfo"    # Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    .prologue
    const-class v0, Landroid/os/AnrMonitor;

    monitor-enter v0

    monitor-exit v0

    .line 682
    return-void
.end method

.method private static declared-synchronized addMessageToHistory(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .locals 8
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "monitorInfo"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .prologue
    const-class v5, Landroid/os/AnrMonitor;

    monitor-enter v5

    .line 338
    :try_start_0
    iget-object v4, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v4, :cond_3

    .line 339
    new-instance v3, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v3}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    .line 340
    .local v3, "uploadMsgInfo":Landroid/os/AnrMonitor$UploadInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "The message {"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-object v4, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v4, :cond_4

    .line 343
    const-string/jumbo v4, " callback="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v4, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :goto_0
    const-string/jumbo v4, " target="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v4, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    .line 353
    invoke-static {}, Landroid/os/AnrMonitor;->currentThreadName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    .line 354
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getTookTimeAfterDispatch()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    .line 355
    sget-boolean v4, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    if-eqz v4, :cond_0

    .line 356
    const-string/jumbo v4, "AnrMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The msg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 357
    const-string/jumbo v7, " add to history sMsgRecordIndex "

    .line 356
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 357
    sget v7, Landroid/os/AnrMonitor;->sMsgRecordIndex:I

    .line 356
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    sget-object v4, Landroid/os/AnrMonitor;->sUploadMsgRecords:[Landroid/os/AnrMonitor$UploadInfo;

    sget v6, Landroid/os/AnrMonitor;->sMsgRecordIndex:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Landroid/os/AnrMonitor;->sMsgRecordIndex:I

    aput-object v3, v4, v6

    .line 360
    sget v4, Landroid/os/AnrMonitor;->sMsgRecordIndex:I

    sget-object v6, Landroid/os/AnrMonitor;->sUploadMsgRecords:[Landroid/os/AnrMonitor$UploadInfo;

    array-length v6, v6

    if-lt v4, v6, :cond_3

    .line 361
    sget-object v4, Landroid/os/AnrMonitor;->sUploadMsgRecords:[Landroid/os/AnrMonitor$UploadInfo;

    invoke-static {v4}, Landroid/os/AnrMonitor$UploadInfo;->-wrap0([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "reportContent":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 363
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 364
    .local v1, "message":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v1, Landroid/os/Message;->what:I

    .line 365
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 366
    sget-boolean v4, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "AnrMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "report content : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 369
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    const/4 v4, 0x0

    sput v4, Landroid/os/AnrMonitor;->sMsgRecordIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v2    # "reportContent":Ljava/lang/String;
    .end local v3    # "uploadMsgInfo":Landroid/os/AnrMonitor$UploadInfo;
    :cond_3
    monitor-exit v5

    .line 337
    return-void

    .line 346
    .restart local v0    # "b":Ljava/lang/StringBuilder;
    .restart local v3    # "uploadMsgInfo":Landroid/os/AnrMonitor$UploadInfo;
    :cond_4
    :try_start_1
    const-string/jumbo v4, " what="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget v4, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v3    # "uploadMsgInfo":Landroid/os/AnrMonitor$UploadInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static binderCallToString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, "caller":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 641
    aget-object v2, v1, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 642
    const-string/jumbo v2, "{ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    aget-object v2, v1, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string/jumbo v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 648
    :cond_0
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public static canMonitorAnr()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/AnrMonitor;->NOT_CTS_BUILD:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static canMonitorMessage()Z
    .locals 2

    .prologue
    .line 583
    sget-boolean v0, Landroid/os/AnrMonitor;->MONITOR_MSG_EXECUTION:Z

    if-eqz v0, :cond_0

    .line 584
    const/4 v0, 0x1

    return v0

    .line 586
    :cond_0
    sget-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 587
    sget-object v0, Landroid/os/AnrMonitor;->sMonitorList:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 586
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkBinderCallTime(J)V
    .locals 4
    .param p0, "startTime"    # J

    .prologue
    .line 605
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 606
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, v2, p0

    .line 607
    .local v0, "tookTime":J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 608
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The binder call took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 611
    :cond_1
    invoke-static {v0, v1}, Landroid/os/AnrMonitor;->addBinderCallTimeToHistory(J)V

    .line 604
    :cond_2
    return-void
.end method

.method public static checkInputTime(JLandroid/view/InputEvent;)V
    .locals 6
    .param p0, "startTime"    # J
    .param p2, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 375
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, p0

    .line 377
    .local v2, "tookTime":J
    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 379
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The input: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " took "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ms."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkInputTime failed and took time is : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ms."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static checkInputTime(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;Landroid/view/InputChannel;)V
    .locals 10
    .param p0, "event"    # Landroid/view/InputEvent;
    .param p1, "receiver"    # Landroid/view/InputEventReceiver;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 387
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 388
    :cond_0
    const-wide/16 v2, 0x0

    .line 389
    .local v2, "tookTime":J
    sget-object v4, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    monitor-enter v4

    .line 390
    :try_start_0
    sget-object v1, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 391
    .local v0, "index":I
    if-gez v0, :cond_1

    monitor-exit v4

    .line 392
    return-void

    .line 394
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sget-object v1, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 395
    sget-object v1, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 397
    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 398
    invoke-static {p0, p1, p2, v2, v3}, Landroid/os/AnrMonitor;->addInputToHistory(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;Landroid/view/InputChannel;J)V

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The input: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/os/AnrMonitor;->inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 400
    const-string/jumbo v4, " took "

    .line 399
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 400
    const-string/jumbo v4, "ms. Send to InputChannel "

    .line 399
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 400
    invoke-virtual {p2}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v4

    .line 399
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    const/4 v4, 0x0

    .line 399
    invoke-static {v1, v4}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    :cond_2
    return-void

    .line 389
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public static checkLockWaitTime(Landroid/os/statistics/MonitorSuperviser$SingleLockWait;IJJLandroid/os/statistics/MonitorSuperviser$SingleLockHold;)V
    .locals 0
    .param p0, "lockWaitInfo"    # Landroid/os/statistics/MonitorSuperviser$SingleLockWait;
    .param p1, "contentionCount"    # I
    .param p2, "contentionTotalMillis"    # J
    .param p4, "criticalContentionMillis"    # J
    .param p6, "lockContentionInfo"    # Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    .prologue
    .line 677
    return-void
.end method

.method public static checkMsgTime(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .locals 6
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "monitorInfo"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .prologue
    .line 316
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getTookTime()J

    move-result-wide v0

    .line 318
    .local v0, "tookTime":J
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getTookTimeAfterDispatch()J

    move-result-wide v2

    .line 319
    .local v2, "tookTimeAfterDispatch":J
    const-wide/32 v4, 0x186a0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 321
    :cond_1
    return-void

    .line 324
    :cond_2
    sget-wide v4, Landroid/os/AnrMonitor;->MESSAGE_MONITOR_TIMEOUT:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "The msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 326
    const-string/jumbo v5, " took "

    .line 325
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 326
    const-string/jumbo v5, "ms and took "

    .line 325
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 327
    const-string/jumbo v5, "ms after dispatch."

    .line 325
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 327
    const/4 v5, 0x0

    .line 325
    invoke-static {v4, v5}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    :cond_3
    const-wide/16 v4, 0xbb8

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 332
    invoke-static {p0, p1}, Landroid/os/AnrMonitor;->addMessageToHistory(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    .line 315
    :cond_4
    return-void
.end method

.method public static checkPerfEvent(Landroid/os/statistics/PerfEvent;)V
    .locals 8
    .param p0, "perfEvent"    # Landroid/os/statistics/PerfEvent;

    .prologue
    .line 652
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 653
    :cond_0
    instance-of v1, p0, Landroid/os/statistics/MicroscopicEvent;

    if-nez v1, :cond_1

    return-void

    :cond_1
    move-object v0, p0

    .line 655
    nop

    nop

    .line 656
    .local v0, "microPerfEvent":Landroid/os/statistics/MicroscopicEvent;
    invoke-virtual {v0}, Landroid/os/statistics/MicroscopicEvent;->isMasterEvent()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 658
    :cond_2
    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v6, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v2, v4, v6

    .line 659
    .local v2, "tookTime":J
    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 660
    return-void

    .line 663
    :cond_3
    instance-of v1, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;

    if-nez v1, :cond_4

    .line 664
    instance-of v1, p0, Landroid/os/statistics/SingleJniMethod;

    if-eqz v1, :cond_5

    .line 672
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-static {v4}, Landroid/os/statistics/PerfEventConstants;->getTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " at thread "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " took "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ms."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/AnrMonitor;->logPerfEvent(Ljava/lang/String;Landroid/os/statistics/PerfEvent;)V

    .line 651
    return-void

    .line 665
    :cond_5
    instance-of v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;

    if-nez v1, :cond_4

    .line 666
    instance-of v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    if-nez v1, :cond_4

    .line 667
    instance-of v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    if-nez v1, :cond_4

    .line 668
    instance-of v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;

    if-nez v1, :cond_4

    .line 669
    return-void
.end method

.method public static createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/AnrMonitor;->createFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static createFile(Ljava/lang/String;Z)Ljava/io/File;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "forceClear"    # Z

    .prologue
    const/4 v7, 0x0

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 148
    .local v2, "tracesDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 150
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    return-object v7

    .line 154
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fd

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 156
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 157
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1b6

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-object v1

    .line 159
    .end local v2    # "tracesDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "AnrMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to create file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    return-object v7
.end method

.method static declared-synchronized currentPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    const-class v2, Landroid/os/AnrMonitor;

    monitor-enter v2

    .line 475
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    const-string/jumbo v1, "system_server"

    sput-object v1, Landroid/os/AnrMonitor;->sPkgName:Ljava/lang/String;

    .line 482
    :goto_0
    sget-object v1, Landroid/os/AnrMonitor;->sPkgName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 479
    :cond_0
    :try_start_1
    sput-object v0, Landroid/os/AnrMonitor;->sPkgName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static currentProcessName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 510
    sget-object v1, Landroid/os/AnrMonitor;->sProcessName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "processName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    const-string/jumbo v1, "system_server"

    sput-object v1, Landroid/os/AnrMonitor;->sProcessName:Ljava/lang/String;

    .line 518
    :cond_0
    :goto_0
    sget-object v1, Landroid/os/AnrMonitor;->sProcessName:Ljava/lang/String;

    return-object v1

    .line 515
    :cond_1
    sput-object v0, Landroid/os/AnrMonitor;->sProcessName:Ljava/lang/String;

    goto :goto_0
.end method

.method static currentThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static currentVersionCode()I
    .locals 6

    .prologue
    .line 526
    sget v3, Landroid/os/AnrMonitor;->sVersionCode:I

    if-nez v3, :cond_0

    .line 528
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 529
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 531
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 530
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 532
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v3, :cond_0

    .line 533
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v3, Landroid/os/AnrMonitor;->sVersionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    sget v3, Landroid/os/AnrMonitor;->sVersionCode:I

    return v3

    .line 536
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static currentVersionName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 544
    sget-object v3, Landroid/os/AnrMonitor;->sVersionName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 546
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 547
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 549
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 548
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 550
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 551
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v3, Landroid/os/AnrMonitor;->sVersionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    sget-object v3, Landroid/os/AnrMonitor;->sVersionName:Ljava/lang/String;

    return-object v3

    .line 554
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static deleteUnnecessaryFileIfNeeded(Ljava/io/File;Ljava/lang/String;I)V
    .locals 12
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 1033
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1037
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .local v2, "fileInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/os/AnrMonitor$FileInfo;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 1040
    .local v8, "subFiles":[Ljava/io/File;
    const/4 v9, 0x0

    array-length v10, v8

    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v5, v8, v9

    .line 1041
    .local v5, "subFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1043
    .local v3, "filename":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1044
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 1045
    .local v6, "modifiedTime":J
    new-instance v11, Landroid/os/AnrMonitor$FileInfo;

    invoke-direct {v11, v5, v6, v7}, Landroid/os/AnrMonitor$FileInfo;-><init>(Ljava/io/File;J)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    .end local v6    # "modifiedTime":J
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1034
    .end local v2    # "fileInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/os/AnrMonitor$FileInfo;>;"
    .end local v3    # "filename":Ljava/lang/String;
    .end local v5    # "subFile":Ljava/io/File;
    .end local v8    # "subFiles":[Ljava/io/File;
    :cond_1
    return-void

    .line 1050
    .restart local v2    # "fileInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/os/AnrMonitor$FileInfo;>;"
    .restart local v8    # "subFiles":[Ljava/io/File;
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    :goto_1
    move v4, p2

    .local v4, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 1056
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/AnrMonitor$FileInfo;

    invoke-virtual {v9}, Landroid/os/AnrMonitor$FileInfo;->getFile()Ljava/io/File;

    move-result-object v1

    .line 1057
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_3

    .line 1058
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1055
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1051
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "i":I
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1032
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "i":I
    :cond_4
    return-void
.end method

.method public static dispatchInputEventStart(Landroid/view/InputEvent;)V
    .locals 6
    .param p0, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 405
    sget-object v1, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    monitor-enter v1

    .line 406
    :try_start_0
    sget-object v0, Landroid/os/AnrMonitor;->mInputEvnetStartTimeSeqMap:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 404
    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static doDump(Ljava/lang/String;)V
    .locals 11
    .param p0, "cmds"    # Ljava/lang/String;

    .prologue
    .line 741
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 742
    .local v6, "object":Lorg/json/JSONObject;
    const-string/jumbo v9, "dump_service"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 743
    .local v7, "service":Ljava/lang/String;
    const-string/jumbo v9, "args"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 744
    .local v1, "array":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 745
    .local v8, "size":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    .line 746
    .local v0, "args":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_0

    .line 747
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "opt"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v5

    .line 746
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 749
    :cond_0
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 751
    .local v2, "binder":Landroid/os/IBinder;
    :try_start_1
    sget-object v9, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-interface {v2, v9, v0}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 739
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v5    # "i":I
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "service":Ljava/lang/String;
    .end local v8    # "size":I
    :goto_1
    return-void

    .line 752
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v1    # "array":Lorg/json/JSONArray;
    .restart local v2    # "binder":Landroid/os/IBinder;
    .restart local v5    # "i":I
    .restart local v6    # "object":Lorg/json/JSONObject;
    .restart local v7    # "service":Ljava/lang/String;
    .restart local v8    # "size":I
    :catch_0
    move-exception v3

    .line 753
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v9, "AnrMonitor"

    const-string/jumbo v10, "dump failed"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 755
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "i":I
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "service":Ljava/lang/String;
    .end local v8    # "size":I
    :catch_1
    move-exception v4

    .line 756
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static dumpAnrInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Landroid/util/SparseArray;[Ljava/lang/String;ZZ)Ljava/io/File;
    .locals 14
    .param p0, "oriInfo"    # Ljava/lang/StringBuilder;
    .param p1, "extraInfo"    # Ljava/lang/String;
    .param p2, "anrProcessName"    # Ljava/lang/String;
    .param p3, "anrPid"    # I
    .param p6, "nativeProcs"    # [Ljava/lang/String;
    .param p7, "isMonkeyTest"    # Z
    .param p8, "bgAnr"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 256
    .local p4, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    const/4 v8, 0x0

    .line 258
    .local v8, "writer":Ljava/io/FileWriter;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 259
    .local v6, "start":J
    move/from16 v0, p8

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/os/AnrMonitor;->getAnrPath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "filePath":Ljava/lang/String;
    invoke-static {v5}, Landroid/os/AnrMonitor;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 261
    .local v4, "file":Ljava/io/File;
    invoke-static {v4}, Landroid/os/AnrMonitor;->isFileAvailable(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 262
    new-instance v9, Ljava/io/FileWriter;

    const/4 v10, 0x1

    invoke-direct {v9, v4, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .end local v8    # "writer":Ljava/io/FileWriter;
    .local v9, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 264
    if-eqz p7, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    invoke-virtual {v9, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 268
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/os/AnrMonitor;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(dump anr info success and took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 269
    const-string/jumbo v11, "ms)"

    .line 268
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 275
    if-eqz v9, :cond_1

    .line 277
    :try_start_2
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 270
    :cond_1
    :goto_0
    return-object v4

    .line 278
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 272
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "start":J
    .end local v9    # "writer":Ljava/io/FileWriter;
    .restart local v8    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v3

    .line 273
    .end local v8    # "writer":Ljava/io/FileWriter;
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v10, "AnrMonitor"

    const-string/jumbo v11, "Error happens when dumping anr info"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    if-eqz v8, :cond_2

    .line 277
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 282
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    const/4 v10, 0x0

    return-object v10

    .line 278
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 274
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 275
    :goto_3
    if-eqz v8, :cond_3

    .line 277
    :try_start_5
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 274
    :cond_3
    :goto_4
    throw v10

    .line 278
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 274
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v6    # "start":J
    .restart local v9    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "writer":Ljava/io/FileWriter;
    .local v8, "writer":Ljava/io/FileWriter;
    goto :goto_3

    .line 272
    .end local v8    # "writer":Ljava/io/FileWriter;
    .restart local v9    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "writer":Ljava/io/FileWriter;
    .restart local v8    # "writer":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method public static dumpBinderInfo(ILjava/io/Writer;)V
    .locals 4
    .param p0, "pid"    # I
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 215
    :try_start_0
    const-string/jumbo v1, "/sys/kernel/debug/binder/failed_transaction_log"

    .line 216
    .local v1, "srcPath":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    .line 217
    const-string/jumbo v1, "/sys/kernel/debug/binder/transaction_log"

    .line 218
    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    .line 219
    const-string/jumbo v1, "/sys/kernel/debug/binder/transactions"

    .line 220
    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    .line 221
    const-string/jumbo v1, "/sys/kernel/debug/binder/stats"

    .line 222
    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1    # "srcPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "AnrMonitor"

    const-string/jumbo v3, "dumpBinderInfo fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static dumpCpuInfo(ILjava/io/Writer;)V
    .locals 4
    .param p0, "pid"    # I
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 232
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/schedstat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "srcPath":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/stat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1, p1}, Landroid/os/AnrMonitor;->readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1    # "srcPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "AnrMonitor"

    const-string/jumbo v3, "dumpCpuInfo fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static finishMonitor(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "monitorInfo"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .prologue
    .line 576
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorMessage()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 577
    :cond_0
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorDigest()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "digest":Ljava/lang/String;
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 575
    return-void
.end method

.method private static getAnrPath(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bgAnr"    # Z
    .param p1, "anrProcessName"    # Ljava/lang/String;

    .prologue
    .line 242
    const-string/jumbo v0, ""

    .line 243
    .local v0, "extraInfoFileName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 244
    const-string/jumbo v0, "anr_info.txt"

    .line 249
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/anr/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 246
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "anr_info_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/AnrMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 247
    const-string/jumbo v2, ".txt"

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWorkHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 592
    sget-object v1, Landroid/os/AnrMonitor;->sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;

    if-nez v1, :cond_1

    .line 593
    sget-object v2, Landroid/os/AnrMonitor;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v2

    .line 594
    :try_start_0
    sget-object v1, Landroid/os/AnrMonitor;->sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;

    if-nez v1, :cond_0

    .line 595
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "work-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 596
    .local v0, "monitorThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 597
    new-instance v1, Landroid/os/AnrMonitor$WorkHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/AnrMonitor$WorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/os/AnrMonitor;->sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 601
    :cond_1
    sget-object v1, Landroid/os/AnrMonitor;->sWorkHandler:Landroid/os/AnrMonitor$WorkHandler;

    return-object v1

    .line 593
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static inputChannelToString(Landroid/view/InputChannel;)Ljava/lang/String;
    .locals 5
    .param p0, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 454
    if-nez p0, :cond_0

    :try_start_0
    const-string/jumbo v3, "null"

    return-object v3

    .line 455
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "inputChannelName":Ljava/lang/String;
    const-string/jumbo v3, "uninitialized"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 457
    const-string/jumbo v3, "uninitialized"

    return-object v3

    .line 460
    :cond_1
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "splitResult":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 462
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v2, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 464
    :cond_2
    return-object v1

    .line 467
    .end local v1    # "inputChannelName":Ljava/lang/String;
    .end local v2    # "splitResult":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v3, "Error getting inputChannel name "

    invoke-static {v3, v0}, Landroid/os/AnrMonitor;->logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    const-string/jumbo v3, "null"

    return-object v3
.end method

.method private static inputEventToString(Landroid/view/InputEvent;)Ljava/lang/String;
    .locals 5
    .param p0, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .local v2, "msg":Ljava/lang/StringBuilder;
    instance-of v3, p0, Landroid/view/KeyEvent;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 439
    nop

    nop

    .line 440
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    const-string/jumbo v3, "KeyEvent { action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string/jumbo v3, ", keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string/jumbo v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_0
    move-object v1, p0

    .line 445
    check-cast v1, Landroid/view/MotionEvent;

    .line 446
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    const-string/jumbo v3, "MotionEvent { action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string/jumbo v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isAllowedMonitor(Landroid/os/BaseLooper;)Z
    .locals 2
    .param p0, "looper"    # Landroid/os/BaseLooper;

    .prologue
    .line 286
    if-eqz p0, :cond_0

    .line 287
    invoke-virtual {p0}, Landroid/os/BaseLooper;->isMonitorLooper()Z

    move-result v0

    return v0

    .line 289
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAllowedMonitorBinderCall(Landroid/os/BaseLooper;)Z
    .locals 1
    .param p0, "looper"    # Landroid/os/BaseLooper;

    .prologue
    .line 299
    invoke-static {p0}, Landroid/os/AnrMonitor;->isAllowedMonitor(Landroid/os/BaseLooper;)Z

    move-result v0

    return v0
.end method

.method public static isAllowedMonitorBinderCallSize(I)Z
    .locals 2
    .param p0, "dataSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 294
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/os/AnrMonitor;->CHECK_PARCEL_SIZE_ENABLE:Z

    if-eqz v1, :cond_0

    .line 295
    sget v1, Landroid/os/AnrMonitor;->CHECK_PARCEL_SIZE_KB:I

    mul-int/lit16 v1, v1, 0x400

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 294
    :cond_0
    return v0
.end method

.method public static isAllowedMonitorInput(Landroid/os/BaseLooper;)Z
    .locals 1
    .param p0, "looper"    # Landroid/os/BaseLooper;

    .prologue
    .line 303
    invoke-static {p0}, Landroid/os/AnrMonitor;->isAllowedMonitor(Landroid/os/BaseLooper;)Z

    move-result v0

    return v0
.end method

.method public static isFileAvailable(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 167
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x1

    return v0

    .line 168
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLongTimeMsg(Landroid/os/BaseLooper$MessageMonitorInfo;)Z
    .locals 4
    .param p0, "monitorInfo"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getTookTime()J

    move-result-wide v0

    .line 308
    .local v0, "tookTime":J
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/32 v2, 0x186a0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 309
    const/4 v2, 0x1

    return v2

    .line 311
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method static declared-synchronized isSystemApp()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const-class v6, Landroid/os/AnrMonitor;

    monitor-enter v6

    .line 490
    :try_start_0
    sget-object v7, Landroid/os/AnrMonitor;->sIsSystemApp:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 492
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 493
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 495
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 494
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 496
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_0

    .line 497
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    const/4 v3, 0x1

    .line 498
    .local v3, "isSystemApp":Z
    :goto_0
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    .line 499
    .local v4, "isSystemUpdateApp":Z
    :goto_1
    new-instance v7, Ljava/lang/Boolean;

    if-nez v3, :cond_3

    .end local v4    # "isSystemUpdateApp":Z
    :goto_2
    invoke-direct {v7, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Landroid/os/AnrMonitor;->sIsSystemApp:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "isSystemApp":Z
    :cond_0
    :goto_3
    :try_start_2
    sget-object v7, Landroid/os/AnrMonitor;->sIsSystemApp:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_4

    :goto_4
    monitor-exit v6

    return v5

    .line 497
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "isSystemApp":Z
    goto :goto_0

    .line 498
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "isSystemUpdateApp":Z
    goto :goto_1

    .line 499
    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    .line 506
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "isSystemApp":Z
    .end local v4    # "isSystemUpdateApp":Z
    :cond_4
    :try_start_3
    sget-object v5, Landroid/os/AnrMonitor;->sIsSystemApp:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    goto :goto_4

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 502
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_3
.end method

.method private static isSystemBootCompleted()Z
    .locals 2

    .prologue
    .line 761
    sget-boolean v0, Landroid/os/AnrMonitor;->sSystemBootCompleted:Z

    if-nez v0, :cond_0

    .line 762
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/AnrMonitor;->sSystemBootCompleted:Z

    .line 764
    :cond_0
    sget-boolean v0, Landroid/os/AnrMonitor;->sSystemBootCompleted:Z

    return v0
.end method

.method static declared-synchronized isSystemServer()Z
    .locals 3

    .prologue
    const-class v1, Landroid/os/AnrMonitor;

    monitor-enter v1

    .line 486
    :try_start_0
    const-string/jumbo v0, "system_server"

    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static logAnr(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 768
    if-eqz p1, :cond_0

    .line 769
    const-string/jumbo v0, "MIUI-BLOCK-MONITOR"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    :goto_0
    return-void

    .line 771
    :cond_0
    const-string/jumbo v0, "MIUI-BLOCK-MONITOR"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 783
    if-eqz p1, :cond_0

    .line 784
    const-string/jumbo v0, "DUMP_APP_TRACE"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    :goto_0
    return-void

    .line 786
    :cond_0
    const-string/jumbo v0, "DUMP_APP_TRACE"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logPerfEvent(Ljava/lang/String;Landroid/os/statistics/PerfEvent;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "event"    # Landroid/os/statistics/PerfEvent;

    .prologue
    .line 776
    const-string/jumbo v0, "MIUI-BLOCK-MONITOR"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    if-eqz p1, :cond_0

    .line 778
    const-string/jumbo v0, "MIUI-BLOCK-MONITOR"

    invoke-virtual {p1}, Landroid/os/statistics/PerfEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    return-void
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v9, 0x0

    .line 183
    const/4 v3, 0x0

    .line 184
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 186
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v6, "strBuffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 193
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/AnrMonitor;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 196
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "strBuffer":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 197
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 204
    :cond_0
    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 198
    :cond_1
    :goto_2
    return-object v9

    .line 195
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "strBuffer":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v7

    .line 201
    if-eqz v1, :cond_3

    .line 202
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 204
    :cond_3
    if-eqz v4, :cond_4

    .line 205
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 195
    :cond_4
    :goto_3
    return-object v7

    .line 207
    :catch_1
    move-exception v2

    .line 208
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 207
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "strBuffer":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v2

    .line 208
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 199
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 201
    :goto_4
    if-eqz v0, :cond_5

    .line 202
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 204
    :cond_5
    if-eqz v3, :cond_6

    .line 205
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 199
    :cond_6
    :goto_5
    throw v7

    .line 207
    :catch_3
    move-exception v2

    .line 208
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 199
    .end local v2    # "e":Ljava/lang/Exception;
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v3, "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 196
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    .local v3, "fileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v3, "fileReader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public static readFileToWriter(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 3
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/os/AnrMonitor;->isFileAvailable(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/AnrMonitor;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "------ cat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/AnrMonitor;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 178
    invoke-static {v0}, Landroid/os/AnrMonitor;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method

.method public static renameTraces(Ljava/lang/String;)V
    .locals 10
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 1014
    const-string/jumbo v5, "dalvik.vm.stack-trace-file"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1016
    .local v4, "tracesPath":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1017
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1018
    .local v1, "traceRenameFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/anr/traces_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1019
    const-string/jumbo v6, "_"

    .line 1018
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1019
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/os/AnrMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v6

    .line 1018
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1019
    const-string/jumbo v6, ".txt"

    .line 1018
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "newTracesPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1024
    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1025
    .local v3, "tracesDirStr":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v2, "tracesDir":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "traces_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v9}, Landroid/os/AnrMonitor;->deleteUnnecessaryFileIfNeeded(Ljava/io/File;Ljava/lang/String;I)V

    .line 1028
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "anr_info_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v9}, Landroid/os/AnrMonitor;->deleteUnnecessaryFileIfNeeded(Ljava/io/File;Ljava/lang/String;I)V

    .line 1012
    .end local v0    # "newTracesPath":Ljava/lang/String;
    .end local v1    # "traceRenameFile":Ljava/io/File;
    .end local v2    # "tracesDir":Ljava/io/File;
    .end local v3    # "tracesDirStr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static startMonitor(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .locals 6
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "monitorInfo"    # Landroid/os/BaseLooper$MessageMonitorInfo;

    .prologue
    .line 562
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorMessage()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 563
    :cond_0
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorMessage()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "info":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 565
    :cond_1
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 566
    .local v2, "monitorMsg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 567
    invoke-virtual {p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->createMonitorDigest()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 568
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 569
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "monitor_msg"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 572
    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 561
    return-void
.end method

.method public static declared-synchronized toCalendarTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    const-class v1, Landroid/os/AnrMonitor;

    monitor-enter v1

    .line 136
    :try_start_0
    sget-object v0, Landroid/os/AnrMonitor;->DATE:Ljava/util/Date;

    invoke-virtual {v0, p0, p1}, Ljava/util/Date;->setTime(J)V

    .line 137
    sget-object v0, Landroid/os/AnrMonitor;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    sget-object v2, Landroid/os/AnrMonitor;->DATE:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
