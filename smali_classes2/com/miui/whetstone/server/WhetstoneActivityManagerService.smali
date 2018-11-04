.class public Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.super Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;,
        Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;
    }
.end annotation


# static fields
.field public static final APP_SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field public static final D:Z

.field private static final FROZEN_APP:I = 0x1

.field private static final MSG_SYSTEM_UPDATE_CURRENT_PROCESS_PSS:I = 0x3

.field private static final MSG_USER_CLEAR_DEAD_NATIVE_PROCESS:I = 0x2

.field private static final MSG_USER_REMOVE_PROMOTE_LEVEL:I = 0x1

.field private static final PER_USER_RANGE:I = 0x186a0

.field public static final PROMOTE_LEVEL_HIGH:I = 0x2

.field public static final PROMOTE_LEVEL_MIDDLE:I = 0x1

.field public static final PROMOTE_LEVEL_NORMAL:I = 0x0

.field public static final SERVICE:Ljava/lang/String; = "whetstone.activity"

.field private static final TAG:Ljava/lang/String; = "whetstone.activity"

.field private static mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# instance fields
.field private PowerManagerServiceInjector:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

.field private mAM:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mExtraActivityManagerService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mGetConnProviderNames:Ljava/lang/reflect/Method;

.field private mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

.field private mPidsSelfLocked:Landroid/util/SparseArray;

.field private mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoveTask:Ljava/lang/reflect/Method;

.field private mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

.field private mScheduleDestroyActivities:Ljava/lang/reflect/Method;

.field private mSystemServiceClassLoader:Ljava/lang/ClassLoader;

.field private final mUidFrozenState:Landroid/util/SparseBooleanArray;


# direct methods
.method static synthetic -get0(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0

    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->handleClearDeadAppFromNative()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-string/jumbo v0, "whetstone.activity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;-><init>()V

    .line 75
    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    .line 168
    new-instance v12, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 108
    :try_start_0
    const-string/jumbo v12, "com.android.server.am.ExtraActivityManagerService"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v14, 0x0

    invoke-static {v12, v14, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    .line 109
    const-string/jumbo v12, "android.os.ServiceManager"

    .line 110
    const/4 v13, 0x0

    .line 109
    invoke-static {v12, v13}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 110
    const-string/jumbo v13, "getService"

    .line 109
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    .line 110
    const-class v15, Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 109
    invoke-static {v12, v13, v14}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v10

    .line 112
    .local v10, "getService":Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    :try_start_1
    new-array v12, v12, [Ljava/lang/Object;

    const-string/jumbo v13, "activity"

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/IBinder;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 118
    const/4 v9, 0x0

    .line 119
    .local v9, "field":Ljava/lang/reflect/Field;
    :try_start_2
    const-string/jumbo v12, "com.android.server.am.ActivityManagerService"

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 119
    invoke-static {v12, v13}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 120
    const-string/jumbo v13, "mPidsSelfLocked"

    .line 119
    invoke-static {v12, v13}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 121
    .local v9, "field":Ljava/lang/reflect/Field;
    if-eqz v9, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    .line 127
    invoke-direct/range {p0 .. p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->findRemoveTaskMethod()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 142
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "getService":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    .line 143
    const-string/jumbo v13, "scheduleDestroyActivities"

    .line 142
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Class;

    .line 143
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const-class v15, Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v15, v14, v16

    .line 142
    invoke-static {v12, v13, v14}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 141
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    .line 144
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-nez v12, :cond_1

    .line 145
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "mScheduleDestroyActivities not found in AcivityManagerService"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 150
    :catch_0
    move-exception v4

    .line 151
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/miui/whetstone/PowerKeeperPolicy;->setContext(Landroid/content/Context;)V

    .line 156
    new-instance v12, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    .line 159
    :try_start_4
    const-class v12, Landroid/os/PowerManager;

    const-string/jumbo v13, "ACTION_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 160
    .local v11, "idleModeChange":Ljava/lang/String;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "deviceIdleFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2, v14, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 165
    .end local v2    # "deviceIdleFilter":Landroid/content/IntentFilter;
    .end local v11    # "idleModeChange":Ljava/lang/String;
    :goto_2
    sput-object p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 104
    return-void

    .line 113
    .restart local v10    # "getService":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v4

    .line 114
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v12, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Error: can not found AcivityManagerService"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 128
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v10    # "getService":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v6

    .line 129
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 124
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "getService":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_6
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Error: mPidsSelfLocked not found in AcivityManagerService"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    .line 130
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "getService":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v8

    .line 131
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 136
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 134
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_5
    move-exception v7

    .line 135
    .local v7, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 132
    .end local v7    # "e":Ljava/lang/NoSuchFieldException;
    :catch_6
    move-exception v5

    .line 133
    .local v5, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 148
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    :try_start_7
    const-string/jumbo v12, "com.android.server.power.PowerManagerServiceInjector"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v14, 0x0

    invoke-static {v12, v14, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    .line 149
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    const-string/jumbo v13, "getPartialWakeLockHoldByUid"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v12, v13, v14}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 162
    :catch_7
    move-exception v4

    .line 163
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v12, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private checkCallInterfacePermission()Z
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 96
    .local v0, "callingUid":I
    const v1, 0x186a0

    rem-int/2addr v0, v1

    .line 98
    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    .line 99
    const/4 v1, 0x0

    return v1

    .line 101
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private findRemoveTaskMethod()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 720
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-gt v4, v5, :cond_0

    .line 722
    :try_start_0
    const-class v4, Landroid/app/ActivityManager;

    const-string/jumbo v5, "removeTask"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    .line 723
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :goto_0
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_3

    .line 773
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 778
    :goto_1
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_4

    .line 779
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 719
    :goto_2
    return-void

    .line 724
    :catch_0
    move-exception v3

    .line 725
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 728
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-gt v4, v5, :cond_1

    .line 730
    :try_start_1
    const-class v4, Landroid/app/ActivityManager;

    const-string/jumbo v5, "removeTask"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    .line 732
    const-string/jumbo v4, "com.android.server.am.ActivityManagerService"

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v4, v5}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 733
    const-string/jumbo v5, "removeTaskByIdLocked"

    .line 731
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    .line 733
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 731
    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 734
    :catch_1
    move-exception v3

    .line 735
    .restart local v3    # "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 738
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 739
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 736
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 741
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-ge v4, v5, :cond_2

    .line 743
    :try_start_2
    const-class v4, Landroid/app/ActivityManager;

    const-string/jumbo v5, "removeTask"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    .line 745
    const-string/jumbo v4, "com.android.server.am.ActivityManagerService"

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v4, v5}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 746
    const-string/jumbo v5, "removeTaskByIdLocked"

    .line 744
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    .line 746
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 744
    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 747
    :catch_4
    move-exception v3

    .line 748
    .restart local v3    # "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 751
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v2

    .line 752
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 749
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v0

    .line 750
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 756
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    :try_start_3
    const-class v4, Landroid/app/ActivityManager;

    const-string/jumbo v5, "removeTask"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    .line 757
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    .line 758
    const-string/jumbo v5, "removeTaskByIdLocked"

    .line 757
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    .line 758
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 757
    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    goto/16 :goto_0

    .line 759
    :catch_7
    move-exception v3

    .line 760
    .restart local v3    # "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 763
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_8
    move-exception v1

    .line 764
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 761
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v2

    .line 762
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 775
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "could not find removeTask"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 781
    :cond_4
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "could not find removeTaskByIdLocked"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private getProcessPidByPackageNameLocked(Ljava/lang/String;I)I
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 237
    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 239
    .local v6, "n":I
    :try_start_0
    const-string/jumbo v12, "com.android.server.am.ProcessRecord"

    .line 240
    iget-object v13, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v14, 0x0

    .line 239
    invoke-static {v12, v14, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 241
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v6, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 242
    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 243
    .local v9, "processRecord":Ljava/lang/Object;
    if-eqz v9, :cond_0

    .line 245
    const-string/jumbo v12, "processName"

    .line 244
    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 247
    .local v7, "name":Ljava/lang/String;
    const-string/jumbo v12, "userId"

    .line 246
    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 248
    .local v10, "uId":Ljava/lang/Integer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v0, p2

    if-ne v12, v0, :cond_0

    .line 250
    const-string/jumbo v12, "pid"

    .line 249
    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 251
    .local v8, "pid":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    return v12

    .line 241
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "pid":Ljava/lang/Integer;
    .end local v10    # "uId":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 256
    .end local v9    # "processRecord":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    .local v2, "count":I
    const/4 v11, -0x1

    .line 257
    .local v11, "value":I
    add-int/lit8 v4, v6, -0x1

    :goto_1
    if-ltz v4, :cond_3

    .line 258
    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 259
    .restart local v9    # "processRecord":Ljava/lang/Object;
    if-eqz v9, :cond_2

    .line 261
    const-string/jumbo v12, "info"

    .line 260
    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 262
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_2

    .line 263
    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v12, :cond_2

    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 264
    add-int/lit8 v2, v2, 0x1

    .line 266
    const-string/jumbo v12, "pid"

    .line 265
    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 267
    .restart local v8    # "pid":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 257
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "pid":Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 272
    .end local v9    # "processRecord":Ljava/lang/Object;
    :cond_3
    const/4 v12, 0x1

    if-ne v2, v12, :cond_4

    .line 273
    return v11

    .line 275
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v11    # "value":I
    :catch_0
    move-exception v3

    .line 276
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v12, -0x1

    return v12
.end method

.method public static getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .locals 1

    .prologue
    .line 643
    sget-object v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    return-object v0
.end method

.method private handleClearDeadAppFromNative()V
    .locals 5

    .prologue
    .line 192
    :try_start_0
    const-string/jumbo v2, "com.android.server.am.ActivityManagerService"

    .line 193
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 192
    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 193
    const-string/jumbo v3, "clearDeadAppFromNative"

    .line 192
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 194
    .local v0, "clearMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 195
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0    # "clearMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "whetstone.activity"

    const-string/jumbo v3, "handleClearDeadAppFromNative"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeTaskByIdInternal(IZZ)Z
    .locals 8
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 695
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_0

    .line 696
    invoke-direct {p0, p1, p2, v7}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdL(IZZ)Z

    move-result v2

    return v2

    .line 700
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    check-cast v2, Landroid/app/IActivityManager;

    const-string/jumbo v3, "android.permission.REMOVE_TASKS"

    .line 701
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 700
    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: removeTaskById from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 705
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 704
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 706
    const-string/jumbo v3, ", uid="

    .line 704
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 704
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 707
    const-string/jumbo v3, " requires "

    .line 704
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 707
    const-string/jumbo v3, "android.permission.REMOVE_TASKS"

    .line 704
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, "msg":Ljava/lang/String;
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    return v6

    .line 711
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return v6

    .line 715
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, p1, p2, v7}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdLocked(IZZ)Z

    move-result v2

    return v2
.end method

.method private removeTaskByIdL(IZZ)Z
    .locals 9
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 651
    const/4 v2, 0x0

    .line 652
    .local v2, "res":Z
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 653
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    if-nez v5, :cond_0

    .line 654
    const-string/jumbo v3, "whetstone.activity"

    const-string/jumbo v5, "could not find removeTaskById L"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return v4

    .line 659
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 664
    .local v2, "res":Z
    return v2

    .local v2, "res":Z
    :cond_1
    move v3, v4

    .line 659
    goto :goto_0

    .line 660
    :catch_0
    move-exception v1

    .line 661
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return v4
.end method

.method private removeTaskByIdLocked(IZZ)Z
    .locals 11
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .prologue
    const/4 v10, 0x0

    .line 668
    const/4 v1, 0x0

    .line 669
    .local v1, "res":Z
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 670
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "could not find removeTaskById M"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return v10

    .line 673
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 675
    .local v2, "orig":J
    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 676
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v4, v6, :cond_1

    .line 677
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .local v1, "res":Z
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 688
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 690
    return v1

    .line 678
    .local v1, "res":Z
    :cond_1
    :try_start_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-ge v4, v6, :cond_2

    .line 679
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "res":Z
    goto :goto_0

    .line 681
    .local v1, "res":Z
    :cond_2
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .local v1, "res":Z
    goto :goto_0

    .line 675
    .local v1, "res":Z
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 684
    .end local v1    # "res":Z
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v4, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 688
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 686
    return v10

    .line 687
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    .line 688
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 687
    throw v4
.end method

.method private updateCurrentProcessPss(IJ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "pss"    # J

    .prologue
    .line 571
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 572
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 573
    long-to-int v1, p2

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 574
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 570
    return-void
.end method


# virtual methods
.method public addAppToServiceControlWhitelist(Ljava/util/List;)V
    .locals 0
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
    .line 534
    .local p1, "listPkg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/whetstone/process/WtServiceControlEntry;->addAppToServiceControlWhitelist(Ljava/util/List;)V

    .line 533
    return-void
.end method

.method public bindWhetstoneService(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "client"    # Landroid/os/IBinder;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneClient;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->init(Landroid/content/Context;Lcom/miui/whetstone/IWhetstoneClient;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    .line 513
    return-void
.end method

.method public checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "threshold"    # J

    .prologue
    .line 578
    return-void
.end method

.method public checkIfPackageIsLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 567
    invoke-static {p1, p2}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public varargs checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "callerType"    # I
    .param p4, "userId"    # I
    .param p5, "componentName"    # Ljava/lang/String;
    .param p6, "processName"    # Ljava/lang/String;
    .param p7, "additionalArgs"    # [Ljava/lang/Object;

    .prologue
    .line 647
    const/4 v0, 0x1

    return v0
.end method

.method public clearDeadAppFromNative()V
    .locals 4

    .prologue
    .line 205
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 206
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 204
    return-void
.end method

.method public distoryActivity(I)Z
    .locals 8
    .param p1, "pid"    # I

    .prologue
    .line 453
    const/4 v3, 0x0

    .line 454
    .local v3, "ret":Z
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 456
    :try_start_0
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "whetstone"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    const/4 v3, 0x1

    .line 466
    :cond_0
    :goto_0
    return v3

    .line 462
    :catch_0
    move-exception v2

    .line 463
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "distoryActivity"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 460
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "distoryActivity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 458
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "distoryActivity"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 582
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission Denial: can\'t dump whetstone.activity service from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 585
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 584
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 586
    const-string/jumbo v6, ", uid="

    .line 584
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 586
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 584
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    return-void

    .line 590
    :cond_0
    const/4 v2, 0x0

    .line 591
    .local v2, "dumpAll":Z
    const/4 v1, 0x0

    .line 592
    .local v1, "component":Z
    const/4 v4, 0x0

    .line 593
    .local v4, "powerKeeper":Z
    if-eqz p3, :cond_4

    .line 594
    array-length v6, p3

    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v0, p3, v5

    .line 595
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v7, "powerkeeper"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 596
    const/4 v4, 0x1

    .line 594
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 597
    :cond_2
    const-string/jumbo v7, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "all"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 598
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 602
    .end local v0    # "arg":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    .line 604
    :cond_5
    if-nez v4, :cond_6

    if-eqz v2, :cond_7

    .line 605
    :cond_6
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v3

    .line 606
    .local v3, "p":Lcom/miui/whetstone/PowerKeeperPolicy;
    if-eqz v3, :cond_7

    .line 607
    invoke-virtual {v3, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 581
    .end local v3    # "p":Lcom/miui/whetstone/PowerKeeperPolicy;
    :cond_7
    return-void
.end method

.method public getAndroidCachedEmptyProcessMemory()J
    .locals 2

    .prologue
    .line 529
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getEmptyProcTotalMemoryInfo()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundAPPS()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnProviderNames(Ljava/lang/String;ILjava/util/List;)Z
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 792
    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 793
    .local v9, "result":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v11, :cond_4

    .line 795
    const/4 v10, 0x0

    .line 796
    .local v10, "serProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    if-nez v11, :cond_0

    .line 798
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string/jumbo v12, "getConnProviderNamesLocked"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-static {v11, v12, v13}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 797
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    .line 800
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    if-eqz v11, :cond_1

    .line 801
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/util/List;

    move-object v10, v0

    .line 803
    .end local v10    # "serProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz v10, :cond_6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 804
    const/4 v9, 0x1

    .line 805
    if-eqz p3, :cond_5

    .line 806
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 807
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "name$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 808
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 809
    const/4 v9, 0x0

    .line 814
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "name$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    .line 815
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "provName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 816
    .local v7, "provName":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 823
    .end local v7    # "provName":Ljava/lang/String;
    .end local v8    # "provName$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 824
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v11, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    :goto_1
    return v9

    .line 819
    :cond_5
    return v9

    .line 820
    :cond_6
    if-eqz p3, :cond_4

    .line 821
    :try_start_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 825
    :catch_1
    move-exception v3

    .line 826
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v11, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 829
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    .line 830
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v11, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 827
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 828
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v11, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPackageNamebyPid(I)Ljava/lang/String;
    .locals 12
    .param p1, "pid"    # I

    .prologue
    .line 211
    const/4 v6, 0x0

    .line 212
    .local v6, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9

    .line 213
    :try_start_0
    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 214
    .local v7, "processRecord":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v8, "com.android.server.am.ProcessRecord"

    iget-object v10, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v11, 0x0

    invoke-static {v8, v11, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 218
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "info"

    invoke-static {v0, v8}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 219
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_0

    .line 220
    iget-object v6, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v9

    .line 233
    return-object v6

    .line 228
    .restart local v6    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2
    const-string/jumbo v8, "whetstone.activity"

    const-string/jumbo v10, "getPackageNamebyPid"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 212
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v7    # "processRecord":Ljava/lang/Object;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 226
    .restart local v7    # "processRecord":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 227
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    :try_start_3
    const-string/jumbo v8, "whetstone.activity"

    const-string/jumbo v10, "getPackageNamebyPid"

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 224
    .end local v4    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v8, "whetstone.activity"

    const-string/jumbo v10, "getPackageNamebyPid"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 222
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "whetstone.activity"

    const-string/jumbo v10, "getPackageNamebyPid"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getPartialWakeLockHoldByUid(I)I
    .locals 10
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 614
    const/4 v3, 0x0

    .line 615
    .local v3, "ret":I
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

    if-nez v5, :cond_0

    .line 616
    const-string/jumbo v5, "whetstone.activity"

    const-string/jumbo v6, "whetstone.activity getPartialWakeLockHoldByUid == null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v5, -0x1

    return v5

    .line 620
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 621
    .local v4, "wakeLockCnt":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 622
    :cond_1
    const-string/jumbo v5, "whetstone.activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "whetstone.activity ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v4    # "wakeLockCnt":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 627
    :catch_0
    move-exception v2

    .line 628
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v5, "whetstone.activity"

    const-string/jumbo v6, "getPartialWakeLockHoldByUid"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 625
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "whetstone.activity"

    const-string/jumbo v6, "getPartialWakeLockHoldByUid"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 623
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 624
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "whetstone.activity"

    const-string/jumbo v6, "getPartialWakeLockHoldByUid"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    return-object v0
.end method

.method public getProcessReceiverState(I)Z
    .locals 13
    .param p1, "pid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 404
    const/4 v0, -0x1

    .line 405
    .local v0, "ProcStat":I
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v6, :cond_0

    .line 407
    :try_start_0
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string/jumbo v9, "getProcStateByPid"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v6, v9, v10}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 408
    .local v5, "getProcStateByPid":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 409
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 421
    .end local v5    # "getProcStateByPid":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    const/16 v6, 0xb

    if-ne v0, v6, :cond_1

    move v6, v7

    :goto_1
    return v6

    .line 417
    :catch_0
    move-exception v4

    .line 418
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 414
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v2

    .line 412
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    move v6, v8

    .line 421
    goto :goto_1
.end method

.method public getSystemPid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public getUidFrozenState(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 478
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isAlarmAllowedLocked(III)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # I

    .prologue
    .line 485
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 486
    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAlarmAllowedLocked() for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->isAlarmAllowedLocked(III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 489
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_1

    .line 490
    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Alarm restrict for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 491
    const-string/jumbo v2, ", type = "

    .line 490
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 495
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isBroadcastAllowedLocked(IILjava/lang/String;)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 499
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 500
    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBroadcastAllowedLocked() for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->isBroadcastAllowedLocked(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 503
    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_1

    .line 504
    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Broadcast restrict for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    const-string/jumbo v2, ", type = "

    .line 504
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 509
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isProcessExecutingServices(I)Z
    .locals 13
    .param p1, "pid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 426
    const/4 v4, 0x0

    .line 427
    .local v4, "executingServicesN":I
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v6, :cond_0

    .line 429
    :try_start_0
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string/jumbo v9, "getExecutingServicesSize"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v6, v9, v10}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 430
    .local v5, "getExecutingServicesSize":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 431
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 443
    .end local v5    # "getExecutingServicesSize":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    if-lez v4, :cond_1

    move v6, v7

    :goto_1
    return v6

    .line 439
    :catch_0
    move-exception v3

    .line 440
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 435
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    move v6, v8

    .line 443
    goto :goto_1
.end method

.method public putUidFrozenState(II)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 470
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 471
    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    .line 472
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    if-ne v1, p2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 474
    return v1

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 539
    invoke-static {p1}, Lcom/miui/whetstone/process/WtServiceControlEntry;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public removeTaskById(IZ)Z
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z

    .prologue
    .line 787
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public scheduleStopService(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleTrimMemory(II)Z
    .locals 12
    .param p1, "pid"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 381
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 383
    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    .line 384
    const-string/jumbo v6, "scheduleTrimMemory"

    .line 383
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    .line 384
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 383
    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 385
    .local v4, "scheduleTrimMemory":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 386
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    return v11

    .line 395
    .end local v4    # "scheduleTrimMemory":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 396
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    :goto_0
    return v10

    .line 393
    :catch_1
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 392
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPerformanceComponents([Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # [Landroid/content/ComponentName;

    .prologue
    .line 524
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->setComponment([Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public setWhetstonePackageInfo(Ljava/util/List;Z)V
    .locals 0
    .param p2, "isAppend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 837
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/strategy/WhetstonePackageInfo;>;"
    return-void
.end method

.method public updateApplicationByLockedState(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "locked"    # Z

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V

    .line 283
    return-void
.end method

.method public updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "locked"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkCallInterfacePermission()Z

    move-result v13

    if-nez v13, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 293
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isSystemProtectImportantApp(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 294
    invoke-static/range {p1 .. p3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V

    .line 295
    return-void

    .line 297
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 298
    .local v3, "callingPid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v14

    .line 300
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getProcessPidByPackageNameLocked(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 301
    .local v7, "pid":I
    const/4 v13, -0x1

    if-ne v7, v13, :cond_3

    monitor-exit v14

    return-void

    .line 302
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 303
    .local v8, "processRecord":Ljava/lang/Object;
    if-eqz v8, :cond_5

    .line 304
    const-string/jumbo v13, "com.android.server.am.ProcessRecord"

    .line 305
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/16 v16, 0x0

    .line 304
    move/from16 v0, v16

    invoke-static {v13, v0, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 306
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v13, "com.android.server.am.ProcessList"

    .line 307
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/16 v16, 0x0

    .line 306
    move/from16 v0, v16

    invoke-static {v13, v0, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 308
    .local v5, "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v13, "maxAdj"

    invoke-static {v4, v13}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 310
    .local v10, "value":Ljava/lang/Integer;
    const-string/jumbo v13, "HEAVY_WEIGHT_APP_ADJ"

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 309
    invoke-static {v5, v13, v15}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 311
    .local v11, "value2":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 312
    .local v9, "resultAdj":I
    if-eqz p2, :cond_6

    .line 313
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-le v13, v15, :cond_4

    .line 314
    const-string/jumbo v13, "maxAdj"

    invoke-static {v4, v13}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-virtual {v13, v8, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 323
    :cond_4
    :goto_0
    const-string/jumbo v13, "whetstone.activity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "MaxAdj Changed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " From: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " to: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " by: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "resultAdj":I
    .end local v10    # "value":Ljava/lang/Integer;
    .end local v11    # "value2":Ljava/lang/Integer;
    :cond_5
    invoke-static/range {p1 .. p3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "pid":I
    .end local v8    # "processRecord":Ljava/lang/Object;
    :goto_1
    monitor-exit v14

    .line 288
    return-void

    .line 319
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "pid":I
    .restart local v8    # "processRecord":Ljava/lang/Object;
    .restart local v9    # "resultAdj":I
    .restart local v10    # "value":Ljava/lang/Integer;
    .restart local v11    # "value2":Ljava/lang/Integer;
    :cond_6
    :try_start_2
    const-string/jumbo v13, "UNKNOWN_ADJ"

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 318
    invoke-static {v5, v13, v15}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 320
    .local v12, "value3":Ljava/lang/Integer;
    const-string/jumbo v13, "maxAdj"

    invoke-static {v4, v13}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-virtual {v13, v8, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    goto :goto_0

    .line 326
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "clazz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "pid":I
    .end local v8    # "processRecord":Ljava/lang/Object;
    .end local v9    # "resultAdj":I
    .end local v10    # "value":Ljava/lang/Integer;
    .end local v11    # "value2":Ljava/lang/Integer;
    .end local v12    # "value3":Ljava/lang/Integer;
    :catch_0
    move-exception v6

    .line 327
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v13, "whetstone.activity"

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 298
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13
.end method

.method public updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .locals 0
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
    .line 543
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateApplicationsMemoryThreshold(Ljava/util/List;)V

    .line 542
    return-void
.end method

.method public updateFrameworkCommonConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 635
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    invoke-virtual {v0, p1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->updateFrameworkCommonConfig(Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method public updateUserLockedAppList(Ljava/util/List;)V
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
    .line 548
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkCallInterfacePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    return-void

    .line 551
    :cond_0
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;)V

    .line 547
    return-void
.end method

.method public updateUserLockedAppListWithUserId(Ljava/util/List;I)V
    .locals 0
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
    .line 556
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;I)V

    .line 555
    return-void
.end method
