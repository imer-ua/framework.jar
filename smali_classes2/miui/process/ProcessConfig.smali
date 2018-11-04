.class public Lmiui/process/ProcessConfig;
.super Ljava/lang/Object;
.source "ProcessConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/process/ProcessConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/process/ProcessConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_ADJ:I = -0x2710

.field private static final INVALID_TASK_ID:I = -0x1

.field private static final INVALID_UID:I = -0x1

.field private static final INVALID_USER_ID:I = -0x2710

.field public static final KILL_LEVEL_FORCE_STOP:I = 0x68

.field public static final KILL_LEVEL_KILL:I = 0x67

.field public static final KILL_LEVEL_KILL_BACKGROUND:I = 0x66

.field public static final KILL_LEVEL_TRIM_MEMORY:I = 0x65

.field public static final KILL_LEVEL_UNKNOWN:I = 0x64

.field public static final POLICY_AUTO_IDLE_KILL:I = 0xd

.field public static final POLICY_AUTO_LOCK_OFF_CLEAN:I = 0xf

.field public static final POLICY_AUTO_LOCK_OFF_CLEAN_BY_PRIORITY:I = 0x11

.field public static final POLICY_AUTO_POWER_KILL:I = 0xb

.field public static final POLICY_AUTO_SLEEP_CLEAN:I = 0xe

.field public static final POLICY_AUTO_SYSTEM_ABNORMAL_CLEAN:I = 0x10

.field public static final POLICY_AUTO_THERMAL_KILL:I = 0xc

.field public static final POLICY_FORCE_CLEAN:I = 0x2

.field public static final POLICY_GAME_CLEAN:I = 0x4

.field public static final POLICY_GARBAGE_CLEAN:I = 0x6

.field public static final POLICY_LOCK_SCREEN_CLEAN:I = 0x3

.field public static final POLICY_ONE_KEY_CLEAN:I = 0x1

.field public static final POLICY_OPTIMIZATION_CLEAN:I = 0x5

.field public static final POLICY_SWIPE_UP_CLEAN:I = 0x7

.field public static final POLICY_USER_DEFINED:I = 0xa


# instance fields
.field private mKillingPackage:Ljava/lang/String;

.field private mKillingPackageMaps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPolicy:I

.field private mPriority:I

.field private mReason:Ljava/lang/String;

.field private mRemoveTaskNeeded:Z

.field private mRemovingTaskIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskId:I

.field private mUid:I

.field private mUserId:I

.field private mWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mkillingClockTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 346
    new-instance v0, Lmiui/process/ProcessConfig$1;

    invoke-direct {v0}, Lmiui/process/ProcessConfig$1;-><init>()V

    .line 345
    sput-object v0, Lmiui/process/ProcessConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "policy"    # I

    .prologue
    const/4 v1, -0x1

    const/16 v0, -0x2710

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 78
    iput v1, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 81
    iput v1, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 84
    iput v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    .line 113
    iput p1, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    .line 112
    return-void
.end method

.method public constructor <init>(IILandroid/util/ArrayMap;)V
    .locals 0
    .param p1, "policy"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p3, "killingPackageMaps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(I)V

    .line 162
    iput p2, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 163
    iput-object p3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    .line 160
    return-void
.end method

.method public constructor <init>(IILandroid/util/ArrayMap;Ljava/lang/String;)V
    .locals 0
    .param p1, "policy"    # I
    .param p2, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    .local p3, "killingPackageMaps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lmiui/process/ProcessConfig;-><init>(IILandroid/util/ArrayMap;)V

    .line 182
    iput-object p4, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "policy"    # I
    .param p2, "killingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(I)V

    .line 128
    iput-object p2, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    .line 129
    iput p3, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 126
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "policy"    # I
    .param p2, "killingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "taskId"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(I)V

    .line 142
    iput-object p2, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    .line 143
    iput p3, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 144
    iput p4, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 140
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, -0x1

    const/16 v0, -0x2710

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 78
    iput v1, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 81
    iput v1, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 84
    iput v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    .line 358
    invoke-virtual {p0, p1}, Lmiui/process/ProcessConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 357
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/process/ProcessConfig;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public getKillingPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getKillingPackageMaps()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPolicy()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getRemovingTaskIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    return-object v0
.end method

.method public getTaskId()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lmiui/process/ProcessConfig;->mUid:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    return v0
.end method

.method public getWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public isPriorityInvalid()Z
    .locals 2

    .prologue
    .line 374
    iget v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoveTaskNeeded()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    return v0
.end method

.method public isTaskIdInvalid()Z
    .locals 2

    .prologue
    .line 366
    iget v0, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUidInvalid()Z
    .locals 2

    .prologue
    .line 370
    iget v0, p0, Lmiui/process/ProcessConfig;->mUid:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserIdInvalid()Z
    .locals 2

    .prologue
    .line 362
    iget v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lmiui/process/ProcessConfig;->mPriority:I

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    const-class v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 332
    const-class v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    .line 335
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 337
    .local v0, "level":Ljava/lang/Integer;
    const-class v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 338
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    if-nez v2, :cond_3

    .line 339
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    .line 341
    :cond_3
    iget-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 317
    .end local v0    # "level":Ljava/lang/Integer;
    .end local v1    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public setKillingClockTime(J)V
    .locals 1
    .param p1, "killingClockTime"    # J

    .prologue
    .line 270
    iput-wide p1, p0, Lmiui/process/ProcessConfig;->mkillingClockTime:J

    .line 269
    return-void
.end method

.method public setKillingPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "killingPackage"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setKillingPackageMaps(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "killingPackageMaps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    .line 241
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 262
    iput p1, p0, Lmiui/process/ProcessConfig;->mPriority:I

    .line 261
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setRemoveTaskNeeded(Z)V
    .locals 0
    .param p1, "removeTaskNeeded"    # Z

    .prologue
    .line 266
    iput-boolean p1, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    .line 265
    return-void
.end method

.method public setRemovingTaskIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "taskIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    .line 221
    return-void
.end method

.method public setTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 258
    iput p1, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 257
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 254
    iput p1, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 253
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 250
    iput p1, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 249
    return-void
.end method

.method public setWhiteList(Ljava/util/List;)V
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
    .line 234
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    .line 233
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v3, 0x27

    .line 379
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ProcessConfig{mPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 381
    iget v2, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    const-string/jumbo v2, ", mReason=\'"

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    iget-object v2, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    const-string/jumbo v2, ", mKillingPackage=\'"

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    iget-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    const-string/jumbo v2, ", mUserId="

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    iget v2, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    const-string/jumbo v2, ", mTaskId="

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    iget v2, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 386
    const-string/jumbo v2, ", mUid="

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 386
    iget v2, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 387
    const-string/jumbo v2, ", mPriority="

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 387
    iget v2, p0, Lmiui/process/ProcessConfig;->mPriority:I

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 388
    const-string/jumbo v2, ", mWhiteList="

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 388
    iget-object v2, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 389
    const-string/jumbo v2, ", mKillingPackageMaps="

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 389
    iget-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 390
    const-string/jumbo v2, ", mRemoveTaskNeeded="

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 390
    iget-boolean v2, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 391
    const-string/jumbo v2, ", mRemovingTaskIdList="

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 391
    iget-object v2, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    const-string/jumbo v2, ", mkillingClockTime="

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lmiui/process/ProcessConfig;->mkillingClockTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 393
    const/16 v2, 0x7d

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 280
    iget v3, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget v3, p0, Lmiui/process/ProcessConfig;->mUserId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget v3, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v3, p0, Lmiui/process/ProcessConfig;->mUid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget v3, p0, Lmiui/process/ProcessConfig;->mPriority:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-boolean v3, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 290
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 296
    :goto_1
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 297
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 303
    :goto_2
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    if-eqz v3, :cond_4

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 305
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 306
    .local v1, "level":Ljava/lang/Integer;
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 307
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 304
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "level":Ljava/lang/Integer;
    .end local v2    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move v3, v5

    .line 287
    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 300
    :cond_3
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 314
    :cond_4
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    return-void
.end method
