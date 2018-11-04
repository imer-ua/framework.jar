.class public Landroid/app/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$AppTask;,
        Landroid/app/ActivityManager$MemoryInfo;,
        Landroid/app/ActivityManager$ProcessErrorStateInfo;,
        Landroid/app/ActivityManager$RecentTaskInfo;,
        Landroid/app/ActivityManager$RunningAppProcessInfo;,
        Landroid/app/ActivityManager$RunningServiceInfo;,
        Landroid/app/ActivityManager$RunningTaskInfo;,
        Landroid/app/ActivityManager$StackId;,
        Landroid/app/ActivityManager$StackInfo;,
        Landroid/app/ActivityManager$TaskDescription;,
        Landroid/app/ActivityManager$TaskThumbnail;,
        Landroid/app/ActivityManager$TaskThumbnailInfo;
    }
.end annotation


# static fields
.field public static final ACTION_REPORT_HEAP_LIMIT:Ljava/lang/String; = "android.app.action.REPORT_HEAP_LIMIT"

.field public static final APP_START_MODE_DELAYED:I = 0x1

.field public static final APP_START_MODE_DISABLED:I = 0x2

.field public static final APP_START_MODE_NORMAL:I = 0x0

.field public static final ASSIST_CONTEXT_BASIC:I = 0x0

.field public static final ASSIST_CONTEXT_FULL:I = 0x1

.field public static final BROADCAST_FAILED_USER_STOPPED:I = -0x2

.field public static final BROADCAST_STICKY_CANT_HAVE_PERMISSION:I = -0x1

.field public static final BROADCAST_SUCCESS:I = 0x0

.field public static final BUGREPORT_OPTION_FULL:I = 0x0

.field public static final BUGREPORT_OPTION_INTERACTIVE:I = 0x1

.field public static final BUGREPORT_OPTION_REMOTE:I = 0x2

.field public static final BUGREPORT_OPTION_TELEPHONY:I = 0x4

.field public static final BUGREPORT_OPTION_WEAR:I = 0x3

.field public static final COMPAT_MODE_ALWAYS:I = -0x1

.field public static final COMPAT_MODE_DISABLED:I = 0x0

.field public static final COMPAT_MODE_ENABLED:I = 0x1

.field public static final COMPAT_MODE_NEVER:I = -0x2

.field public static final COMPAT_MODE_TOGGLE:I = 0x2

.field public static final COMPAT_MODE_UNKNOWN:I = -0x3

.field public static final DOCKED_STACK_CREATE_MODE_BOTTOM_OR_RIGHT:I = 0x1

.field public static final DOCKED_STACK_CREATE_MODE_TOP_OR_LEFT:I = 0x0

.field public static final FLAG_AND_LOCKED:I = 0x2

.field public static final FLAG_AND_UNLOCKED:I = 0x4

.field public static final FLAG_AND_UNLOCKING_OR_UNLOCKED:I = 0x8

.field public static final FLAG_OR_STOPPED:I = 0x1

.field public static final INTENT_SENDER_ACTIVITY:I = 0x2

.field public static final INTENT_SENDER_ACTIVITY_RESULT:I = 0x3

.field public static final INTENT_SENDER_BROADCAST:I = 0x1

.field public static final INTENT_SENDER_SERVICE:I = 0x4

.field public static final LOCK_TASK_MODE_LOCKED:I = 0x1

.field public static final LOCK_TASK_MODE_NONE:I = 0x0

.field public static final LOCK_TASK_MODE_PINNED:I = 0x2

.field public static final MAX_PROCESS_STATE:I = 0x10

.field public static final META_HOME_ALTERNATE:Ljava/lang/String; = "android.app.home.alternate"

.field public static final MIN_PROCESS_STATE:I = -0x1

.field public static final MOVE_TASK_NO_USER_ACTION:I = 0x2

.field public static final MOVE_TASK_WITH_HOME:I = 0x1

.field public static final PROCESS_STATE_BACKUP:I = 0x8

.field public static final PROCESS_STATE_BOUND_FOREGROUND_SERVICE:I = 0x3

.field public static final PROCESS_STATE_CACHED_ACTIVITY:I = 0xe

.field public static final PROCESS_STATE_CACHED_ACTIVITY_CLIENT:I = 0xf

.field public static final PROCESS_STATE_CACHED_EMPTY:I = 0x10

.field public static final PROCESS_STATE_FOREGROUND_SERVICE:I = 0x4

.field public static final PROCESS_STATE_HEAVY_WEIGHT:I = 0x9

.field public static final PROCESS_STATE_HOME:I = 0xc

.field public static final PROCESS_STATE_IMPORTANT_BACKGROUND:I = 0x7

.field public static final PROCESS_STATE_IMPORTANT_FOREGROUND:I = 0x6

.field public static final PROCESS_STATE_LAST_ACTIVITY:I = 0xd

.field public static final PROCESS_STATE_NONEXISTENT:I = -0x1

.field public static final PROCESS_STATE_PERSISTENT:I = 0x0

.field public static final PROCESS_STATE_PERSISTENT_UI:I = 0x1

.field public static final PROCESS_STATE_RECEIVER:I = 0xb

.field public static final PROCESS_STATE_SERVICE:I = 0xa

.field public static final PROCESS_STATE_TOP:I = 0x2

.field public static final PROCESS_STATE_TOP_SLEEPING:I = 0x5

.field public static final RECENT_IGNORE_HOME_STACK_TASKS:I = 0x8

.field public static final RECENT_IGNORE_UNAVAILABLE:I = 0x2

.field public static final RECENT_INCLUDE_PROFILES:I = 0x4

.field public static final RECENT_INGORE_DOCKED_STACK_TOP_TASK:I = 0x10

.field public static final RECENT_INGORE_PINNED_STACK_TASKS:I = 0x20

.field public static final RECENT_WITH_EXCLUDED:I = 0x1

.field public static final RESIZE_MODE_FORCED:I = 0x2

.field public static final RESIZE_MODE_PRESERVE_WINDOW:I = 0x1

.field public static final RESIZE_MODE_SYSTEM:I = 0x0

.field public static final RESIZE_MODE_SYSTEM_SCREEN_ROTATION:I = 0x1

.field public static final RESIZE_MODE_USER:I = 0x1

.field public static final RESIZE_MODE_USER_FORCED:I = 0x3

.field public static final START_CANCELED:I = -0x6

.field public static final START_CLASS_NOT_FOUND:I = -0x2

.field public static final START_DELIVERED_TO_TOP:I = 0x3

.field public static final START_FLAG_DEBUG:I = 0x2

.field public static final START_FLAG_NATIVE_DEBUGGING:I = 0x8

.field public static final START_FLAG_ONLY_IF_NEEDED:I = 0x1

.field public static final START_FLAG_TRACK_ALLOCATION:I = 0x4

.field public static final START_FORWARD_AND_REQUEST_CONFLICT:I = -0x3

.field public static final START_INTENT_NOT_RESOLVED:I = -0x1

.field public static final START_NOT_ACTIVITY:I = -0x5

.field public static final START_NOT_CURRENT_USER_ACTIVITY:I = -0x8

.field public static final START_NOT_VOICE_COMPATIBLE:I = -0x7

.field public static final START_PERMISSION_DENIED:I = -0x4

.field public static final START_RETURN_INTENT_TO_CALLER:I = 0x1

.field public static final START_RETURN_LOCK_TASK_MODE_VIOLATION:I = 0x5

.field public static final START_SUCCESS:I = 0x0

.field public static final START_SWITCHES_CANCELED:I = 0x4

.field public static final START_TASK_TO_FRONT:I = 0x2

.field public static final START_VOICE_HIDDEN_SESSION:I = -0xa

.field public static final START_VOICE_NOT_ACTIVE_SESSION:I = -0x9

.field private static TAG:Ljava/lang/String; = null

.field public static final UID_OBSERVER_ACTIVE:I = 0x8

.field public static final UID_OBSERVER_GONE:I = 0x2

.field public static final UID_OBSERVER_IDLE:I = 0x4

.field public static final UID_OBSERVER_PROCSTATE:I = 0x1

.field public static final USER_OP_ERROR_IS_SYSTEM:I = -0x3

.field public static final USER_OP_ERROR_RELATED_USERS_CANNOT_STOP:I = -0x4

.field public static final USER_OP_IS_CURRENT:I = -0x2

.field public static final USER_OP_SUCCESS:I = 0x0

.field public static final USER_OP_UNKNOWN_USER:I = -0x1

.field private static gMaxRecentTasks:I


# instance fields
.field mAppTaskThumbnailSize:Landroid/graphics/Point;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    .line 118
    const/4 v0, -0x1

    sput v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    .line 115
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 499
    iput-object p2, p0, Landroid/app/ActivityManager;->mHandler:Landroid/os/Handler;

    .line 497
    return-void
.end method

.method public static checkComponentPermission(Ljava/lang/String;IIZ)I
    .locals 5
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "owningUid"    # I
    .param p3, "exported"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 3368
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3369
    .local v0, "appId":I
    if-eqz v0, :cond_0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1

    .line 3370
    :cond_0
    return v3

    .line 3373
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3374
    return v4

    .line 3378
    :cond_2
    if-ltz p2, :cond_3

    invoke-static {p1, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3379
    return v3

    .line 3382
    :cond_3
    if-nez p3, :cond_4

    .line 3389
    return v4

    .line 3391
    :cond_4
    if-nez p0, :cond_5

    .line 3392
    return v3

    .line 3395
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3397
    :catch_0
    move-exception v1

    .line 3398
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static checkUidPermission(Ljava/lang/String;I)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 3405
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3407
    :catch_0
    move-exception v0

    .line 3408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3547
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3548
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3549
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "package"

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3550
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 3551
    const-string/jumbo v2, "activity"

    new-array v3, v8, [Ljava/lang/String;

    .line 3552
    const-string/jumbo v4, "-a"

    aput-object v4, v3, v5

    const-string/jumbo v4, "package"

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    .line 3551
    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3553
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 3554
    const-string/jumbo v2, "meminfo"

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "--local"

    aput-object v4, v3, v5

    const-string/jumbo v4, "--package"

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3555
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 3556
    const-string/jumbo v2, "procstats"

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3557
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 3558
    const-string/jumbo v2, "usagestats"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "--packages"

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3559
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 3560
    const-string/jumbo v2, "batterystats"

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3561
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 3546
    return-void
.end method

.method private static dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3565
    const-string/jumbo v4, "DUMP OF SERVICE "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, ":"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3566
    invoke-static {p2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3567
    .local v1, "service":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 3568
    const-string/jumbo v4, "  (Service not found)"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3569
    return-void

    .line 3571
    :cond_0
    const/4 v2, 0x0

    .line 3573
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 3574
    new-instance v3, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v3}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3575
    .local v3, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    const-string/jumbo v4, "  "

    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    invoke-virtual {v3, v4}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 3576
    invoke-virtual {v3}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-interface {v1, v4, p3}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 3577
    const-wide/16 v4, 0x2710

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 3564
    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_0
    return-void

    .line 3578
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v0

    .line 3579
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_1

    .line 3580
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 3582
    :cond_1
    const-string/jumbo v4, "Failure dumping service:"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3583
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 3578
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    move-object v2, v3

    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    goto :goto_1
.end method

.method private ensureAppTaskThumbnailSizeLocked()V
    .locals 2

    .prologue
    .line 1757
    iget-object v1, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    if-nez v1, :cond_0

    .line 1759
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    :cond_0
    return-void

    .line 1760
    :catch_0
    move-exception v0

    .line 1761
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getCurrentUser()I
    .locals 3

    .prologue
    .line 3457
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3458
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 3459
    :catch_0
    move-exception v0

    .line 3460
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static getDefaultAppRecentsLimitStatic()I
    .locals 1

    .prologue
    .line 976
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    return v0
.end method

.method static getLauncherLargeIconSizeInner(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3284
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v4, 0x1050000

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3285
    .local v2, "size":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3287
    .local v3, "sw":I
    const/16 v4, 0x258

    if-ge v3, v4, :cond_0

    .line 3289
    return v2

    .line 3292
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3294
    .local v0, "density":I
    sparse-switch v0, :sswitch_data_0

    .line 3310
    int-to-float v4, v2

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    return v4

    .line 3296
    :sswitch_0
    mul-int/lit16 v4, v2, 0xa0

    div-int/lit8 v4, v4, 0x78

    return v4

    .line 3298
    :sswitch_1
    mul-int/lit16 v4, v2, 0xf0

    div-int/lit16 v4, v4, 0xa0

    return v4

    .line 3300
    :sswitch_2
    mul-int/lit16 v4, v2, 0x140

    div-int/lit16 v4, v4, 0xf0

    return v4

    .line 3302
    :sswitch_3
    mul-int/lit16 v4, v2, 0x140

    div-int/lit16 v4, v4, 0xf0

    return v4

    .line 3304
    :sswitch_4
    mul-int/lit16 v4, v2, 0x1e0

    div-int/lit16 v4, v4, 0x140

    return v4

    .line 3306
    :sswitch_5
    mul-int/lit16 v4, v2, 0x140

    mul-int/lit8 v4, v4, 0x2

    div-int/lit16 v4, v4, 0x1e0

    return v4

    .line 3294
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getMaxAppRecentsLimitStatic()I
    .locals 1

    .prologue
    .line 984
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static getMaxRecentTasksStatic()I
    .locals 1

    .prologue
    .line 965
    sget v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    if-gez v0, :cond_1

    .line 966
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    :goto_0
    sput v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    return v0

    :cond_0
    const/16 v0, 0x30

    goto :goto_0

    .line 968
    :cond_1
    sget v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    return v0
.end method

.method public static getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 2
    .param p0, "outState"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .prologue
    .line 3113
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3111
    return-void

    .line 3114
    :catch_0
    move-exception v0

    .line 3115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "callingPid"    # I
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "allowAll"    # Z
    .param p4, "requireFull"    # Z
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "callerPackage"    # Ljava/lang/String;

    .prologue
    .line 3438
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 3439
    return p2

    .line 3442
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 3444
    :catch_0
    move-exception v8

    .line 3445
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static isHighEndGfx()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 955
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "persist.sys.force_sw_gles"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 956
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 955
    :cond_0
    :goto_0
    return v0

    .line 957
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLowRamDeviceStatic()Z
    .locals 3

    .prologue
    .line 945
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.config.low_ram"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isProcStateBackground(I)Z
    .locals 1
    .param p0, "procState"    # I

    .prologue
    .line 449
    const/16 v0, 0x8

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRunningInTestHarness()Z
    .locals 2

    .prologue
    .line 3330
    const-string/jumbo v0, "ro.test_harness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUserAMonkey()Z
    .locals 2

    .prologue
    .line 3320
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isUserAMonkey()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3321
    :catch_0
    move-exception v0

    .line 3322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static logoutCurrentUser()V
    .locals 5

    .prologue
    .line 3482
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 3483
    .local v0, "currentUser":I
    if-eqz v0, :cond_0

    .line 3485
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 3486
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3481
    :cond_0
    :goto_0
    return-void

    .line 3487
    :catch_0
    move-exception v1

    .line 3488
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public static setVrThread(I)V
    .locals 2
    .param p0, "tid"    # I

    .prologue
    .line 3693
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->setVrThread(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3691
    :goto_0
    return-void

    .line 3694
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static staticGetLargeMemoryClass()I
    .locals 3

    .prologue
    .line 928
    const-string/jumbo v1, "dalvik.vm.heapsize"

    const-string/jumbo v2, "16m"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "vmHeapSize":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static staticGetMemoryClass()I
    .locals 3

    .prologue
    .line 900
    const-string/jumbo v1, "dalvik.vm.heapgrowthlimit"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, "vmHeapSize":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 904
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v1

    return v1

    .line 902
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static supportsMultiWindow()Z
    .locals 2

    .prologue
    .line 993
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 994
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 995
    const v1, 0x11200b7

    .line 994
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 993
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAppTask(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Landroid/app/ActivityManager$TaskDescription;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1791
    monitor-enter p0

    .line 1792
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityManager;->ensureAppTaskThumbnailSizeLocked()V

    .line 1793
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v10, "size":Landroid/graphics/Point;
    monitor-exit p0

    .line 1795
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 1796
    .local v12, "tw":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 1797
    .local v11, "th":I
    iget v13, v10, Landroid/graphics/Point;->x:I

    if-ne v12, v13, :cond_0

    iget v13, v10, Landroid/graphics/Point;->y:I

    if-eq v11, v13, :cond_1

    .line 1798
    :cond_0
    iget v13, v10, Landroid/graphics/Point;->x:I

    iget v14, v10, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1802
    .local v3, "bm":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .local v5, "dx":F
    const/4 v6, 0x0

    .line 1803
    .local v6, "dy":F
    iget v13, v10, Landroid/graphics/Point;->x:I

    mul-int/2addr v13, v12

    iget v14, v10, Landroid/graphics/Point;->y:I

    mul-int/2addr v14, v11

    if-le v13, v14, :cond_3

    .line 1804
    iget v13, v10, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v9, v13, v14

    .line 1805
    .local v9, "scale":F
    iget v13, v10, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    int-to-float v14, v12

    mul-float/2addr v14, v9

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v5, v13, v14

    .line 1810
    :goto_0
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1811
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v8, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1812
    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v13, v5

    float-to-int v13, v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1814
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1815
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v8, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1816
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1818
    move-object/from16 p4, v3

    .line 1820
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "scale":F
    :cond_1
    if-nez p3, :cond_2

    .line 1821
    new-instance p3, Landroid/app/ActivityManager$TaskDescription;

    .end local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    invoke-direct/range {p3 .. p3}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 1824
    .restart local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v14

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v13, v14, v0, v1, v2}, Landroid/app/IActivityManager;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    return v13

    .line 1791
    .end local v10    # "size":Landroid/graphics/Point;
    .end local v11    # "th":I
    .end local v12    # "tw":I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 1807
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v10    # "size":Landroid/graphics/Point;
    .restart local v11    # "th":I
    .restart local v12    # "tw":I
    :cond_3
    iget v13, v10, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v9, v13, v14

    .line 1808
    .restart local v9    # "scale":F
    iget v13, v10, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    int-to-float v14, v11

    mul-float/2addr v14, v9

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v6, v13, v14

    goto :goto_0

    .line 1826
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v9    # "scale":F
    :catch_0
    move-exception v7

    .line 1827
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v13

    throw v13
.end method

.method public clearApplicationUserData()Z
    .locals 2

    .prologue
    .line 2571
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    return v0
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 2553
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 2554
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 2553
    invoke-interface {v1, p1, p2, v2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2555
    :catch_0
    move-exception v0

    .line 2556
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearGrantedUriPermissions(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2605
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 2606
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 2605
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->clearGrantedUriPermissions(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2603
    return-void

    .line 2607
    :catch_0
    move-exception v0

    .line 2608
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearWatchHeapLimit()V
    .locals 7

    .prologue
    .line 3626
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3624
    return-void

    .line 3627
    :catch_0
    move-exception v0

    .line 3628
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dumpPackageState(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3540
    invoke-static {p1, p2}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 3539
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3222
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 3221
    return-void
.end method

.method public forceStopPackageAsUser(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3211
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3209
    return-void

    .line 3212
    :catch_0
    move-exception v0

    .line 3213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAppTaskThumbnailSize()Landroid/util/Size;
    .locals 3

    .prologue
    .line 1750
    monitor-enter p0

    .line 1751
    :try_start_0
    invoke-direct {p0}, Landroid/app/ActivityManager;->ensureAppTaskThumbnailSizeLocked()V

    .line 1752
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1750
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAppTasks()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1731
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1734
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$AppTask;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getAppTasks(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1738
    .local v0, "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1739
    .local v3, "numAppTasks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1740
    new-instance v6, Landroid/app/ActivityManager$AppTask;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/IAppTask;

    invoke-direct {v6, v5}, Landroid/app/ActivityManager$AppTask;-><init>(Landroid/app/IAppTask;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1739
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1735
    .end local v0    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    .end local v2    # "i":I
    .end local v3    # "numAppTasks":I
    :catch_0
    move-exception v1

    .line 1736
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1742
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    .restart local v2    # "i":I
    .restart local v3    # "numAppTasks":I
    :cond_0
    return-object v4
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 2

    .prologue
    .line 3230
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3231
    :catch_0
    move-exception v0

    .line 3232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getFrontActivityScreenCompatMode()I
    .locals 2

    .prologue
    .line 833
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFrontActivityScreenCompatMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2587
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 2588
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 2587
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2589
    :catch_0
    move-exception v0

    .line 2590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLargeMemoryClass()I
    .locals 1

    .prologue
    .line 921
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v0

    return v0
.end method

.method public getLauncherLargeIconDensity()I
    .locals 5

    .prologue
    const/16 v4, 0x140

    .line 3243
    iget-object v3, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3244
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3245
    .local v0, "density":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3247
    .local v2, "sw":I
    const/16 v3, 0x258

    if-ge v2, v3, :cond_0

    .line 3249
    return v0

    .line 3252
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 3268
    int-to-float v3, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .line 3254
    :sswitch_0
    const/16 v3, 0xa0

    return v3

    .line 3256
    :sswitch_1
    const/16 v3, 0xf0

    return v3

    .line 3258
    :sswitch_2
    return v4

    .line 3260
    :sswitch_3
    return v4

    .line 3262
    :sswitch_4
    const/16 v3, 0x1e0

    return v3

    .line 3264
    :sswitch_5
    const/16 v3, 0x280

    return v3

    .line 3252
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public getLauncherLargeIconSize()I
    .locals 1

    .prologue
    .line 3279
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getLockTaskModeState()I
    .locals 2

    .prologue
    .line 3675
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getLockTaskModeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3676
    :catch_0
    move-exception v0

    .line 3677
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMemoryClass()I
    .locals 1

    .prologue
    .line 893
    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    move-result v0

    return v0
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 2
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;

    .prologue
    .line 2414
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2412
    return-void

    .line 2415
    :catch_0
    move-exception v0

    .line 2416
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 869
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getPackageAskScreenCompat(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPackageImportance(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3092
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 3093
    iget-object v3, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3092
    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3094
    .local v1, "procState":I
    invoke-static {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3095
    .end local v1    # "procState":I
    :catch_0
    move-exception v0

    .line 3096
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 851
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .locals 2
    .param p1, "pids"    # [I

    .prologue
    .line 3132
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3133
    :catch_0
    move-exception v0

    .line 3134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProcessesInErrorState()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2726
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2727
    :catch_0
    move-exception v0

    .line 2728
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRecentTasks(II)Ljava/util/List;
    .locals 3
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1563
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1564
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1563
    invoke-interface {v1, p1, p2, v2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1565
    :catch_0
    move-exception v0

    .line 1566
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRecentTasksForUser(III)Ljava/util/List;
    .locals 2
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1588
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1590
    :catch_0
    move-exception v0

    .line 1591
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3075
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3076
    :catch_0
    move-exception v0

    .line 3077
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRunningExternalApplications()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3040
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningExternalApplications()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 3041
    :catch_0
    move-exception v0

    .line 3042
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 2309
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2311
    :catch_0
    move-exception v0

    .line 2312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRunningServices(I)Ljava/util/List;
    .locals 3
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 2294
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 2295
    const/4 v2, 0x0

    .line 2294
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2296
    :catch_0
    move-exception v0

    .line 2297
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRunningTasks(I)Ljava/util/List;
    .locals 3
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1867
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1868
    :catch_0
    move-exception v0

    .line 1869
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 2051
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2052
    :catch_0
    move-exception v0

    .line 2053
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isInHomeStack(I)Z
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    .line 2060
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->isInHomeStack(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2061
    :catch_0
    move-exception v0

    .line 2062
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isInLockTaskMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3663
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLowRamDevice()Z
    .locals 1

    .prologue
    .line 940
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method public isUserRunning(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3513
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3514
    :catch_0
    move-exception v0

    .line 3515
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isVrModePackageEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 3522
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3523
    :catch_0
    move-exception v0

    .line 3524
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public killBackgroundProcesses(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3165
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 3166
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 3165
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3163
    return-void

    .line 3167
    :catch_0
    move-exception v0

    .line 3168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public killUid(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3183
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 3184
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3183
    invoke-interface {v1, v2, v3, p2}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3181
    return-void

    .line 3185
    :catch_0
    move-exception v0

    .line 3186
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public moveTaskToFront(II)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 2090
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 2089
    return-void
.end method

.method public moveTaskToFront(IILandroid/os/Bundle;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2109
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2107
    return-void

    .line 2110
    :catch_0
    move-exception v0

    .line 2111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .prologue
    .line 3797
    if-nez p1, :cond_0

    .line 3798
    return-void

    .line 3801
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->registerMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3796
    :goto_0
    return-void

    .line 3802
    :catch_0
    move-exception v0

    .line 3803
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeTask(I)Z
    .locals 2
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1883
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1884
    :catch_0
    move-exception v0

    .line 1885
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public restartPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3147
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 3146
    return-void
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 842
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setFrontActivityScreenCompatMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    return-void

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .prologue
    .line 878
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    return-void

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 860
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    return-void

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "level"    # I

    .prologue
    .line 3056
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3058
    :catch_0
    move-exception v0

    .line 3059
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setResizeBlackList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3812
    .local p1, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setResizeBlackList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3810
    :goto_0
    return-void

    .line 3813
    :catch_0
    move-exception v0

    .line 3814
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setResizeWhiteList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3834
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setResizeWhiteList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3832
    :goto_0
    return-void

    .line 3835
    :catch_0
    move-exception v0

    .line 3836
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setWatchHeapLimit(J)V
    .locals 7
    .param p1, "pssSize"    # J

    .prologue
    .line 3606
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 3607
    iget-object v2, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3606
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3604
    return-void

    .line 3608
    :catch_0
    move-exception v0

    .line 3609
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startLockTaskMode(I)V
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    .line 3637
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->startLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3635
    return-void

    .line 3638
    :catch_0
    move-exception v0

    .line 3639
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopLockTaskMode()V
    .locals 2

    .prologue
    .line 3648
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3646
    return-void

    .line 3649
    :catch_0
    move-exception v0

    .line 3650
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public switchUser(I)Z
    .locals 2
    .param p1, "userid"    # I

    .prologue
    .line 3470
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3471
    :catch_0
    move-exception v0

    .line 3472
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterMiuiAppTransitionAnimationHelper()V
    .locals 2

    .prologue
    .line 3823
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->unregisterMiuiAppTransitionAnimationHelper()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3821
    :goto_0
    return-void

    .line 3824
    :catch_0
    move-exception v0

    .line 3825
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
