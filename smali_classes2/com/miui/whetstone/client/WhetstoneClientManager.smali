.class public abstract Lcom/miui/whetstone/client/WhetstoneClientManager;
.super Ljava/lang/Object;
.source "WhetstoneClientManager.java"


# static fields
.field private static final BOARD_PERFORMANCE_SUPPORT:Z

.field private static CACHAED_STATISTICS_SUPPORT:Z = false

.field private static CHECK_APP_MEMORY_SUPPORT:Z = false

.field private static final DEBUG:Z = false

.field private static final POWER_PROFILE_CONFIG:Ljava/lang/String; = "persist.sys.aries.power_profile"

.field private static final POWER_PROFILE_PERFORMANCE:Ljava/lang/String; = "high"

.field private static RED_SUPPORT:Z = false

.field private static final TAG:Ljava/lang/String; = "WhetstoneClientManager"

.field private static mContext:Landroid/content/Context;

.field private static final mLock:Ljava/lang/Object;

.field private static mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mService:Lcom/miui/whetstone/IWhetstoneClient;

.field public static mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

.field private static mThresholds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

.field private static protectApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAndroidCachePss:J

.field private static sCallingPid:I

.field private static sPerformanceEnable:Z

.field private static sPerformanceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sPowerProfile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 41
    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mContext:Landroid/content/Context;

    .line 43
    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 45
    const-string/jumbo v0, "feature_red_suport"

    invoke-static {v0, v4}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->RED_SUPPORT:Z

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    const-string/jumbo v1, "com.jeejen.family.miui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    const-string/jumbo v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mLock:Ljava/lang/Object;

    .line 59
    const-string/jumbo v0, "feature_cached_statistics_suport"

    invoke-static {v0, v4}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->CACHAED_STATISTICS_SUPPORT:Z

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    .line 161
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceEnable:Z

    .line 163
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.tencent.mm"

    .line 164
    const-string/jumbo v3, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyReceiveUI"

    .line 163
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.tencent.mm"

    .line 166
    const-string/jumbo v3, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyDetailUI"

    .line 165
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.tencent.mm"

    .line 168
    const-string/jumbo v3, "com.tencent.mm.ui.LauncherUI"

    .line 167
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    .line 311
    const-string/jumbo v0, "feature_check_app_memory_suport"

    invoke-static {v0, v4}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    .line 310
    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->CHECK_APP_MEMORY_SUPPORT:Z

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AppBGIdleFeatureIsEnable()Z
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBGIdleFeatureEnable()Z

    move-result v0

    return v0

    .line 142
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static addComponment([Landroid/content/ComponentName;)Z
    .locals 5
    .param p0, "comps"    # [Landroid/content/ComponentName;

    .prologue
    .line 172
    sget-object v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 173
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 174
    .local v1, "pset":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    array-length v4, p0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, p0, v2

    .line 175
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_0
    sput-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 179
    const/4 v2, 0x1

    return v2

    .line 172
    .end local v1    # "pset":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static checkIfPackageIsLocked(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static checkIfPackageIsLocked(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 104
    sget-object v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    .local v0, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    return v5

    .line 106
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "name$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    const/4 v3, 0x1

    return v3

    .line 111
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method private static doPerformanceLam()V
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 234
    const-string/jumbo v0, "persist.sys.aries.power_profile"

    const-string/jumbo v1, "middle"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    .line 239
    :cond_0
    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 240
    const-string/jumbo v0, "persist.sys.aries.power_profile"

    const-string/jumbo v1, "high"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1
    return-void
.end method

.method private static doResumeLam()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 227
    const-string/jumbo v0, "persist.sys.aries.power_profile"

    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sput-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    .line 225
    :cond_0
    return-void
.end method

.method public static getAppBGIdleLevel(I)I
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 149
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBGIdleLevel(I)I

    move-result v0

    return v0

    .line 150
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getEmptyProcTotalMemoryInfo()J
    .locals 3

    .prologue
    .line 125
    const-wide/16 v0, 0x0

    .line 126
    .local v0, "totalMemory":J
    sget-boolean v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->CACHAED_STATISTICS_SUPPORT:Z

    if-nez v2, :cond_0

    .line 127
    return-wide v0

    .line 129
    :cond_0
    sget-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    .line 130
    return-wide v0
.end method

.method public static getWhetstoneSystemSetting()Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/miui/whetstone/IWhetstoneClient;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lcom/miui/whetstone/IWhetstoneClient;
    .param p2, "whetstoneAM"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .prologue
    .line 61
    sput-object p0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mContext:Landroid/content/Context;

    .line 62
    sput-object p1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    .line 63
    new-instance v0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;-><init>(Landroid/content/Context;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    .line 64
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    invoke-static {}, Lcom/miui/whetstone/process/WtServiceControlEntry;->getInstance()Lcom/miui/whetstone/process/WtServiceControlEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 65
    sput-object p2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    .line 60
    return-void
.end method

.method public static isAlarmAllowedLocked(IIIZ)Z
    .locals 1
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "type"    # I
    .param p3, "generalRestrictApply"    # Z

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public static isBroadcastAllowedLocked(IILjava/lang/String;)Z
    .locals 1
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public static isProtectImportantApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isProtectImportantAppWithUid(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isProtectImportantAppWithUid(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    sget-object v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    return v6

    .line 89
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 90
    .local v2, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    if-nez v2, :cond_3

    :cond_2
    return v5

    .line 91
    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    .restart local v0    # "item":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    return v6

    .line 96
    .end local v0    # "item":Ljava/lang/String;
    :cond_5
    return v5
.end method

.method public static isStartServiceAllowedLocked(Landroid/content/Intent;ILjava/lang/String;I)Z
    .locals 1
    .param p0, "service"    # Landroid/content/Intent;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public static isSystemProtectImportantApp(Ljava/lang/String;)Z
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->protectApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const/4 v2, 0x1

    return v2

    .line 75
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static prepareAppTransitionLam(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 4
    .param p0, "realActivity"    # Landroid/content/ComponentName;
    .param p1, "realActivity2"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 195
    sget-boolean v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->RED_SUPPORT:Z

    if-nez v1, :cond_0

    .line 196
    return v3

    .line 198
    :cond_0
    if-nez p1, :cond_1

    .line 199
    return v3

    .line 206
    :cond_1
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceEnable:Z

    .line 209
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->doPerformanceLam()V

    .line 210
    return v2

    .line 212
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceEnable:Z

    .line 213
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->doResumeLam()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return v3

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WhetstoneClientManager"

    const-string/jumbo v2, "prepareAppTransitionLam"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setCachedPidLam(IIJ)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "pid"    # I
    .param p2, "lastPss"    # J

    .prologue
    .line 115
    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->CACHAED_STATISTICS_SUPPORT:Z

    if-nez v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    if-nez p0, :cond_1

    .line 119
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    .line 121
    :cond_1
    sget-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    add-long/2addr v0, p2

    sput-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    .line 114
    return-void
.end method

.method public static setCallingProcessPid(I)V
    .locals 0
    .param p0, "pid"    # I

    .prologue
    .line 157
    sput p0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    .line 156
    return-void
.end method

.method public static setComponment([Landroid/content/ComponentName;)Z
    .locals 5
    .param p0, "comps"    # [Landroid/content/ComponentName;

    .prologue
    .line 183
    sget-object v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 184
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 185
    .local v1, "pset":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    array-length v4, p0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, p0, v2

    .line 186
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_0
    sput-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 190
    const/4 v2, 0x1

    return v2

    .line 183
    .end local v1    # "pset":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static startServiceAllowed(Landroid/content/ComponentName;IZ)Z
    .locals 1
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "intentFlags"    # I
    .param p2, "whileRestarting"    # Z

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public static startServiceAllowed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public static updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .locals 7
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
    .line 262
    .local p0, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    monitor-enter v4

    .line 263
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "threshold$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 264
    .local v0, "threshold":Ljava/lang/String;
    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "values":[Ljava/lang/String;
    array-length v3, v2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 266
    sget-object v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 262
    .end local v0    # "threshold":Ljava/lang/String;
    .end local v1    # "threshold$iterator":Ljava/util/Iterator;
    .end local v2    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "threshold$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 261
    return-void
.end method

.method public static updatePackageLockedStatus(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "locked"    # Z

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V

    .line 279
    return-void
.end method

.method public static updatePackageLockedStatus(Ljava/lang/String;ZI)V
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "locked"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 284
    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4

    .line 285
    :try_start_0
    sget-object v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 286
    .local v1, "lockedApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 287
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 288
    .local v2, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "lockedApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .restart local v1    # "lockedApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 291
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 294
    return-void

    .line 296
    :cond_1
    if-eqz p1, :cond_3

    .line 297
    :try_start_1
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    monitor-exit v4

    .line 283
    return-void

    .line 299
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 300
    .end local v2    # "name":Ljava/lang/String;
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 301
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 302
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 303
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 284
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "lockedApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static updateUserLockedAppList(Ljava/util/List;)V
    .locals 1
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
    .line 272
    .local p0, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;I)V

    .line 271
    return-void
.end method

.method public static updateUserLockedAppList(Ljava/util/List;I)V
    .locals 2
    .param p1, "userId"    # I
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
    .line 276
    .local p0, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mProcessLocked:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    return-void
.end method
