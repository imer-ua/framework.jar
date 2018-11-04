.class public Lcom/miui/whetstone/PowerKeeperPolicy;
.super Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/PowerKeeperPolicy$1;,
        Lcom/miui/whetstone/PowerKeeperPolicy$Client;,
        Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;,
        Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    }
.end annotation


# static fields
.field public static final APP_BG_IDLE_LEVEL_DELAY:I = 0x1

.field public static final APP_BG_IDLE_LEVEL_DISABLE:I = 0x2

.field public static final APP_BG_IDLE_LEVEL_NORMAL:I = 0x0

.field private static final DEBUG:Z

.field public static final DEFAULT_UID:I = -0xa

.field private static final MSG_LE_SCAN_PAROLE_CHANGE:I = 0x3e9

.field private static final MSG_LE_SCAN_UID_RULE_CHANGE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PowerKeeperPolicy"

.field private static final debug:Z

.field private static sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;


# instance fields
.field private final SYSTEM_PID_STAT_FORMAT:[I

.field private mAlarmDataTotal:I

.field private mAlarmRestricts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private mAlarmTypeData:Landroid/util/SparseIntArray;

.field private mAlarmUidData:Landroid/util/SparseIntArray;

.field private mAppBGIdleFeatureStatus:Z

.field private final mAppBGIdleLevel:Landroid/util/SparseIntArray;

.field private final mBleLock:Ljava/lang/Object;

.field private mBlockedUidWakelocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBrdcastUidTypeInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBroadcastDataTotal:I

.field private mBroadcastRestricts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastTypeData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastUidData:Landroid/util/SparseIntArray;

.field private mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BleScanWrapper;",
            "Lcom/miui/whetstone/PowerKeeperPolicy$Client;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mExtraActivityManagerService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mLeScanFeatureEnable:Z

.field private mLeScanHandler:Landroid/os/Handler;

.field private mLocationPolicyListener:Landroid/location/ILocationPolicyListener;

.field private final mLock:Ljava/lang/Object;

.field private mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

.field private final mPolicyLock:Ljava/lang/Object;

.field private mPowerManagerServiceInjector:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mSystemServiceClassLoader:Ljava/lang/ClassLoader;

.field private final mSytemPidStatData:[Ljava/lang/String;

.field private mUidAllow:Landroid/util/SparseBooleanArray;

.field private final mUidBroadcastStat:Landroid/util/SparseBooleanArray;

.field private final mUidPushAlarmProperty:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

.field private mUidScanning:Landroid/util/SparseBooleanArray;

.field private pushAlarmLeaderIntent:Landroid/content/Intent;

.field private pushAlarmLeaderUid:I

.field private sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

.field private setAppToIdle:Ljava/lang/reflect/Method;

.field private setUidWakeLockDisabledState:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/whetstone/PowerKeeperPolicy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    return v0
.end method

.method static synthetic -get4(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    .locals 1

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/whetstone/PowerKeeperPolicy;Lcom/miui/whetstone/IPowerKeeperClient;)Lcom/miui/whetstone/IPowerKeeperClient;
    .locals 0

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/whetstone/PowerKeeperPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasRestrictedScaner()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy;->onLeScanMessageHandler(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->restoreFakeGpsStatus()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanAllLocked()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/whetstone/PowerKeeperPolicy;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanLocked(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 714
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 7
    .param p1, "cld"    # Ljava/lang/ClassLoader;

    .prologue
    const/16 v4, 0x1020

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;-><init>()V

    .line 71
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    .line 85
    iput-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;

    .line 89
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mSytemPidStatData:[Ljava/lang/String;

    .line 91
    const/16 v1, 0x120

    .line 90
    filled-new-array {v1, v4, v4}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->SYSTEM_PID_STAT_FORMAT:[I

    .line 95
    iput-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleFeatureStatus:Z

    .line 97
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    .line 715
    iput-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    .line 716
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    .line 717
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    .line 718
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    .line 720
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    .line 1075
    new-instance v1, Lcom/miui/whetstone/PowerKeeperPolicy$1;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/PowerKeeperPolicy$1;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocationPolicyListener:Landroid/location/ILocationPolicyListener;

    .line 130
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPolicyLock:Ljava/lang/Object;

    .line 131
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    .line 132
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    .line 134
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    .line 135
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    .line 136
    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    .line 138
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    .line 139
    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    .line 140
    iput-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;

    .line 141
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderUid:I

    .line 142
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    .line 143
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    .line 146
    :try_start_0
    const-string/jumbo v1, "com.android.server.power.PowerManagerServiceInjector"

    const/4 v2, 0x0

    .line 145
    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPowerManagerServiceInjector:Ljava/lang/Class;

    .line 147
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPowerManagerServiceInjector:Ljava/lang/Class;

    .line 148
    const-string/jumbo v2, "setUidPartialWakeLockDisabledState"

    .line 147
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    .line 148
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 147
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->setUidWakeLockDisabledState:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    iput-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    .line 154
    iput-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    .line 155
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    .line 156
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    .line 129
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PowerKeeperPolicy"

    const-string/jumbo v2, "PowerKeeperPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkLeScanAllowedLocked()Z
    .locals 6

    .prologue
    .line 827
    const/4 v2, 0x0

    .line 828
    .local v2, "ret":Z
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 829
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 830
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 831
    const/4 v2, 0x1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    :cond_1
    monitor-exit v4

    .line 836
    sget-boolean v3, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkLeScanAllowedLocked: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_2
    return v2

    .line 828
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private checkLeScanAllowedLocked(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 865
    const/4 v2, 0x0

    .line 867
    .local v2, "ret":Z
    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v5

    .line 868
    :try_start_0
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 869
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .line 870
    .local v3, "value":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->-get0(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 871
    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    .end local v2    # "ret":Z
    .end local v3    # "value":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    :cond_1
    monitor-exit v5

    .line 876
    return v2

    .line 867
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v2    # "ret":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private checkLeScanParoleLocked()Z
    .locals 4

    .prologue
    .line 889
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v0

    .line 890
    .local v0, "ret":Z
    sget-boolean v1, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkLeScanParoleLocked: ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    return v0
.end method

.method private checkLeScanRunningLocked()Z
    .locals 6

    .prologue
    .line 813
    const/4 v2, 0x0

    .line 814
    .local v2, "ret":Z
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 815
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 816
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getScanning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 817
    const/4 v2, 0x1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    :cond_1
    monitor-exit v4

    .line 822
    sget-boolean v3, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkLeScanRunningLocked: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_2
    return v2

    .line 814
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private dumpBrdCastManageInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 619
    const-string/jumbo v10, "---------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 621
    .local v5, "jsonArray":Lorg/json/JSONArray;
    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    monitor-enter v11

    .line 623
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 624
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 625
    .local v7, "jsonForApp":Lorg/json/JSONObject;
    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/miui/whetstone/PowerKeeperPolicy;->getPkgNameByUid(I)Ljava/lang/String;

    move-result-object v9

    .line 626
    .local v9, "pkgName":Ljava/lang/String;
    if-nez v9, :cond_0

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 627
    :cond_0
    const-string/jumbo v10, "pkgName"

    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 629
    .local v0, "broadCastArray":Lorg/json/JSONArray;
    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 630
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 631
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 632
    .local v6, "jsonBroadCast":Lorg/json/JSONObject;
    const-string/jumbo v10, "Name"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
    const-string/jumbo v10, "Cnts"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 634
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 640
    .end local v0    # "broadCastArray":Lorg/json/JSONArray;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v6    # "jsonBroadCast":Lorg/json/JSONObject;
    .end local v7    # "jsonForApp":Lorg/json/JSONObject;
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    const-string/jumbo v10, "PowerKeeperPolicy"

    const-string/jumbo v12, "dumpBrdCastManageInfo"

    invoke-static {v10, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    monitor-exit v11

    .line 644
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "broadCastInfo:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    const-string/jumbo v10, "---------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    return-void

    .line 636
    .restart local v0    # "broadCastArray":Lorg/json/JSONArray;
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    .restart local v7    # "jsonForApp":Lorg/json/JSONObject;
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v9    # "pkgName":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string/jumbo v10, "broadcast"

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 621
    .end local v0    # "broadCastArray":Lorg/json/JSONArray;
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v7    # "jsonForApp":Lorg/json/JSONObject;
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method private getAppPushAlarmLeaderIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 609
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getClient(I)Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 855
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 856
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .line 857
    .local v2, "value":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    invoke-static {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->-get0(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 858
    return-object v2

    .line 861
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    .end local v2    # "value":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;
    .locals 2

    .prologue
    .line 160
    sget-object v1, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    if-nez v1, :cond_0

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 162
    .local v0, "cld":Ljava/lang/ClassLoader;
    new-instance v1, Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {v1, v0}, Lcom/miui/whetstone/PowerKeeperPolicy;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    .line 164
    :cond_0
    sget-object v1, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    return-object v1
.end method

.method private getPkgNameByUid(I)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 614
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "packagesForUid":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    return-object v3

    .line 616
    :cond_1
    aget-object v1, v0, v2

    return-object v1
.end method

.method private hasAlarmRestrict(II)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "type"    # I

    .prologue
    .line 322
    const/4 v2, 0x0

    .line 324
    .local v2, "ret":Z
    const/4 v0, 0x0

    .line 325
    .local v0, "alarmRestrictTypes":[I
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPolicyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 327
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "alarmRestrictTypes":[I
    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "alarmRestrictTypes":[I
    monitor-exit v4

    .line 330
    if-eqz v0, :cond_0

    .line 331
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 332
    aget v3, v0, v1

    if-ne v3, p2, :cond_1

    .line 333
    const/4 v2, 0x1

    .line 339
    .end local v1    # "i":I
    :cond_0
    return v2

    .line 325
    .end local v0    # "alarmRestrictTypes":[I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 331
    .restart local v0    # "alarmRestrictTypes":[I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private hasBroadcastRestrict(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 343
    const/4 v2, 0x0

    .line 345
    .local v2, "ret":Z
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPolicyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 347
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "broadcastRestrictTypes":[Ljava/lang/String;
    monitor-exit v4

    .line 350
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 351
    array-length v3, v0

    if-ne v3, v5, :cond_0

    const-string/jumbo v3, "a.jack.bc.1"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    return v5

    .line 345
    .end local v0    # "broadcastRestrictTypes":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 355
    .restart local v0    # "broadcastRestrictTypes":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 356
    aget-object v3, v0, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 358
    const/4 v2, 0x1

    .line 363
    .end local v1    # "i":I
    :cond_1
    return v2

    .line 355
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private hasRestrictedScaner()Z
    .locals 5

    .prologue
    .line 841
    const/4 v2, 0x0

    .line 842
    .local v2, "ret":Z
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 843
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 844
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 845
    const/4 v2, 0x1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    :cond_1
    monitor-exit v4

    .line 850
    return v2

    .line 842
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private onLeScanMessageHandler(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 743
    const/4 v4, 0x1

    .line 744
    .local v4, "ret":Z
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 805
    const/4 v4, 0x0

    .line 809
    :cond_0
    :goto_0
    return v4

    .line 746
    :pswitch_0
    iget-boolean v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    if-eqz v7, :cond_0

    .line 749
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 750
    .local v5, "uid":I
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-lez v7, :cond_4

    const/4 v6, 0x1

    .line 751
    .local v6, "uidAllow":Z
    :goto_1
    sget-boolean v7, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 752
    const-string/jumbo v7, "PowerKeeperPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leScan uid rule change, uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", allow = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_1
    const/4 v3, 0x0

    .line 755
    .local v3, "leScanAllowedBefore":Z
    const/4 v2, 0x0

    .line 756
    .local v2, "leScanAllowedAfter":Z
    if-eqz v6, :cond_6

    .line 758
    invoke-direct {p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->getClient(I)Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    move-result-object v0

    .line 759
    .local v0, "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    if-eqz v0, :cond_2

    .line 760
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v3

    .line 761
    .local v3, "leScanAllowedBefore":Z
    invoke-virtual {v0, v6}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->setAllowed(Z)V

    .line 762
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v2

    .line 765
    .end local v2    # "leScanAllowedAfter":Z
    .end local v3    # "leScanAllowedBefore":Z
    :cond_2
    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v7}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 768
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasRestrictedScaner()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v7}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 769
    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v7}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->stopParoleCheck()V

    goto :goto_0

    .line 750
    .end local v0    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    .end local v6    # "uidAllow":Z
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "uidAllow":Z
    goto :goto_1

    .line 766
    .restart local v0    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    :cond_5
    invoke-direct {p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->startLeScanLocked(I)V

    goto :goto_2

    .line 773
    .end local v0    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    .restart local v2    # "leScanAllowedAfter":Z
    .local v3, "leScanAllowedBefore":Z
    :cond_6
    invoke-direct {p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->getClient(I)Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    move-result-object v0

    .line 774
    .restart local v0    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    if-eqz v0, :cond_7

    .line 775
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v3

    .line 776
    .local v3, "leScanAllowedBefore":Z
    invoke-virtual {v0, v6}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->setAllowed(Z)V

    .line 777
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v2

    .line 780
    .end local v2    # "leScanAllowedAfter":Z
    .end local v3    # "leScanAllowedBefore":Z
    :cond_7
    if-eqz v3, :cond_8

    if-eqz v2, :cond_9

    .line 783
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasRestrictedScaner()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v7}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z

    move-result v7

    if-nez v7, :cond_0

    .line 784
    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v7}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V

    goto/16 :goto_0

    .line 780
    :cond_9
    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v7}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v7

    if-nez v7, :cond_8

    .line 781
    invoke-direct {p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanLocked(I)V

    goto :goto_3

    .line 790
    .end local v0    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    .end local v5    # "uid":I
    .end local v6    # "uidAllow":Z
    :pswitch_1
    iget-boolean v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    if-eqz v7, :cond_0

    .line 793
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-lez v7, :cond_b

    const/4 v1, 0x1

    .line 794
    .local v1, "inParole":Z
    :goto_4
    sget-boolean v7, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v7, :cond_a

    .line 795
    const-string/jumbo v7, "PowerKeeperPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leScan parole change, inParole = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_a
    if-eqz v1, :cond_c

    .line 798
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->startLeScanAllLocked()V

    goto/16 :goto_0

    .line 793
    .end local v1    # "inParole":Z
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "inParole":Z
    goto :goto_4

    .line 800
    :cond_c
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanAllLocked()V

    goto/16 :goto_0

    .line 744
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private restoreFakeGpsStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1409
    const-string/jumbo v0, "PowerKeeperPolicy"

    const-string/jumbo v1, "restore miui gps status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationPolicyManager;->setPhoneStationary(ZLandroid/location/Location;)V

    .line 1411
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/location/LocationPolicyManager;->setFakeGpsFeatureOnState(Z)V

    .line 1408
    return-void
.end method

.method private setLeScanAllowedLocked(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    .line 880
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 881
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-static {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->-get0(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 882
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v2, p2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->setAllowed(Z)V

    .line 883
    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PowerKeeperPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLeScanAllowedLocked: uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", allow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 879
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    :cond_1
    return-void
.end method

.method private startLeScanAllLocked()V
    .locals 4

    .prologue
    .line 895
    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PowerKeeperPolicy"

    const-string/jumbo v3, "startLeScanAllLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 897
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->startLeScan()V

    goto :goto_0

    .line 894
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    :cond_1
    return-void
.end method

.method private startLeScanLocked(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 902
    sget-boolean v3, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startLeScanLocked uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 905
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .line 906
    .local v2, "value":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    invoke-static {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->-get0(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 907
    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->startLeScan()V

    .line 901
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    .end local v2    # "value":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    :cond_2
    return-void
.end method

.method private stopLeScanAllLocked()V
    .locals 4

    .prologue
    .line 915
    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PowerKeeperPolicy"

    const-string/jumbo v3, "stopLeScanAllLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 917
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->stopLeScan()V

    goto :goto_0

    .line 914
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    :cond_1
    return-void
.end method

.method private stopLeScanLocked(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 923
    sget-boolean v3, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopLeScanLocked uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 926
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .line 927
    .local v2, "value":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    invoke-static {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->-get0(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 928
    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->stopLeScan()V

    .line 922
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    .end local v2    # "value":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    :cond_2
    return-void
.end method


# virtual methods
.method public bleScanInit()V
    .locals 5

    .prologue
    .line 726
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 727
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "PowerKeeperPolicy"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 728
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 729
    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$3;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/PowerKeeperPolicy$3;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 736
    .local v0, "callback":Landroid/os/Handler$Callback;
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanHandler:Landroid/os/Handler;

    .line 737
    new-instance v2, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanHandler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    invoke-direct {v2, p0, v3, v4}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Handler;I)V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    .line 738
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocationPolicyListener:Landroid/location/ILocationPolicyListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationPolicyManager;->registerListener(Landroid/location/ILocationPolicyListener;)V

    .line 725
    .end local v0    # "callback":Landroid/os/Handler$Callback;
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 648
    const-string/jumbo v9, "\nDump of PowerKeeperPolicy:\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    const/4 v9, 0x0

    move-object/from16 v0, p3

    array-length v10, v0

    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v1, p3, v9

    .line 650
    .local v1, "arg":Ljava/lang/String;
    const-string/jumbo v11, "broadCastInfo"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 651
    invoke-direct/range {p0 .. p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->dumpBrdCastManageInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 652
    return-void

    .line 649
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 656
    .end local v1    # "arg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, "====mAlarmRestricts:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 658
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    const/4 v10, 0x0

    array-length v11, v9

    :goto_2
    if-ge v10, v11, :cond_2

    aget v5, v9, v10

    .line 660
    .local v5, "item":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAlarmName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 662
    .end local v5    # "item":I
    :cond_2
    const-string/jumbo v9, "\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 665
    :cond_3
    const-string/jumbo v9, "\n====mBroadcastRestricts:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    const/4 v4, 0x0

    :goto_3
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 667
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "------["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    array-length v11, v9

    :goto_4
    if-ge v10, v11, :cond_4

    aget-object v6, v9, v10

    .line 669
    .local v6, "item":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "----------"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 666
    .end local v6    # "item":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 673
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\n====Total block alarm "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " times"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    const/4 v4, 0x0

    :goto_5
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 675
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 676
    .local v7, "key":I
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 677
    .local v8, "times":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAlarmTypeData["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v7}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAlarmName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 679
    .end local v7    # "key":I
    .end local v8    # "times":I
    :cond_6
    const/4 v4, 0x0

    :goto_6
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_7

    .line 680
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 681
    .restart local v7    # "key":I
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 682
    .restart local v8    # "times":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAlarmUidData["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 685
    .end local v7    # "key":I
    .end local v8    # "times":I
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\n====Total block broadcast "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " times"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 688
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mBroadcastTypeData["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 690
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_8
    const/4 v4, 0x0

    :goto_8
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_9

    .line 691
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 692
    .restart local v7    # "key":I
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 693
    .restart local v8    # "times":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mBroadcastUidData["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 696
    .end local v7    # "key":I
    .end local v8    # "times":I
    :cond_9
    const-string/jumbo v9, "\n====mBlockedWakelocks====\n\t"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    const/4 v4, 0x0

    :goto_9
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_b

    .line 698
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 699
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 700
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " tags:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 702
    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_a

    .line 705
    :cond_b
    const-string/jumbo v9, "\n====mUidBroadcastStat====\n\t"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    monitor-enter v10

    .line 707
    const/4 v4, 0x0

    :goto_b
    :try_start_0
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_c

    .line 708
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " uid:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " policy = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_c
    monitor-exit v10

    .line 711
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\n====AppBGIdleFeatureIs===="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBGIdleFeatureEnable()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    return-void

    .line 706
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public getAlarmName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 419
    packed-switch p1, :pswitch_data_0

    .line 429
    const/4 v0, 0x0

    return-object v0

    .line 421
    :pswitch_0
    const-string/jumbo v0, "RTC_WAKEUP"

    return-object v0

    .line 423
    :pswitch_1
    const-string/jumbo v0, "RTC"

    return-object v0

    .line 425
    :pswitch_2
    const-string/jumbo v0, "ELAPSED_REALTIME_WAKEUP"

    return-object v0

    .line 427
    :pswitch_3
    const-string/jumbo v0, "ELAPSED_REALTIME"

    return-object v0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAlarmPolicies()[Lcom/miui/whetstone/AlarmPolicy;
    .locals 5

    .prologue
    .line 260
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v1, v2, [Lcom/miui/whetstone/AlarmPolicy;

    .line 261
    .local v1, "policies":[Lcom/miui/whetstone/AlarmPolicy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 262
    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    .line 263
    aget-object v3, v1, v0

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    aget-object v4, v1, v0

    iget v4, v4, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v3, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return-object v1
.end method

.method public getAppBGIdleFeatureEnable()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleFeatureStatus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getAppBGIdleLevel(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAppBroadcastControlStat(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 314
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAppPushAlarmFunc(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 586
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    .line 587
    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "result":Z
    monitor-exit v2

    .line 588
    return v0

    .line 586
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getAppPushAlarmLeaderUid()I
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_0
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 603
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getAppPushAlarmProperty(I)Landroid/content/Intent;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 580
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBroadcastPolicies()[Lcom/miui/whetstone/BroadcastPolicy;
    .locals 5

    .prologue
    .line 294
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v1, v2, [Lcom/miui/whetstone/BroadcastPolicy;

    .line 295
    .local v1, "policies":[Lcom/miui/whetstone/BroadcastPolicy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 296
    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 295
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    .line 298
    aget-object v3, v1, v0

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v4, v1, v0

    iget v4, v4, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v3, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    goto :goto_1

    .line 301
    :cond_1
    return-object v1
.end method

.method public getOomAdjByPid(Landroid/content/Context;I)I
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .prologue
    .line 206
    const/4 v8, 0x0

    .line 207
    .local v8, "oom_adj":Ljava/lang/String;
    const/4 v4, 0x0

    .line 208
    .local v4, "is":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 209
    .local v6, "isr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 211
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 212
    const-string/jumbo v11, "/oom_adj"

    .line 211
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    .local v7, "isr":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 215
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    move-result-object v8

    .line 219
    .local v8, "oom_adj":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 220
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 221
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_2
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .local v6, "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 223
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "oom_adj":Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v8, :cond_9

    .line 224
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    return v9

    .line 219
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "oom_adj":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 220
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 221
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 216
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .local v6, "isr":Ljava/io/InputStreamReader;
    .local v8, "oom_adj":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 217
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string/jumbo v9, "PowerKeeperPolicy"

    const-string/jumbo v10, "getOomAdjByPid"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 219
    if-eqz v0, :cond_4

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 220
    :cond_4
    :goto_5
    if-eqz v6, :cond_5

    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 221
    :cond_5
    :goto_6
    if-eqz v4, :cond_3

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 219
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 220
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 218
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 219
    :goto_7
    if-eqz v0, :cond_6

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 220
    :cond_6
    :goto_8
    if-eqz v6, :cond_7

    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 221
    :cond_7
    :goto_9
    if-eqz v4, :cond_8

    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 218
    :cond_8
    :goto_a
    throw v9

    .line 219
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 220
    .end local v2    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 221
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 226
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "oom_adj":Ljava/lang/String;
    :cond_9
    const/16 v9, -0x64

    return v9

    .line 218
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "oom_adj":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .local v6, "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_7

    .line 216
    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .local v6, "isr":Ljava/io/InputStreamReader;
    :catch_a
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .local v6, "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public getPackageNameByPid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .prologue
    .line 168
    const/4 v11, 0x0

    .line 169
    .local v11, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 170
    .local v6, "is":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 171
    .local v8, "isr":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 173
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "/proc/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 174
    const-string/jumbo v16, "/cmdline"

    .line 173
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v6    # "is":Ljava/io/FileInputStream;
    .local v7, "is":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    .local v9, "isr":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    .end local v8    # "isr":Ljava/io/InputStreamReader;
    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 177
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v1    # "br":Ljava/io/BufferedReader;
    move-result-object v11

    .line 178
    .local v11, "packageName":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 179
    const/4 v14, 0x0

    const/16 v15, 0x20

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v11

    .line 184
    :cond_0
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 185
    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 186
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_2
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .local v8, "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .line 188
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "is":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_4
    :goto_3
    if-nez v11, :cond_6

    .line 189
    const-string/jumbo v14, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 190
    .local v10, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "processInfo$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 191
    .local v12, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v14, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v0, p2

    if-ne v14, v0, :cond_5

    .line 192
    iget-object v11, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 197
    .end local v10    # "manager":Landroid/app/ActivityManager;
    .end local v12    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v13    # "processInfo$iterator":Ljava/util/Iterator;
    :cond_6
    if-eqz v11, :cond_7

    .line 198
    const-string/jumbo v14, ":"

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 199
    .local v5, "index":I
    if-lez v5, :cond_7

    .line 200
    const/4 v14, 0x0

    invoke-virtual {v11, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 203
    .end local v5    # "index":I
    :cond_7
    return-object v11

    .line 184
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v11    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_0

    .line 185
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 186
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 181
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "is":Ljava/io/FileInputStream;
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .local v1, "br":Ljava/io/BufferedReader;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    .local v8, "isr":Ljava/io/InputStreamReader;
    .local v11, "packageName":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 182
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v11    # "packageName":Ljava/lang/String;
    .local v4, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string/jumbo v14, "PowerKeeperPolicy"

    const-string/jumbo v15, "getPackageNameByPid"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 184
    if-eqz v1, :cond_8

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 185
    :cond_8
    :goto_5
    if-eqz v8, :cond_9

    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 186
    :cond_9
    :goto_6
    if-eqz v6, :cond_4

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 184
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 185
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 183
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 184
    :goto_7
    if-eqz v1, :cond_a

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 185
    :cond_a
    :goto_8
    if-eqz v8, :cond_b

    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 186
    :cond_b
    :goto_9
    if-eqz v6, :cond_c

    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 183
    :cond_c
    :goto_a
    throw v14

    .line 184
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 185
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 186
    .end local v3    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 183
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v11    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .local v6, "is":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v14

    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .local v8, "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v11    # "packageName":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v14

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_7

    .line 181
    .end local v6    # "is":Ljava/io/FileInputStream;
    .local v1, "br":Ljava/io/BufferedReader;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .local v8, "isr":Ljava/io/InputStreamReader;
    .restart local v11    # "packageName":Ljava/lang/String;
    :catch_a
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .local v8, "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v11    # "packageName":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public isAlarmAllowedLocked(III)Z
    .locals 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 367
    const/4 v0, 0x1

    .line 369
    .local v0, "alarmAllowed":Z
    if-ltz p3, :cond_0

    const/4 v2, 0x3

    if-le p3, v2, :cond_1

    .line 370
    :cond_0
    return v0

    .line 372
    :cond_1
    const/16 v2, -0xa

    invoke-direct {p0, v2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasAlarmRestrict(II)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasAlarmRestrict(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    :cond_2
    const/4 v0, 0x0

    .line 374
    const-string/jumbo v2, "PowerKeeperPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAlarmAllowedLocked, uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", return :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_3
    if-nez v0, :cond_4

    .line 379
    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    .line 380
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 381
    .local v1, "count":I
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, p3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 382
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 383
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 386
    .end local v1    # "count":I
    :cond_4
    return v0
.end method

.method public isBroadcastAllowedLocked(IILjava/lang/String;)Z
    .locals 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 390
    const/4 v1, 0x1

    .line 391
    .local v1, "broadcastAllowed":Z
    if-nez p3, :cond_0

    return v1

    .line 392
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBroadcastControlStat(I)Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    .line 393
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasBroadcastRestrict(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 394
    const/4 v1, 0x0

    .line 395
    const-string/jumbo v4, "PowerKeeperPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBroadcastAllowedLocked, uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_2
    if-nez v1, :cond_6

    .line 399
    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    .line 400
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 401
    .local v3, "count":Ljava/lang/Integer;
    if-nez v3, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 402
    :cond_3
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 404
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, p2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 406
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 407
    .local v0, "brdCastTypeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_4

    .line 408
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "brdCastTypeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 409
    .restart local v0    # "brdCastTypeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    :cond_4
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 412
    .local v2, "cnt":Ljava/lang/Integer;
    if-nez v2, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 413
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .end local v0    # "brdCastTypeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "cnt":Ljava/lang/Integer;
    .end local v3    # "count":Ljava/lang/Integer;
    :cond_6
    return v1
.end method

.method public isLeScanAllowed(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x1

    .line 977
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 978
    return v5

    .line 980
    :cond_0
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v3

    .line 981
    const/4 v0, 0x1

    .line 983
    .local v0, "allow":Z
    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v2, p1, v4}, Landroid/location/LocationPolicyManager;->isAllowedByLocationPolicy(Landroid/content/Context;II)Z

    move-result v0

    .line 984
    .local v0, "allow":Z
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    .end local v0    # "allow":Z
    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit v3

    .line 990
    return v5

    .line 985
    :catch_0
    move-exception v1

    .line 986
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 987
    .local v0, "allow":Z
    :try_start_2
    const-string/jumbo v2, "PowerKeeperPolicy"

    const-string/jumbo v4, "isLeScanAllowed"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 980
    .end local v0    # "allow":Z
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 992
    :cond_1
    if-nez v0, :cond_2

    :try_start_3
    invoke-direct {p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 993
    const/4 v0, 0x1

    .line 995
    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanParoleLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 996
    const/4 v0, 0x1

    .line 998
    :cond_3
    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isLeScanAllowed: uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", allow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_4
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 1000
    return v0
.end method

.method public isWakelockDisabledByPolicy(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "disabled":Z
    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 510
    :try_start_0
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_1

    .line 512
    const/4 v0, 0x1

    .line 513
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 514
    .local v5, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    .line 515
    const/4 v0, 0x0

    .line 516
    if-eqz p1, :cond_1

    .line 517
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 519
    .local v1, "item":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 520
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 521
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 522
    const/4 v0, 0x1

    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "item$iterator":Ljava/util/Iterator;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    .end local v5    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v7

    .line 530
    return v0

    .line 509
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public notifyFrozenAppWakeUpByHighPriorityAlarm(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 534
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v1, :cond_0

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    invoke-interface {v1, p1}, Lcom/miui/whetstone/IPowerKeeperClient;->notifyFrozenAppWakeUpByHighPriorityAlarm(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PowerKeeperPolicy"

    const-string/jumbo v2, "notifyFrozenAppWakeUpByBroacastReceive failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public offerPowerKeeperIBinder(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "b"    # Landroid/os/IBinder;

    .prologue
    .line 555
    invoke-static {p1}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPowerKeeperClient;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    .line 558
    :try_start_0
    new-instance v1, Lcom/miui/whetstone/PowerKeeperPolicy$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$2;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/IBinder;)V

    .line 566
    const/4 v2, 0x0

    .line 558
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PowerKeeperPolicy"

    const-string/jumbo v2, "offerPowerKeeperIBinder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public perfThermalBreakAcquire(I)V
    .locals 3
    .param p1, "boostTimeOut"    # I

    .prologue
    .line 544
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v1, :cond_0

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    invoke-interface {v1, p1}, Lcom/miui/whetstone/IPowerKeeperClient;->perfThermalBreakAcquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PowerKeeperPolicy"

    const-string/jumbo v2, "perfThermalBreakAcquire failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAlarmPolicy([Lcom/miui/whetstone/AlarmPolicy;Z)V
    .locals 5
    .param p1, "policies"    # [Lcom/miui/whetstone/AlarmPolicy;
    .param p2, "clear"    # Z

    .prologue
    .line 242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 243
    .local v0, "callerUid":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    return-void

    .line 245
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 246
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 248
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_6

    .line 249
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    if-eqz v2, :cond_3

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    array-length v2, v2

    if-nez v2, :cond_5

    .line 250
    :cond_3
    if-nez p2, :cond_4

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 248
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_5
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 239
    :cond_6
    return-void
.end method

.method public setAppBGIdleFeatureEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 104
    :try_start_0
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleFeatureStatus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setAppBGIdleLevel(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "level"    # I

    .prologue
    .line 115
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-le p2, v0, :cond_1

    .line 116
    :cond_0
    return-void

    :cond_1
    if-ltz p2, :cond_0

    .line 117
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 114
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAppBroadcastControlStat(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    .line 306
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    .line 307
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    .line 308
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 305
    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAppPushAlarmLeader(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 594
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_0
    iput p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderUid:I

    .line 596
    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;

    .line 597
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 598
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 593
    return-void

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAppPushAlarmProperty(ILandroid/content/Intent;Z)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isEnable"    # Z

    .prologue
    .line 573
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 575
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 572
    return-void

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setBroadcastPolicy([Lcom/miui/whetstone/BroadcastPolicy;Z)V
    .locals 5
    .param p1, "policies"    # [Lcom/miui/whetstone/BroadcastPolicy;
    .param p2, "clear"    # Z

    .prologue
    .line 275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 276
    .local v0, "callerUid":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    return-void

    .line 278
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 279
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 281
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_7

    .line 282
    aget-object v2, p1, v1

    if-nez v2, :cond_4

    .line 281
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_4
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    if-eqz v2, :cond_5

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_6

    .line 284
    :cond_5
    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_1

    .line 287
    :cond_6
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 272
    :cond_7
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 231
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    .line 232
    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->bleScanInit()V

    .line 229
    :cond_0
    return-void
.end method

.method public setLeScanFeature(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 936
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 937
    return-void

    .line 939
    :cond_0
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 940
    :try_start_0
    iget-boolean v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_1

    monitor-exit v4

    .line 941
    return-void

    .line 943
    :cond_1
    :try_start_1
    sget-boolean v3, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "PowerKeeperPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setLeScanFeature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_2
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    .line 945
    if-eqz p1, :cond_3

    .line 946
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 935
    return-void

    .line 948
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->stopParoleCheck()V

    .line 949
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 950
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 951
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .line 952
    .local v0, "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->startLeScan()V

    .line 953
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->unlinkToDeath()V

    .line 954
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->clearResource()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 939
    .end local v0    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BleScanWrapper;Lcom/miui/whetstone/PowerKeeperPolicy$Client;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 956
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 957
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setLeScanParam(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 964
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 965
    return-void

    .line 967
    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 968
    :try_start_0
    const-string/jumbo v1, "parolePeriodArray"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 969
    const-string/jumbo v1, "parolePeriodArray"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 970
    .local v0, "parolePeriodArray":[J
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v1, v0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->setParoleCheckParam([J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "parolePeriodArray":[J
    :cond_1
    monitor-exit v2

    .line 963
    return-void

    .line 967
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public startLeScan(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1006
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v8, :cond_0

    .line 1007
    return-void

    .line 1009
    :cond_0
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v10, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const-string/jumbo v8, "BleScanWrapper"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BleScanWrapper;

    .line 1011
    .local v2, "bleScanWrapper":Landroid/bluetooth/BleScanWrapper;
    const-string/jumbo v8, "IBinder"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1012
    .local v1, "b":Landroid/os/IBinder;
    const-string/jumbo v8, "uid"

    invoke-virtual {p1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1013
    .local v7, "uid":I
    sget-boolean v8, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "PowerKeeperPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startLeScan: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_1
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1015
    :try_start_0
    iget-boolean v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_2

    monitor-exit v9

    .line 1016
    return-void

    .line 1018
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v8, v7, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1019
    .local v0, "allowed":Z
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v8, v7, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    .line 1020
    .local v6, "scanning":Z
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .line 1021
    .local v3, "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    const/4 v5, 0x0

    .line 1022
    .local v5, "leScanAllowedBefore":Z
    if-eqz v3, :cond_3

    .line 1023
    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v5

    .line 1024
    .local v5, "leScanAllowedBefore":Z
    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->unlinkToDeath()V

    .line 1025
    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->clearResource()V

    .line 1026
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .end local v5    # "leScanAllowedBefore":Z
    :cond_3
    new-instance v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .end local v3    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    invoke-direct {v3, p0, v2, v1, v7}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;Landroid/os/IBinder;I)V

    .line 1029
    .restart local v3    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    invoke-virtual {v3, v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->setAllowed(Z)V

    .line 1030
    invoke-virtual {v3, v6}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->setScanning(Z)V

    .line 1031
    new-instance v8, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;

    invoke-direct {v8, p0, v2, v7}, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;I)V

    invoke-virtual {v3, v8}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1032
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    move v4, v0

    .line 1034
    .local v4, "leScanAllowedAfter":Z
    if-nez v5, :cond_4

    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v8}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1037
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasRestrictedScaner()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v8}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1038
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v8}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->stopParoleCheck()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v9

    .line 1005
    return-void

    .line 1035
    :cond_6
    :try_start_2
    invoke-direct {p0, v7}, Lcom/miui/whetstone/PowerKeeperPolicy;->startLeScanLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1014
    .end local v0    # "allowed":Z
    .end local v3    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    .end local v4    # "leScanAllowedAfter":Z
    .end local v6    # "scanning":Z
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public stopLeScan(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1045
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 1046
    return-void

    .line 1048
    :cond_0
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v8, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string/jumbo v6, "BleScanWrapper"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BleScanWrapper;

    .line 1050
    .local v1, "bleScanWrapper":Landroid/bluetooth/BleScanWrapper;
    const-string/jumbo v6, "IBinder"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1051
    .local v0, "b":Landroid/os/IBinder;
    const-string/jumbo v6, "uid"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1052
    .local v5, "uid":I
    sget-boolean v6, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "PowerKeeperPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopLeScan: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_1
    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1054
    :try_start_0
    iget-boolean v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    monitor-exit v7

    .line 1055
    return-void

    .line 1057
    :cond_2
    const/4 v4, 0x0

    .line 1058
    .local v4, "leScanAllowedBefore":Z
    :try_start_1
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    .line 1059
    .local v2, "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    if-eqz v2, :cond_3

    .line 1060
    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v4

    .line 1061
    .local v4, "leScanAllowedBefore":Z
    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->unlinkToDeath()V

    .line 1062
    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->clearResource()V

    .line 1063
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    .end local v4    # "leScanAllowedBefore":Z
    :cond_3
    const/4 v3, 0x0

    .line 1066
    .local v3, "leScanAllowedAfter":Z
    if-eqz v4, :cond_4

    if-eqz v3, :cond_6

    .line 1069
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasRestrictedScaner()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v6}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_7

    :cond_5
    :goto_1
    monitor-exit v7

    .line 1044
    return-void

    .line 1066
    :cond_6
    :try_start_2
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v6}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1067
    invoke-direct {p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1053
    .end local v2    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    .end local v3    # "leScanAllowedAfter":Z
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1070
    .restart local v2    # "client":Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    .restart local v3    # "leScanAllowedAfter":Z
    :cond_7
    :try_start_3
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v6}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public updateWakelockBlockedUid(ILjava/lang/String;Z)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "isBlocked"    # Z

    .prologue
    .line 436
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 437
    .local v0, "callingUid":I
    const-string/jumbo v6, "PowerKeeperPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Caller["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] updateWakelockBlockedUid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 438
    const-string/jumbo v8, "uid="

    .line 437
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 438
    const-string/jumbo v8, ", tag="

    .line 437
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 438
    const-string/jumbo v8, ", block="

    .line 437
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/16 v6, 0x3e8

    if-eq v0, v6, :cond_0

    .line 441
    return-void

    .line 444
    :cond_0
    const/4 v1, 0x0

    .line 445
    .local v1, "changed":Z
    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 446
    :try_start_0
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_8

    .line 447
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 449
    .local v4, "otags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_4

    .line 450
    if-nez p2, :cond_3

    if-eqz v4, :cond_3

    .line 452
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    const/4 v1, 0x1

    .end local v4    # "otags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    monitor-exit v7

    .line 496
    if-eqz v1, :cond_2

    .line 498
    :try_start_1
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->setUidWakeLockDisabledState:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPowerManagerServiceInjector:Ljava/lang/Class;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 435
    :cond_2
    :goto_1
    return-void

    .line 454
    .restart local v4    # "otags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    if-eqz p2, :cond_1

    if-eqz v4, :cond_1

    .line 455
    :try_start_2
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 456
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    const/4 v1, 0x1

    goto :goto_0

    .line 465
    :cond_4
    if-nez p2, :cond_5

    .line 467
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 468
    const/4 v1, 0x1

    goto :goto_0

    .line 469
    :cond_5
    if-eqz v4, :cond_7

    .line 470
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 471
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 472
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 473
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 475
    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 478
    :cond_7
    const-string/jumbo v6, "PowerKeeperPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cannot unblock the wakelock["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] for uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 479
    const-string/jumbo v9, ", please unblock all the wakelock with a null tag"

    .line 478
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 445
    .end local v4    # "otags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 483
    :cond_8
    if-eqz p3, :cond_1

    .line 484
    const/4 v1, 0x1

    .line 485
    const/4 v5, 0x0

    .line 486
    .local v5, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_9

    .line 487
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v5, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v5    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 501
    :catch_0
    move-exception v2

    .line 502
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "PowerKeeperPolicy"

    const-string/jumbo v7, "updateWakelockBlockedUid"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 499
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 500
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v6, "PowerKeeperPolicy"

    const-string/jumbo v7, "updateWakelockBlockedUid"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method
