.class Landroid/os/statistics/StackUtils;
.super Ljava/lang/Object;
.source "StackUtils.java"


# static fields
.field private static final MAX_STACK_DEPTH:I = 0x20

.field private static final MAX_STACK_LENGH:I = 0x400

.field public static final emptyJsonedStack:Lorg/json/JSONArray;

.field public static final emptyStack:[Ljava/lang/String;

.field private static final sStackTraceStringBuilder:Ljava/lang/StringBuilder;

.field private static final sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final suggestedStackTopMethodFullNames:[Ljava/lang/String;

.field private static volatile topClassMethodSimpleNames:[Ljava/util/ArrayList;

.field private static volatile topClasses:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 13
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    .line 14
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Landroid/os/statistics/StackUtils;->emptyJsonedStack:Lorg/json/JSONArray;

    .line 19
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/String;

    .line 20
    const-string/jumbo v1, "java.lang.Thread.sleep"

    aput-object v1, v0, v3

    .line 21
    const-string/jumbo v1, "java.lang.Thread.join"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 23
    const-string/jumbo v1, "java.util.concurrent.Semaphore.acquire"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 24
    const-string/jumbo v1, "java.util.concurrent.Semaphore.acquireUninterruptibly"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 25
    const-string/jumbo v1, "java.util.concurrent.Semaphore.tryAcquire"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 26
    const-string/jumbo v1, "java.util.concurrent.Semaphore.release"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 28
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquire"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 29
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireInterruptibly"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 30
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.tryAcquireNanos"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 31
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.release"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 32
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireShared"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 33
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireSharedInterruptibly"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.tryAcquireSharedNanos"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.releaseShared"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.signal"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.signalAll"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.await"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitNanos"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitUntil"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitUninterruptibly"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquire"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireInterruptibly"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.tryAcquireNanos"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.release"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireShared"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireSharedInterruptibly"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.tryAcquireSharedNanos"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.releaseShared"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.signal"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.signalAll"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitNanos"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitUntil"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitUninterruptibly"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantLock.lock"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantLock.lockInterruptibly"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantLock.tryLock"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantLock.unlock"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.lock"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.lockInterruptibly"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.tryLock"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.unlock"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.lock"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.lockInterruptibly"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.tryLock"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.unlock"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$ReadLockView.lock"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$ReadLockView.lockInterruptibly"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$ReadLockView.tryLock"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$ReadLockView.unlock"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$WriteLockView.lock"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$WriteLockView.lockInterruptibly"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$WriteLockView.tryLock"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$WriteLockView.unlock"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.writeLock"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.tryWriteLock"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.writeLockInterruptibly"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.readLock"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.tryReadLock"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.readLockInterruptibly"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.unlockWrite"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.unlockRead"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.unlock"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.tryConvertToReadLock"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.tryConvertToWriteLock"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 96
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.tryConvertToOptimisticRead"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 97
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.tryUnlockWrite"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 98
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.tryUnlockRead"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.unstampedUnlockRead"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 101
    const-string/jumbo v1, "java.util.concurrent.locks.LockSupport.park"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 102
    const-string/jumbo v1, "java.util.concurrent.locks.LockSupport.parkNanos"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 103
    const-string/jumbo v1, "java.util.concurrent.locks.LockSupport.parkUntil"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 104
    const-string/jumbo v1, "java.util.concurrent.locks.LockSupport.unpark"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 19
    sput-object v0, Landroid/os/statistics/StackUtils;->suggestedStackTopMethodFullNames:[Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackTrace(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 4
    .param p0, "jsonedStackTrace"    # Lorg/json/JSONArray;

    .prologue
    .line 255
    if-nez p0, :cond_0

    .line 256
    sget-object v3, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v3

    .line 258
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 259
    .local v2, "stackTrace":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 261
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v3, ""

    aput-object v3, v2, v1

    goto :goto_1

    .line 266
    .end local v0    # "ex":Lorg/json/JSONException;
    :cond_1
    return-object v2
.end method

.method public static getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 31
    .param p0, "javaStackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p1, "javaStackTraceClasses"    # [Ljava/lang/Class;
    .param p2, "nativeStackTrace"    # [Ljava/lang/String;

    .prologue
    .line 115
    const/4 v12, 0x0

    .line 116
    .local v12, "length":I
    const/4 v5, 0x0

    .line 117
    .local v5, "depth":I
    new-instance v21, Ljava/util/ArrayList;

    const/16 v26, 0x20

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v21, "stackTrace":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_2

    .line 120
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_2

    .line 121
    aget-object v13, p2, v10

    .line 122
    .local v13, "line":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 120
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 125
    :cond_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v5, v5, 0x1

    .line 127
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v26

    add-int v12, v12, v26

    .line 128
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v5, v0, :cond_2

    const/16 v26, 0x400

    move/from16 v0, v26

    if-lt v12, v0, :cond_0

    .line 134
    .end local v10    # "i":I
    .end local v13    # "line":Ljava/lang/String;
    :cond_2
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v5, v0, :cond_3

    const/16 v26, 0x400

    move/from16 v0, v26

    if-lt v12, v0, :cond_4

    .line 136
    :cond_3
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Ljava/lang/String;

    return-object v26

    .line 135
    :cond_4
    if-eqz p0, :cond_3

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 139
    sget-object v26, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    if-nez v26, :cond_9

    .line 140
    const-class v27, Landroid/os/statistics/StackUtils;

    monitor-enter v27

    .line 141
    :try_start_0
    sget-object v26, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    if-nez v26, :cond_8

    .line 143
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v23, "topClassMethodSimpleNamesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    sget-object v28, Landroid/os/statistics/StackUtils;->suggestedStackTopMethodFullNames:[Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_6

    aget-object v16, v28, v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .local v16, "methodFullName":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v30, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 147
    .local v6, "dotPosition":I
    add-int/lit8 v30, v6, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 148
    .local v17, "methodSimpleName":Ljava/lang/String;
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "classFullName":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 150
    .local v3, "clazz":Ljava/lang/Class;
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .line 151
    .local v25, "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v25, :cond_5

    .line 152
    new-instance v25, Ljava/util/ArrayList;

    .end local v25    # "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .restart local v25    # "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_5
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .end local v2    # "classFullName":Ljava/lang/String;
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v6    # "dotPosition":I
    .end local v17    # "methodSimpleName":Ljava/lang/String;
    .end local v25    # "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 159
    .end local v16    # "methodFullName":Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v26

    .line 160
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    .line 159
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/Class;

    .line 161
    .local v15, "localTopClasses":[Ljava/lang/Class;
    array-length v0, v15

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v14, v0, [Ljava/util/ArrayList;

    .line 162
    .local v14, "localTopClassMethodSimpleNames":[Ljava/util/ArrayList;
    const/4 v11, 0x0

    .line 163
    .local v11, "index":I
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "clazz$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 164
    .restart local v3    # "clazz":Ljava/lang/Class;
    aput-object v3, v15, v11

    .line 165
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    aput-object v26, v14, v11

    .line 166
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 168
    .end local v3    # "clazz":Ljava/lang/Class;
    :cond_7
    sput-object v15, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    .line 169
    sput-object v14, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "clazz$iterator":Ljava/util/Iterator;
    .end local v11    # "index":I
    .end local v14    # "localTopClassMethodSimpleNames":[Ljava/util/ArrayList;
    .end local v15    # "localTopClasses":[Ljava/lang/Class;
    .end local v23    # "topClassMethodSimpleNamesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_8
    monitor-exit v27

    .line 174
    :cond_9
    const/16 v24, 0x0

    .line 175
    .local v24, "topIndex":I
    const/16 v18, 0x0

    .line 176
    .local v18, "needSkipPart":Z
    if-eqz p1, :cond_a

    .line 178
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_e

    const/16 v26, 0x0

    aget-object v26, p1, v26

    const-class v27, Ljava/lang/Thread;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 179
    const/16 v18, 0x1

    .line 185
    :cond_a
    :goto_4
    if-eqz v18, :cond_c

    .line 186
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v24, v26, -0x1

    .line 187
    :goto_5
    if-lez v24, :cond_c

    .line 188
    aget-object v3, p1, v24

    .line 189
    .restart local v3    # "clazz":Ljava/lang/Class;
    if-eqz v3, :cond_12

    .line 190
    const/4 v11, -0x1

    .line 191
    .restart local v11    # "index":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    sget-object v26, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_b

    .line 192
    sget-object v26, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    if-ne v0, v3, :cond_11

    .line 193
    move v11, v10

    .line 197
    :cond_b
    if-ltz v11, :cond_12

    .line 198
    aget-object v7, p0, v24

    .line 199
    .local v7, "element":Ljava/lang/StackTraceElement;
    sget-object v26, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    aget-object v25, v26, v11

    .line 200
    .restart local v25    # "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 209
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v7    # "element":Ljava/lang/StackTraceElement;
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v25    # "topMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    const/16 v19, 0x0

    .line 210
    .local v19, "previousClazz":Ljava/lang/Class;
    sget-object v26, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 211
    sget-object v20, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    .line 212
    .local v20, "sb":Ljava/lang/StringBuilder;
    :goto_7
    const/4 v9, 0x0

    .line 213
    .local v9, "foundTopLine":Z
    move/from16 v10, v24

    .end local v19    # "previousClazz":Ljava/lang/Class;
    .restart local v10    # "i":I
    :goto_8
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_16

    .line 214
    aget-object v22, p0, v10

    .line 215
    .local v22, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-nez v22, :cond_14

    .line 213
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 140
    .end local v9    # "foundTopLine":Z
    .end local v10    # "i":I
    .end local v18    # "needSkipPart":Z
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v22    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .end local v24    # "topIndex":I
    :catchall_0
    move-exception v26

    monitor-exit v27

    throw v26

    .line 180
    .restart local v18    # "needSkipPart":Z
    .restart local v24    # "topIndex":I
    :cond_e
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_a

    const/16 v26, 0x0

    aget-object v26, p1, v26

    const-class v27, Ljava/lang/Object;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 181
    const/16 v26, 0x1

    aget-object v26, p1, v26

    const-class v27, Ljava/lang/Thread;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_f

    const/16 v26, 0x2

    aget-object v26, p1, v26

    const-class v27, Ljava/lang/Thread;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_10

    .line 182
    :cond_f
    :goto_9
    const/16 v18, 0x1

    goto/16 :goto_4

    .line 181
    :cond_10
    const/16 v26, 0x3

    aget-object v26, p1, v26

    const-class v27, Ljava/lang/Thread;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_a

    goto :goto_9

    .line 191
    .restart local v3    # "clazz":Ljava/lang/Class;
    .restart local v10    # "i":I
    .restart local v11    # "index":I
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 205
    .end local v10    # "i":I
    .end local v11    # "index":I
    :cond_12
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_5

    .line 211
    .end local v3    # "clazz":Ljava/lang/Class;
    .restart local v19    # "previousClazz":Ljava/lang/Class;
    :cond_13
    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v26, 0x100

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v20    # "sb":Ljava/lang/StringBuilder;
    goto :goto_7

    .line 218
    .end local v19    # "previousClazz":Ljava/lang/Class;
    .restart local v9    # "foundTopLine":Z
    .restart local v10    # "i":I
    .restart local v22    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_14
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 219
    if-nez p1, :cond_18

    const/4 v3, 0x0

    .line 220
    .restart local v3    # "clazz":Ljava/lang/Class;
    :goto_a
    if-eqz v3, :cond_19

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_19

    .line 221
    const/16 v26, 0x2d

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2e

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    :goto_b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    if-nez v9, :cond_15

    .line 227
    const/4 v9, 0x1

    .line 228
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 229
    const-string/jumbo v26, "(Native)"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_15
    :goto_c
    move-object/from16 v19, v3

    .line 241
    .local v19, "previousClazz":Ljava/lang/Class;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v5, v5, 0x1

    .line 243
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    add-int v12, v12, v26

    .line 244
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v5, v0, :cond_16

    const/16 v26, 0x400

    move/from16 v0, v26

    if-lt v12, v0, :cond_d

    .line 248
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v19    # "previousClazz":Ljava/lang/Class;
    .end local v22    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_16
    sget-object v26, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_17

    .line 249
    sget-object v26, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    :cond_17
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Ljava/lang/String;

    return-object v26

    .line 219
    .restart local v22    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_18
    aget-object v3, p1, v10

    goto :goto_a

    .line 223
    .restart local v3    # "clazz":Ljava/lang/Class;
    :cond_19
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2e

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 230
    :cond_1a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_1b

    .line 231
    const/16 v26, 0x28

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const/16 v26, 0x3a

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 234
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v27

    .line 233
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 235
    const/16 v27, 0x29

    .line 233
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 237
    :cond_1b
    const-string/jumbo v26, "(None)"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 156
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v9    # "foundTopLine":Z
    .end local v10    # "i":I
    .end local v18    # "needSkipPart":Z
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v22    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .end local v24    # "topIndex":I
    .restart local v16    # "methodFullName":Ljava/lang/String;
    .restart local v23    # "topClassMethodSimpleNamesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/ClassNotFoundException;
    goto/16 :goto_2
.end method
