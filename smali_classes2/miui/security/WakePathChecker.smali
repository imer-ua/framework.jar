.class public Lmiui/security/WakePathChecker;
.super Ljava/lang/Object;
.source "WakePathChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/WakePathChecker$WakePathRuleData;
    }
.end annotation


# static fields
.field private static final CALL_LIST_LOG_MAP_MAX_SIZE:I = 0xc8

.field private static final GET_CONTENT_PROVIDER_RULE_INFOS_LIST_INDEX:I = 0x2

.field private static final RULE_INFOS_LIST_COUNT:I = 0x4

.field private static final SEND_BROADCAST_RULE_INFOS_LIST_INDEX:I = 0x1

.field private static final START_ACTIVITY_RULE_INFOS_LIST_INDEX:I = 0x0

.field private static final START_SERVICE_RULE_INFOS_LIST_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final WAKEPATH_CONFIRM_DIALOG_WHITELIST_TYPE_CALLEE:I = 0x1

.field public static final WAKEPATH_CONFIRM_DIALOG_WHITELIST_TYPE_CALLER:I = 0x2

.field private static sInstance:Lmiui/security/WakePathChecker;


# instance fields
.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mBindServiceCheckActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCallListLogLocker:Ljava/lang/Object;

.field mCallListLogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/security/WakePathRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/internal/app/IWakePathCallback;

.field mLauncherPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTrackCallListLogEnabled:Z

.field private mUpdatePkgsEnable:Z

.field private mUpdatePkgsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserWakePathRuleDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/security/WakePathChecker$WakePathRuleData;",
            ">;"
        }
    .end annotation
.end field

.field private mWakePathCallerWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWakePathConfirmDialogWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lmiui/security/WakePathChecker;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->updateLauncherPackageNames(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lmiui/security/WakePathChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    .line 61
    iput-boolean v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsEnable:Z

    .line 77
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    .line 79
    sget-boolean v2, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    .line 89
    iget-boolean v1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    .line 92
    :cond_0
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    const-string/jumbo v2, "com.mfashiongallery.express"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    const-string/jumbo v2, "com.mi.dlabs.vr.thor"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    const-string/jumbo v2, "com.miui.home"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    const-string/jumbo v2, "com.miui.securitycenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    const-string/jumbo v2, "miui.action.CAMERA_EMPTY_SERVICE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    const-string/jumbo v2, "android.media.browse.MediaBrowserService"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const-string/jumbo v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 102
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 88
    return-void

    .line 79
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lmiui/security/WakePathChecker;
    .locals 2

    .prologue
    const-class v1, Lmiui/security/WakePathChecker;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lmiui/security/WakePathChecker;

    invoke-direct {v0}, Lmiui/security/WakePathChecker;-><init>()V

    sput-object v0, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;

    .line 110
    :cond_0
    sget-object v0, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 132
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 133
    :cond_0
    const/4 p1, 0x0

    .line 136
    :cond_1
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v2

    .line 137
    :try_start_0
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/WakePathChecker$WakePathRuleData;

    .line 138
    .local v0, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    if-nez v0, :cond_2

    .line 139
    new-instance v0, Lmiui/security/WakePathChecker$WakePathRuleData;

    .end local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    invoke-direct {v0, p0}, Lmiui/security/WakePathChecker$WakePathRuleData;-><init>(Lmiui/security/WakePathChecker;)V

    .line 140
    .restart local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    .line 143
    return-object v0

    .line 136
    .end local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private trackCallListInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "callee"    # Ljava/lang/String;
    .param p5, "wakeType"    # I

    .prologue
    .line 388
    iget-object v11, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v11

    .line 389
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    :cond_0
    sget-object v2, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MIUILOG-WAKEPATH trackCallListInfo: invalid parameter caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " callee="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 391
    return-void

    .line 393
    :cond_1
    :try_start_1
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 395
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_2

    monitor-exit v11

    .line 396
    return-void

    .line 400
    :cond_2
    :try_start_2
    invoke-static/range {p1 .. p4}, Lmiui/security/WakePathRuleInfo;->getHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 401
    .local v9, "hashCode":I
    if-nez v9, :cond_3

    .line 402
    sget-object v2, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MIUILOG-WAKEPATH trackCallListInfo: hashCode == 0,(action ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 403
    const-string/jumbo v4, " caller="

    .line 402
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 403
    const-string/jumbo v4, " callee="

    .line 402
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 403
    const-string/jumbo v4, " wakeType="

    .line 402
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 403
    const-string/jumbo v4, ")"

    .line 402
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    .line 404
    return-void

    .line 407
    :cond_3
    :try_start_3
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/security/WakePathRuleInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 408
    .local v10, "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    if-nez v10, :cond_4

    .line 410
    :try_start_4
    new-instance v1, Lmiui/security/WakePathRuleInfo;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lmiui/security/WakePathRuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 414
    .end local v10    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    .local v1, "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    :goto_0
    if-eqz v1, :cond_4

    .line 415
    :try_start_5
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    .end local v9    # "hashCode":I
    :cond_4
    monitor-exit v11

    .line 386
    return-void

    .line 411
    .restart local v9    # "hashCode":I
    .restart local v10    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    :catch_0
    move-exception v8

    .line 412
    .local v8, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v10

    .end local v10    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    .restart local v1    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    goto :goto_0

    .line 388
    .end local v1    # "wakePathRuleInfo":Lmiui/security/WakePathRuleInfo;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "hashCode":I
    :catchall_0
    move-exception v2

    monitor-exit v11

    throw v2
.end method

.method private updateLauncherPackageNames(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 471
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v5, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MAIN"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "android.intent.category.HOME"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 478
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v4, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 480
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "ri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 481
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    sget-object v9, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateLauncherPackageNames ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "ri$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateLauncherPackageNames"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v10, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    monitor-enter v10

    .line 489
    :try_start_1
    iget-object v9, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 490
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 491
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "name$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 492
    .local v2, "name":Ljava/lang/String;
    iget-object v9, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 488
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "name$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_1
    monitor-exit v10

    .line 470
    return-void
.end method

.method private wakeTypeToRuleInfosListIndex(I)I
    .locals 2
    .param p1, "wakeType"    # I

    .prologue
    .line 118
    const/4 v0, -0x1

    .line 119
    .local v0, "ret":I
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 120
    const/4 v0, 0x3

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 122
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 124
    const/4 v0, 0x2

    goto :goto_0

    .line 125
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 126
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "callerPkgName"    # Ljava/lang/String;
    .param p2, "calleePkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    :cond_0
    return v4

    .line 431
    :cond_1
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    monitor-enter v3

    .line 432
    :try_start_0
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v3

    .line 433
    return v4

    :cond_2
    monitor-exit v3

    .line 437
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    monitor-enter v3

    .line 438
    :try_start_1
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_3

    monitor-exit v3

    .line 439
    return v4

    .line 431
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    monitor-exit v3

    .line 443
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    monitor-enter v3

    .line 444
    :try_start_2
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-eqz v2, :cond_4

    monitor-exit v3

    .line 445
    return v4

    .line 437
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4
    monitor-exit v3

    .line 449
    invoke-direct {p0, p3}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v1

    .line 450
    .local v1, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v1

    .line 452
    :try_start_3
    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 453
    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v2

    if-eqz v2, :cond_5

    monitor-exit v1

    .line 454
    return v4

    .line 443
    .end local v1    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 458
    .restart local v1    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :cond_5
    :try_start_4
    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    if-eqz v2, :cond_6

    .line 459
    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 460
    .local v0, "callerPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_6

    .line 461
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v2

    if-eqz v2, :cond_6

    monitor-exit v1

    .line 462
    return v4

    .end local v0    # "callerPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    monitor-exit v1

    .line 467
    return v5

    .line 450
    :catchall_3
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public checkBroadcastWakePath(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;I)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "callerAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "info"    # Landroid/content/pm/ResolveInfo;
    .param p5, "userId"    # I

    .prologue
    const/4 v8, 0x1

    .line 256
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    return v8

    .line 260
    :cond_1
    const-string/jumbo v4, ""

    .line 261
    .local v4, "callee":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 262
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 263
    .local v2, "className":Ljava/lang/String;
    const/4 v5, -0x1

    .line 264
    .local v5, "calleeUid":I
    if-eqz p1, :cond_2

    .line 265
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 272
    :cond_2
    if-eqz p4, :cond_4

    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 275
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 277
    :cond_3
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 280
    :cond_4
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    return v8

    .line 284
    :cond_5
    const/4 v6, 0x2

    move-object v0, p0

    move-object v3, p2

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lmiui/security/WakePathChecker;->matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    move v0, v8

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    return-void

    .line 541
    :cond_0
    const-string/jumbo v5, "========================================WAKEPATH DUMP BEGIN========================================"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    :try_start_0
    iget-object v6, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :try_start_1
    iget-object v5, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 545
    iget-object v5, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "userId$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 546
    .local v3, "userId":Ljava/lang/Integer;
    iget-object v5, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/WakePathChecker$WakePathRuleData;

    .line 547
    .local v2, "ruleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    const-string/jumbo v5, "----------------------------------------"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    if-eqz v2, :cond_1

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "userId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    iget-object v5, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "whitelist="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v5, 0x4

    if-ge v1, v5, :cond_1

    .line 559
    iget-object v5, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rule info index="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " size=0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 555
    .end local v1    # "i":I
    :cond_2
    const-string/jumbo v5, "whitelist is null."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 543
    .end local v2    # "ruleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .end local v3    # "userId":Ljava/lang/Integer;
    .end local v4    # "userId$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "dump"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    const-string/jumbo v5, "========================================WAKEPATH DUMP END========================================"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    return-void

    .line 562
    .restart local v1    # "i":I
    .restart local v2    # "ruleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .restart local v3    # "userId":Ljava/lang/Integer;
    .restart local v4    # "userId$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rule info index="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "ruleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    .end local v3    # "userId":Ljava/lang/Integer;
    .end local v4    # "userId$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method

.method public getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    iget-boolean v2, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v2, :cond_1

    .line 237
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 238
    :try_start_0
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :try_start_1
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :cond_0
    monitor-exit v3

    .line 244
    :cond_1
    if-nez v0, :cond_2

    .line 245
    return-object v4

    .line 237
    .restart local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :catchall_0
    move-exception v2

    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :goto_0
    monitor-exit v3

    throw v2

    .line 247
    :cond_2
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2

    .line 237
    .restart local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->updateLauncherPackageNames(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z
    .locals 20
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "callee"    # Ljava/lang/String;
    .param p5, "calleeUid"    # I
    .param p6, "wakeType"    # I
    .param p7, "userId"    # I

    .prologue
    .line 293
    const/16 v19, 0x0

    .line 296
    .local v19, "wakePathRuleInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-static {v0, v1}, Lmiui/security/AppRunningControlManager;->matchRule(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AppRunningControl, Reject userId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 298
    const-string/jumbo v7, " caller= "

    .line 297
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 298
    const-string/jumbo v7, " callee= "

    .line 297
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 298
    const-string/jumbo v7, " classname="

    .line 297
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 299
    const-string/jumbo v7, " action="

    .line 297
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 299
    const-string/jumbo v7, " wakeType="

    .line 297
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v5, 0x1

    return v5

    .line 304
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v5, :cond_1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    .line 305
    invoke-direct/range {v4 .. v9}, Lmiui/security/WakePathChecker;->trackCallListInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 308
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v1}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v18

    .line 309
    .local v18, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v18

    .line 311
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    move-object/from16 v0, p3

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 312
    move-object/from16 v0, v18

    iget-object v5, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 313
    move-object/from16 v0, v18

    iget-object v5, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 314
    move-object/from16 v0, v18

    iget-object v5, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    move-object/from16 v0, p4

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 311
    if-eqz v5, :cond_4

    .line 315
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    .line 317
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/android/internal/app/IWakePathCallback;->onAllowCall(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :cond_3
    :goto_0
    const/4 v5, 0x0

    monitor-exit v18

    return v5

    .line 318
    :catch_0
    move-exception v12

    .line 319
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 309
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v19    # "wakePathRuleInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v18

    throw v5

    .line 325
    .restart local v19    # "wakePathRuleInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    :cond_4
    const/16 v5, 0x8

    move/from16 v0, p6

    if-ne v0, v5, :cond_5

    .line 326
    if-lez p5, :cond_5

    if-eqz p4, :cond_5

    .line 327
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 325
    if-eqz v5, :cond_5

    .line 328
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 347
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lmiui/security/WakePathChecker;->wakeTypeToRuleInfosListIndex(I)I

    move-result v15

    .line 348
    .local v15, "index":I
    if-ltz v15, :cond_6

    const/4 v5, 0x4

    if-lt v15, v5, :cond_9

    .line 349
    :cond_6
    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "MIUILOG-WAKEPATH invalid parameter"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 350
    const/4 v5, 0x0

    monitor-exit v18

    return v5

    .line 329
    .end local v15    # "index":I
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v5, :cond_5

    .line 330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v10

    .line 332
    .local v10, "callingIdentity":J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v6, 0x2718

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-interface {v5, v6, v0, v1}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v16

    .line 333
    .local v16, "mode":I
    if-eqz v16, :cond_8

    .line 334
    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIUILOG-AutoStart, BindService Reject userId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 335
    const-string/jumbo v7, " caller= "

    .line 334
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 335
    const-string/jumbo v7, " callee= "

    .line 334
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 335
    const-string/jumbo v7, " classname="

    .line 334
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 336
    const-string/jumbo v7, " action="

    .line 334
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 336
    const-string/jumbo v7, " wakeType="

    .line 334
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 342
    :try_start_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 337
    const/4 v5, 0x1

    monitor-exit v18

    return v5

    .line 342
    :cond_8
    :try_start_7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 339
    .end local v16    # "mode":I
    :catch_1
    move-exception v13

    .line 340
    .local v13, "e":Ljava/lang/Exception;
    :try_start_8
    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkOperation"

    invoke-static {v5, v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 342
    :try_start_9
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 341
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    .line 342
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    throw v5

    .line 352
    .end local v10    # "callingIdentity":J
    .restart local v15    # "index":I
    :cond_9
    move-object/from16 v0, v18

    iget-object v5, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/List;

    move-object/from16 v19, v0

    .line 354
    .local v19, "wakePathRuleInfos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v5

    if-nez v5, :cond_b

    .line 355
    :cond_a
    const/4 v5, 0x0

    monitor-exit v18

    return v5

    .line 357
    :cond_b
    :try_start_a
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    .line 358
    .local v17, "size":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_e

    .line 359
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/security/WakePathRuleInfo;

    .local v4, "info":Lmiui/security/WakePathRuleInfo;
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    .line 360
    invoke-virtual/range {v4 .. v9}, Lmiui/security/WakePathRuleInfo;->equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 361
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v5, :cond_c

    .line 363
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/android/internal/app/IWakePathCallback;->onRejectCall(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 368
    :cond_c
    :goto_3
    :try_start_c
    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIUILOG-WAKEPATH: call was rejected by wakepath. userId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 369
    const-string/jumbo v7, " caller= "

    .line 368
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 369
    const-string/jumbo v7, " callee= "

    .line 368
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 369
    const-string/jumbo v7, " classname="

    .line 368
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 370
    const-string/jumbo v7, " action="

    .line 368
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 370
    const-string/jumbo v7, " wakeType="

    .line 368
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 371
    const/4 v5, 0x1

    monitor-exit v18

    return v5

    .line 364
    :catch_2
    move-exception v12

    .line 365
    .restart local v12    # "e":Landroid/os/RemoteException;
    :try_start_d
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 358
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 375
    .end local v4    # "info":Lmiui/security/WakePathRuleInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v5, :cond_f

    .line 377
    :try_start_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/android/internal/app/IWakePathCallback;->onAllowCall(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_f
    :goto_4
    monitor-exit v18

    .line 383
    const/4 v5, 0x0

    return v5

    .line 378
    :catch_3
    move-exception v12

    .line 379
    .restart local v12    # "e":Landroid/os/RemoteException;
    :try_start_f
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_4
.end method

.method public onPackageAdded(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 499
    new-instance v0, Lmiui/security/WakePathChecker$1;

    invoke-direct {v0, p0, p1}, Lmiui/security/WakePathChecker$1;-><init>(Lmiui/security/WakePathChecker;Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 498
    return-void
.end method

.method public pushUpdatePkgsData(Ljava/util/List;Z)V
    .locals 2
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, "updatePkgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-boolean p2, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsEnable:Z

    .line 527
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 528
    :cond_0
    return-void

    .line 530
    :cond_1
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    monitor-enter v1

    .line 531
    :try_start_0
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 532
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 525
    return-void

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    return-void

    .line 189
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 190
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 185
    :cond_2
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 194
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 195
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    monitor-enter v1

    .line 196
    :try_start_1
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 195
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public pushWakePathRuleInfos(ILjava/util/List;I)V
    .locals 9
    .param p1, "wakeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lmiui/security/WakePathRuleInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathRuleInfo;>;"
    const/4 v5, 0x0

    .line 147
    sget-object v6, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MIUILOG-WAKEPATH pushWakePathRuleInfos: wakeType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 148
    const-string/jumbo v8, " size="

    .line 147
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 148
    if-nez p2, :cond_1

    .line 147
    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0, p3}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v4

    .line 150
    .local v4, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v4

    .line 151
    const/16 v5, 0x11

    if-ne p1, v5, :cond_2

    .line 152
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    .line 155
    if-eqz p2, :cond_3

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 157
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/WakePathRuleInfo;

    .line 158
    .local v2, "info":Lmiui/security/WakePathRuleInfo;
    iget-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCalleeExpress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 159
    .local v3, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 160
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .restart local v3    # "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCalleeExpress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCallerExpress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    .end local v0    # "i":I
    .end local v2    # "info":Lmiui/security/WakePathRuleInfo;
    .end local v3    # "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    .line 167
    .restart local v4    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->wakeTypeToRuleInfosListIndex(I)I

    move-result v1

    .line 168
    .local v1, "index":I
    if-ltz v1, :cond_3

    const/4 v5, 0x4

    if-ge v1, v5, :cond_3

    .line 169
    iget-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "index":I
    :cond_3
    monitor-exit v4

    .line 146
    return-void

    .line 150
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method public pushWakePathWhiteList(Ljava/util/List;I)V
    .locals 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "wakePathWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUILOG-WAKEPATH pushWakePathWhiteList: userId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 177
    const-string/jumbo v3, " size="

    .line 176
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 176
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0, p2}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v0

    .line 180
    .local v0, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    monitor-enter v0

    .line 181
    :try_start_0
    iput-object p1, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 175
    return-void

    .line 177
    .end local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 180
    .restart local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/app/IWakePathCallback;

    .prologue
    .line 423
    iput-object p1, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    .line 422
    return-void
.end method

.method public removeWakePathData(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 203
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUILOG-WAKEPATH removeWakePathData: userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-eqz p1, :cond_0

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    :cond_0
    return-void

    .line 209
    :cond_1
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v2

    .line 210
    :try_start_0
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/WakePathChecker$WakePathRuleData;

    .line 211
    .local v0, "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    if-eqz v0, :cond_2

    .line 212
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    .line 202
    return-void

    .line 209
    .end local v0    # "wakePathRuleData":Lmiui/security/WakePathChecker$WakePathRuleData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setTrackWakePathCallListLogEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    return-void

    .line 223
    :cond_0
    iput-boolean p1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    .line 224
    iget-boolean v0, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-nez v0, :cond_2

    .line 225
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 217
    :cond_2
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updatePath(Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ComponentInfo;
    .param p3, "wakeType"    # I
    .param p4, "userId"    # I

    .prologue
    .line 508
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    if-eqz p4, :cond_1

    .line 509
    :cond_0
    return-void

    .line 508
    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    .line 512
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    if-eqz v1, :cond_4

    .line 513
    iget-boolean v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsEnable:Z

    if-nez v1, :cond_2

    return-void

    .line 514
    :cond_2
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    monitor-enter v2

    .line 515
    :try_start_0
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    monitor-exit v2

    return-void

    :cond_3
    monitor-exit v2

    .line 518
    :try_start_1
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1, v2}, Lcom/android/internal/app/IWakePathCallback;->onUpdateCall(ILandroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 507
    :cond_4
    :goto_0
    return-void

    .line 514
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePath error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
