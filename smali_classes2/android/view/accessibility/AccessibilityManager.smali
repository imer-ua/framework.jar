.class public final Landroid/view/accessibility/AccessibilityManager;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityManager$1;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$MyHandler;,
        Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    }
.end annotation


# static fields
.field public static final AUTOCLICK_DELAY_DEFAULT:I = 0x258

.field public static final DALTONIZER_CORRECT_DEUTERANOMALY:I = 0xc

.field public static final DALTONIZER_DISABLED:I = -0x1

.field public static final DALTONIZER_SIMULATE_MONOCHROMACY:I = 0x0

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManager"

.field public static final STATE_FLAG_ACCESSIBILITY_ENABLED:I = 0x1

.field public static final STATE_FLAG_BOUND_SERVICES_CHANGED:I = 0x8

.field public static final STATE_FLAG_HIGH_TEXT_CONTRAST_ENABLED:I = 0x4

.field public static final STATE_FLAG_TOUCH_EXPLORATION_ENABLED:I = 0x2

.field public static final STATE_FLAG_UIAUTOMATION_ENABLED:I = 0x10

.field private static sInstance:Landroid/view/accessibility/AccessibilityManager;

.field static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field private final mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

.field private final mCurrentBoundServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field private final mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mIsEnabled:Z

.field mIsFinalEnabled:Z

.field mIsHighTextContrastEnabled:Z

.field mIsInterestedPackage:Z

.field mIsTouchExplorationEnabled:Z

.field mIsUiAutomationEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field mOptimizeEnabled:Z

.field final mPackageName:Ljava/lang/String;

.field private mService:Landroid/view/accessibility/IAccessibilityManager;

.field private final mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method static synthetic -get0(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyAccessibilityStateChanged()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyHighTextContrastStateChanged()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyTouchExplorationStateChanged()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/view/accessibility/AccessibilityManager;I)V
    .locals 0
    .param p1, "stateFlags"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/accessibility/IAccessibilityManager;
    .param p3, "userId"    # I

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 135
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 138
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCurrentBoundServices:Ljava/util/List;

    .line 197
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    .line 196
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 247
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyHandler;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 248
    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mPackageName:Ljava/lang/String;

    .line 251
    const-string/jumbo v0, "persist.sys.opt_accessibility"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mOptimizeEnabled:Z

    .line 253
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 246
    return-void

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    sget-object v2, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v2

    .line 218
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_1

    .line 220
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    .line 222
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 221
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 227
    :cond_0
    const/4 v0, -0x2

    .line 231
    .local v0, "userId":I
    :goto_0
    new-instance v1, Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v0}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    sput-object v1, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "userId":I
    :cond_1
    monitor-exit v2

    .line 234
    sget-object v1, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    return-object v1

    .line 225
    :cond_2
    :try_start_1
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 224
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0    # "userId":I
    goto :goto_0

    .line 217
    .end local v0    # "userId":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 762
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v0, :cond_0

    .line 763
    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    .line 765
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    return-object v0
.end method

.method private handleNotifyAccessibilityStateChanged()V
    .locals 5

    .prologue
    .line 793
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 794
    :try_start_0
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isEnabled":Z
    monitor-exit v3

    .line 797
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 798
    .local v1, "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    invoke-interface {v1, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    goto :goto_0

    .line 793
    .end local v0    # "isEnabled":Z
    .end local v1    # "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 791
    .restart local v0    # "isEnabled":Z
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private handleNotifyHighTextContrastStateChanged()V
    .locals 5

    .prologue
    .line 821
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 822
    :try_start_0
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isHighTextContrastEnabled":Z
    monitor-exit v3

    .line 825
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .line 826
    .local v1, "listener":Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    invoke-interface {v1, v0}, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;->onHighTextContrastStateChanged(Z)V

    goto :goto_0

    .line 821
    .end local v0    # "isHighTextContrastEnabled":Z
    .end local v1    # "listener":Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 819
    .restart local v0    # "isHighTextContrastEnabled":Z
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private handleNotifyTouchExplorationStateChanged()V
    .locals 5

    .prologue
    .line 807
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 808
    :try_start_0
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isTouchExplorationEnabled":Z
    monitor-exit v3

    .line 811
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 812
    .local v1, "listener":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    invoke-interface {v1, v0}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    goto :goto_0

    .line 807
    .end local v0    # "isTouchExplorationEnabled":Z
    .end local v1    # "listener":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 805
    .restart local v0    # "isTouchExplorationEnabled":Z
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private isInterestedPackageLocked()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 273
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    const-string/jumbo v4, "AccessibilityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the process is system, current packagename="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/view/accessibility/AccessibilityManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return v8

    .line 277
    :cond_0
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mCurrentBoundServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "boundService$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 278
    .local v0, "boundService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v2, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 279
    .local v2, "packageNames":[Ljava/lang/String;
    if-nez v2, :cond_2

    .line 280
    return v8

    .line 282
    :cond_2
    array-length v6, v2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v2, v4

    .line 283
    .local v3, "pkg":Ljava/lang/String;
    iget-object v7, p0, Landroid/view/accessibility/AccessibilityManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 284
    return v8

    .line 282
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "boundService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v2    # "packageNames":[Ljava/lang/String;
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_4
    return v5
.end method

.method private setStateLocked(I)V
    .locals 1
    .param p1, "stateFlags"    # I

    .prologue
    .line 649
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(IZ)V

    .line 648
    return-void
.end method

.method private setStateLocked(IZ)V
    .locals 13
    .param p1, "stateFlags"    # I
    .param p2, "addClient"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 658
    and-int/lit8 v11, p1, 0x1

    if-eqz v11, :cond_7

    const/4 v1, 0x1

    .line 660
    .local v1, "enabled":Z
    :goto_0
    and-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_8

    const/4 v4, 0x1

    .line 662
    .local v4, "touchExplorationEnabled":Z
    :goto_1
    and-int/lit8 v11, p1, 0x4

    if-eqz v11, :cond_9

    const/4 v2, 0x1

    .line 666
    .local v2, "highTextContrastEnabled":Z
    :goto_2
    and-int/lit8 v11, p1, 0x8

    if-eqz v11, :cond_a

    const/4 v0, 0x1

    .line 668
    .local v0, "boundServicesChanged":Z
    :goto_3
    and-int/lit8 v11, p1, 0x10

    if-eqz v11, :cond_b

    const/4 v5, 0x1

    .line 671
    .local v5, "uiAutomationEnabled":Z
    :goto_4
    iget-boolean v6, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 672
    .local v6, "wasEnabled":Z
    iget-boolean v8, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 673
    .local v8, "wasTouchExplorationEnabled":Z
    iget-boolean v7, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 676
    .local v7, "wasHighTextContrastEnabled":Z
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 677
    iput-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 678
    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 680
    iput-boolean v5, p0, Landroid/view/accessibility/AccessibilityManager;->mIsUiAutomationEnabled:Z

    .line 682
    if-eq v6, v1, :cond_0

    .line 683
    iget-object v11, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 686
    :cond_0
    if-eq v8, v4, :cond_1

    .line 687
    iget-object v11, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 690
    :cond_1
    if-eq v7, v2, :cond_2

    .line 691
    iget-object v11, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 695
    :cond_2
    iget-boolean v11, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-eqz v11, :cond_5

    if-nez v0, :cond_3

    if-eqz p2, :cond_5

    .line 697
    :cond_3
    const/4 v11, -0x1

    invoke-virtual {p0, v11}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3

    .line 698
    .local v3, "tmpServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    iget-object v11, p0, Landroid/view/accessibility/AccessibilityManager;->mCurrentBoundServices:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 699
    if-eqz v3, :cond_4

    .line 700
    iget-object v11, p0, Landroid/view/accessibility/AccessibilityManager;->mCurrentBoundServices:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 702
    :cond_4
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->isInterestedPackageLocked()Z

    move-result v11

    iput-boolean v11, p0, Landroid/view/accessibility/AccessibilityManager;->mIsInterestedPackage:Z

    .line 704
    .end local v3    # "tmpServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_5
    iget-boolean v11, p0, Landroid/view/accessibility/AccessibilityManager;->mOptimizeEnabled:Z

    if-eqz v11, :cond_d

    .line 705
    iget-boolean v11, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-eqz v11, :cond_c

    iget-boolean v10, p0, Landroid/view/accessibility/AccessibilityManager;->mIsUiAutomationEnabled:Z

    if-nez v10, :cond_6

    iget-boolean v9, p0, Landroid/view/accessibility/AccessibilityManager;->mIsInterestedPackage:Z

    .line 704
    :cond_6
    :goto_5
    iput-boolean v9, p0, Landroid/view/accessibility/AccessibilityManager;->mIsFinalEnabled:Z

    .line 706
    const-string/jumbo v9, "AccessibilityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "current package="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/view/accessibility/AccessibilityManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 707
    const-string/jumbo v11, ", accessibility manager mIsFinalEnabled="

    .line 706
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 707
    iget-boolean v11, p0, Landroid/view/accessibility/AccessibilityManager;->mIsFinalEnabled:Z

    .line 706
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 708
    const-string/jumbo v11, ", mOptimizeEnabled="

    .line 706
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 708
    iget-boolean v11, p0, Landroid/view/accessibility/AccessibilityManager;->mOptimizeEnabled:Z

    .line 706
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 709
    const-string/jumbo v11, ", mIsUiAutomationEnabled="

    .line 706
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 709
    iget-boolean v11, p0, Landroid/view/accessibility/AccessibilityManager;->mIsUiAutomationEnabled:Z

    .line 706
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 710
    const-string/jumbo v11, ", mIsInterestedPackage="

    .line 706
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 710
    iget-boolean v11, p0, Landroid/view/accessibility/AccessibilityManager;->mIsInterestedPackage:Z

    .line 706
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-void

    .line 658
    .end local v0    # "boundServicesChanged":Z
    .end local v1    # "enabled":Z
    .end local v2    # "highTextContrastEnabled":Z
    .end local v4    # "touchExplorationEnabled":Z
    .end local v5    # "uiAutomationEnabled":Z
    .end local v6    # "wasEnabled":Z
    .end local v7    # "wasHighTextContrastEnabled":Z
    .end local v8    # "wasTouchExplorationEnabled":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto/16 :goto_0

    .line 660
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "touchExplorationEnabled":Z
    goto/16 :goto_1

    .line 662
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "highTextContrastEnabled":Z
    goto/16 :goto_2

    .line 666
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "boundServicesChanged":Z
    goto/16 :goto_3

    .line 668
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "uiAutomationEnabled":Z
    goto/16 :goto_4

    .restart local v6    # "wasEnabled":Z
    .restart local v7    # "wasHighTextContrastEnabled":Z
    .restart local v8    # "wasTouchExplorationEnabled":Z
    :cond_c
    move v9, v10

    .line 705
    goto :goto_5

    :cond_d
    iget-boolean v9, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    goto :goto_5
.end method

.method private tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V
    .locals 5
    .param p1, "service"    # Landroid/view/accessibility/IAccessibilityManager;

    .prologue
    .line 769
    if-nez p1, :cond_1

    .line 770
    const-string/jumbo v3, "accessibility"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 771
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 772
    return-void

    .line 774
    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object p1

    .line 778
    .end local v0    # "iBinder":Landroid/os/IBinder;
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {p1, v3, v4}, Landroid/view/accessibility/IAccessibilityManager;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I

    move-result v2

    .line 779
    .local v2, "stateFlags":I
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    .line 782
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v2    # "stateFlags":I
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v1

    .line 784
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "AccessibilityManager"

    const-string/jumbo v4, "AccessibilityManagerService is dead"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .locals 6
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .prologue
    const/4 v5, -0x1

    .line 725
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 726
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 727
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    monitor-exit v4

    .line 728
    return v5

    .line 730
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "userId":I
    monitor-exit v4

    .line 733
    :try_start_2
    invoke-interface {v1, p1, p2, v2}, Landroid/view/accessibility/IAccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    return v3

    .line 725
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 734
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "userId":I
    :catch_0
    move-exception v0

    .line 735
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "AccessibilityManager"

    const-string/jumbo v4, "Error while adding an accessibility interaction connection. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    return v5
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .prologue
    .line 574
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .prologue
    .line 626
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .prologue
    .line 599
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 481
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 483
    .local v2, "infoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 484
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 485
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    .end local v1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public getClient()Landroid/view/accessibility/IAccessibilityManagerClient;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    return-object v0
.end method

.method public getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .locals 6
    .param p1, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 541
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 542
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 543
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 545
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "userId":I
    monitor-exit v5

    .line 548
    const/4 v2, 0x0

    .line 550
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_2
    invoke-interface {v1, p1, v3}, Landroid/view/accessibility/IAccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 557
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 558
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 540
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v3    # "userId":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 554
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v3    # "userId":I
    :catch_0
    move-exception v0

    .line 555
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "AccessibilityManager"

    const-string/jumbo v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 560
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 499
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 500
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 503
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "userId":I
    monitor-exit v5

    .line 506
    const/4 v2, 0x0

    .line 508
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_2
    invoke-interface {v1, v3}, Landroid/view/accessibility/IAccessibilityManager;->getInstalledAccessibilityServiceList(I)Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 515
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 516
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 498
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v3    # "userId":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 512
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v3    # "userId":I
    :catch_0
    move-exception v0

    .line 513
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "AccessibilityManager"

    const-string/jumbo v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 518
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public interrupt()V
    .locals 7

    .prologue
    .line 440
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 441
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 442
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v2, :cond_0

    monitor-exit v5

    .line 443
    return-void

    .line 445
    :cond_0
    :try_start_1
    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v4, :cond_2

    .line 446
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 447
    .local v0, "myLooper":Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v0, v4, :cond_1

    .line 448
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 449
    const-string/jumbo v6, "Accessibility off. Did you forget to check that?"

    .line 448
    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    .end local v0    # "myLooper":Landroid/os/Looper;
    .end local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 455
    .restart local v0    # "myLooper":Landroid/os/Looper;
    .restart local v2    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_1
    :try_start_2
    const-string/jumbo v4, "AccessibilityManager"

    const-string/jumbo v6, "Interrupt called with accessibility disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 456
    return-void

    .line 459
    .end local v0    # "myLooper":Landroid/os/Looper;
    :cond_2
    :try_start_3
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v3, "userId":I
    monitor-exit v5

    .line 462
    :try_start_4
    invoke-interface {v2, v3}, Landroid/view/accessibility/IAccessibilityManager;->interrupt(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 437
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v1

    .line 467
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "AccessibilityManager"

    const-string/jumbo v5, "Error while requesting interrupt from all services. "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isFinalEnabled()Z

    move-result v0

    return v0
.end method

.method public isFinalEnabled()Z
    .locals 3

    .prologue
    .line 318
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v1, :cond_1

    .line 319
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 321
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_0

    .line 322
    const/4 v2, 0x0

    monitor-exit v1

    return v2

    :cond_0
    monitor-exit v1

    .line 326
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_1
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsFinalEnabled:Z

    return v1

    .line 319
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public isHighTextContrastEnabled()Z
    .locals 3

    .prologue
    .line 356
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 357
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 358
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_0

    .line 359
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 361
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v1

    .line 356
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isTouchExplorationEnabled()Z
    .locals 3

    .prologue
    .line 335
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 336
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 337
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_0

    .line 338
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 340
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v1

    .line 335
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 4
    .param p1, "windowToken"    # Landroid/view/IWindow;

    .prologue
    .line 748
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 749
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 750
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    monitor-exit v2

    .line 751
    return-void

    :cond_0
    monitor-exit v2

    .line 755
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 746
    :goto_0
    return-void

    .line 748
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 756
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catch_0
    move-exception v0

    .line 757
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityManager"

    const-string/jumbo v3, "Error while removing an accessibility interaction connection. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .prologue
    .line 586
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .prologue
    .line 640
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .prologue
    .line 611
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 381
    iget-object v8, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 382
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 383
    .local v5, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v5, :cond_0

    monitor-exit v8

    .line 384
    return-void

    .line 386
    :cond_0
    :try_start_1
    iget-boolean v7, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v7, :cond_2

    .line 387
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 388
    .local v1, "myLooper":Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v1, v7, :cond_1

    .line 389
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 390
    const-string/jumbo v9, "Accessibility off. Did you forget to check that?"

    .line 389
    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    .end local v1    # "myLooper":Landroid/os/Looper;
    .end local v5    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 396
    .restart local v1    # "myLooper":Landroid/os/Looper;
    .restart local v5    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_1
    :try_start_2
    const-string/jumbo v7, "AccessibilityManager"

    const-string/jumbo v9, "AccessibilityEvent sent with accessibility disabled"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    .line 397
    return-void

    .line 402
    .end local v1    # "myLooper":Landroid/os/Looper;
    :cond_2
    :try_start_3
    iget-boolean v7, p0, Landroid/view/accessibility/AccessibilityManager;->mIsFinalEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v7, :cond_3

    monitor-exit v8

    .line 407
    return-void

    .line 411
    :cond_3
    :try_start_4
    iget v6, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .local v6, "userId":I
    monitor-exit v8

    .line 413
    const/4 v0, 0x0

    .line 415
    .local v0, "doRecycle":Z
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 419
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 420
    .local v2, "identityToken":J
    invoke-interface {v5, p1, v6}, Landroid/view/accessibility/IAccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v0

    .line 421
    .local v0, "doRecycle":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 428
    if-eqz v0, :cond_4

    .line 429
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 378
    .end local v0    # "doRecycle":Z
    .end local v2    # "identityToken":J
    :cond_4
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v4

    .line 426
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v7, "AccessibilityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error during sending "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 428
    if-eqz v0, :cond_4

    .line 429
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 427
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v7

    .line 428
    if-eqz v0, :cond_5

    .line 429
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 427
    :cond_5
    throw v7
.end method
